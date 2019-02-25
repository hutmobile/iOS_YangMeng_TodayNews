//
//  NavigationBarView.swift
//  News
//
//  Created by 杨蒙 on 2017/12/4.
//  Copyright © 2017年 hrscy. All rights reserved.
//

import UIKit
import IBAnimatable

class NavigationBarView: UIView, NibLoadable {
    
    var userDetail: UserDetail? {
        didSet {
            nameLabel.text = userDetail!.screen_name
            concernButton.isSelected = userDetail!.is_following
            concernButton.theme_backgroundColor = userDetail!.is_following ? "colors.userDetailFollowingConcernBtnBgColor" : "colors.globalRedColor"
            concernButton.borderColor = userDetail!.is_following ? .grayColor232() : .globalRedColor()
            concernButton.borderWidth = userDetail!.is_following ? 1 : 0
        }
    }
    
    var goBackButtonClicked: (()->())?
    
    /// 标题
    @IBOutlet weak var nameLabel: UILabel!
    /// 关注按钮
    @IBOutlet weak var concernButton: AnimatableButton!
    /// 导航栏栏
    @IBOutlet weak var navigationBar: UIView!
    /// 返回按钮
    @IBOutlet weak var returnButton: UIButton!
    /// 更多按钮
    @IBOutlet weak var moreButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        theme_backgroundColor = "colors.cellBackgroundColor"
        returnButton.theme_setImage("images.personal_home_back_white_24x24_", forState: .normal)
        moreButton.theme_setImage("images.new_morewhite_titlebar_22x22_", forState: .normal)
        concernButton.setTitle("关注", for: .normal)
        concernButton.setTitle("已关注", for: .selected)
        concernButton.theme_setTitleColor("colors.userDetailConcernButtonTextColor", forState: .normal)
        concernButton.theme_setTitleColor("colors.userDetailConcernButtonSelectedTextColor", forState: .selected)
        NotificationCenter.default.addObserver(self, selector: #selector(receivedConcernButtonClicked), name: NSNotification.Name(rawValue: UserDetailHeaderViewButtonClicked), object: nil)
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        height = navigationBar.frame.maxY
    }

}

// MARK: - 按钮点击事件
extension NavigationBarView {
    /// 接收到了关注按钮的点击
    @objc private func receivedConcernButtonClicked(notification: Notification) {
        let userInfo = notification.userInfo as! [String: Any]
        let isSelected = userInfo["isSelected"] as! Bool
        concernButton.isSelected = isSelected
        concernButton.theme_backgroundColor = isSelected ? "colors.userDetailFollowingConcernBtnBgColor" : "colors.globalRedColor"
        concernButton.borderColor = isSelected ? .grayColor232() : .globalRedColor()
        concernButton.borderWidth = isSelected ? 1 : 0
    }
    
    /// 返回按钮点击
    @IBAction func returnButtonClicked(_ sender: UIButton) {
        goBackButtonClicked?()
    }
    
    /// 更多按钮点击
    @IBAction func moreButtonClicked(_ sender: UIButton) {
        
    }
    
    /// 关注按钮点击
    @IBAction func concernButtonClicked(_ sender: AnimatableButton) {
        if sender.isSelected { // 已经关注，点击则取消关注
            // 已关注用户，取消关注
            NetworkTool.loadRelationUnfollow(userId: userDetail!.user_id, completionHandler: { (_) in
                sender.isSelected = !sender.isSelected
                sender.theme_backgroundColor = "colors.globalRedColor"
                NotificationCenter.default.post(name: NSNotification.Name(rawValue: NavigationBarConcernButtonClicked), object: self, userInfo: ["isSelected": sender.isSelected])
            })
        } else { // 未关注，点击则关注这个用户
            // 点击关注按钮，关注用户
            NetworkTool.loadRelationFollow(userId: userDetail!.user_id, completionHandler: { (_) in
                sender.isSelected = !sender.isSelected
                sender.theme_backgroundColor = "colors.userDetailFollowingConcernBtnBgColor"
                NotificationCenter.default.post(name: NSNotification.Name(rawValue: NavigationBarConcernButtonClicked), object: self, userInfo: ["isSelected": sender.isSelected])
            })
        }
    }
}
