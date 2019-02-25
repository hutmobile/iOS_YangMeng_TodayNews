//
//  TheyUseCollectionCell.swift
//  News
//
//  Created by 杨蒙 on 2018/1/23.
//  Copyright © 2018年 hrscy. All rights reserved.
//

import UIKit
import Kingfisher
import IBAnimatable

class TheyUseCollectionCell: UICollectionViewCell, RegisterCellFromNib {
    
    var userCard = UserCard() {
        didSet {
            avatarImageView.kf.setImage(with: URL(string: userCard.user.info.avatar_url)!)
            nameLabel.text = userCard.user.info.name
            subtitleLabel.text = userCard.recommend_reason
            vipImageView.isHidden = userCard.user.info.user_auth_info.auth_info == ""
        }
    }
    
    @IBOutlet weak var vipImageView: UIImageView!
    /// 头像
    @IBOutlet weak var avatarImageView: AnimatableImageView!
    /// 名称
    @IBOutlet weak var nameLabel: UILabel!
    /// 子标题
    @IBOutlet weak var subtitleLabel: UILabel!
    /// 关注
    @IBOutlet weak var concernButton: AnimatableButton!
    
    @IBOutlet weak var closeButton: UIButton!
    
    /// 加载 图标
    @IBOutlet weak var loadingImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.cornerRadius = 5
        layer.masksToBounds = true
        layer.theme_borderColor = "colors.lightGray"
        layer.borderWidth = 1
        theme_backgroundColor = "colors.cellBackgroundColor"
        closeButton.theme_setImage("images.icon_popup_close_24x24_", forState: .normal)
        concernButton.setTitle("关注", for: .normal)
        concernButton.setTitle("已关注", for: .selected)
        concernButton.theme_setTitleColor("colors.userDetailConcernButtonTextColor", forState: .normal)
        concernButton.theme_setTitleColor("colors.userDetailConcernButtonSelectedTextColor", forState: .selected)
    }

    /// 关注按钮点击
    @IBAction func concernButtonClicked(_ sender: AnimatableButton) {
        loadingImageView.isHidden = false
        loadingImageView.layer.add(animation, forKey: nil)
        if sender.isSelected { // 已经关注，点击则取消关注
            // 已关注用户，取消关注
            NetworkTool.loadRelationUnfollow(userId: userCard.user.info.user_id, completionHandler: { (_) in
                sender.isSelected = !sender.isSelected
                sender.theme_backgroundColor = "colors.globalRedColor"
                self.loadingImageView.layer.removeAllAnimations()
                self.loadingImageView.isHidden = true
                sender.borderWidth = 0
            })
        } else { // 未关注，点击则关注这个用户
            // 点击关注按钮，关注用户
            NetworkTool.loadRelationFollow(userId: userCard.user.info.user_id, completionHandler: { (_) in
                sender.isSelected = !sender.isSelected
                sender.theme_backgroundColor = "colors.userDetailFollowingConcernBtnBgColor"
                self.loadingImageView.layer.removeAllAnimations()
                self.loadingImageView.isHidden = true
                sender.borderColor = .grayColor232()
                sender.borderWidth = 1
            })
        }
    }
    
    private lazy var animation: CABasicAnimation = {
        let animation = CABasicAnimation(keyPath: "transform.rotation.z")
        animation.fromValue = 0.0
        animation.toValue = Double.pi * 2
        animation.duration = 1.5
        animation.autoreverses = false
        animation.repeatCount = MAXFLOAT
        return animation
    }()
}
