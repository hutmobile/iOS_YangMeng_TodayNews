//
//  VideoDetailUserView.swift
//  News
//
//  Created by 杨蒙 on 2018/1/19.
//  Copyright © 2018年 hrscy. All rights reserved.
//

import UIKit
import IBAnimatable
import Kingfisher

class VideoDetailUserView: UIView, NibLoadable {
    
    var userInfo = NewsUserInfo() {
        didSet {
            avatarImageView.kf.setImage(with: URL(string: userInfo.avatar_url)!)
            vImageView.isHidden = !userInfo.user_verified
            nameLabel.text = userInfo.name
            followerCountLabel.text = userInfo.fansCount + "粉丝"
            concernButton.isSelected = userInfo.follow
            concernButton.theme_backgroundColor = userInfo.follow ? "colors.userDetailFollowingConcernBtnBgColor" : "colors.globalRedColor"
            concernButton.borderColor = userInfo.follow ? .grayColor232() : .globalRedColor()
            concernButton.borderWidth = userInfo.follow ? 1 : 0
        }
    }
    /// 覆盖按钮
    @IBOutlet weak var coverButton: UIButton!
    /// 头像
    @IBOutlet weak var avatarImageView: UIImageView!
    /// v
    @IBOutlet weak var vImageView: UIImageView!
    /// 用户名
    @IBOutlet weak var nameLabel: UILabel!
    /// 粉丝数量
    @IBOutlet weak var followerCountLabel: UILabel!
    /// 关注按钮点击
    @IBOutlet weak var concernButton: AnimatableButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        theme_backgroundColor = "colors.cellBackgroundColor"
        nameLabel.theme_textColor = "colors.black"
        followerCountLabel.theme_textColor = "colors.black"
        concernButton.theme_setTitleColor("colors.userDetailConcernButtonTextColor", forState: .normal)
        concernButton.theme_setTitleColor("colors.userDetailConcernButtonSelectedTextColor", forState: .selected)
    }
    
    /// 关注按钮点击
    @IBAction func concernButtonClicked(_ sender: AnimatableButton) {
        if sender.isSelected { // 已经关注，点击则取消关注
            // 已关注用户，取消关注
            NetworkTool.loadRelationUnfollow(userId: userInfo.user_id, completionHandler: { (_) in
                sender.isSelected = !sender.isSelected
                sender.theme_backgroundColor = "colors.globalRedColor"
            })
        } else { // 未关注，点击则关注这个用户
            // 点击关注按钮，关注用户
            NetworkTool.loadRelationFollow(userId: userInfo.user_id, completionHandler: { (_) in
                sender.isSelected = !sender.isSelected
                sender.theme_backgroundColor = "colors.userDetailFollowingConcernBtnBgColor"
                sender.borderColor = .grayColor232()
                sender.borderWidth = 1
            })
        }
    }
    
}
