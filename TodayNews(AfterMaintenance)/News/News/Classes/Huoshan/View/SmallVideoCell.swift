//
//  SmallVideoCell.swift
//  News
//
//  Created by 杨蒙 on 2018/1/16.
//  Copyright © 2018年 hrscy. All rights reserved.
//

import UIKit
import IBAnimatable
import Kingfisher
import BMPlayer
import SnapKit
import NVActivityIndicatorView

class SmallVideoCell: UICollectionViewCell, RegisterCellFromNib {
    
    var didSelectAvatarOrNameButton: (()->())?
    
    
    var smallVideo = NewsModel() {
        didSet {
            bgImageView.image = nil
            nameButton.setTitle(smallVideo.raw_data.user.info.name, for: .normal)
            avatarButton.kf.setImage(with: URL(string: smallVideo.raw_data.user.info.avatar_url), for: .normal)
            vImageView.isHidden = !smallVideo.raw_data.user.info.user_verified
            concernButton.isSelected = smallVideo.raw_data.user.relation.is_following
            titleLabel.attributedText = smallVideo.raw_data.attrbutedText
        }
    }
    
    /// 头像按钮
    @IBOutlet weak var avatarButton: AnimatableButton!
    @IBOutlet weak var vImageView: UIImageView!
    /// 用户名按钮
    @IBOutlet weak var nameButton: AnimatableButton!
    /// 关注按钮
    @IBOutlet weak var concernButton: AnimatableButton!
    /// 标题
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var scrollLabel: UILabel!
    
    @IBOutlet weak var bgImageView: UIImageView!
    
    /// 关注按钮点击
    @IBAction func concernButtonClicked(_ sender: UIButton) {
        if sender.isSelected { // 已经关注，点击则取消关注
            // 已关注用户，取消关注
            NetworkTool.loadRelationUnfollow(userId: smallVideo.raw_data.user.info.user_id, completionHandler: { (_) in
                sender.isSelected = !sender.isSelected
                sender.theme_backgroundColor = "colors.globalRedColor"
            })
        } else { // 未关注，点击则关注这个用户
            // 点击关注按钮，关注用户
            NetworkTool.loadRelationFollow(userId: smallVideo.raw_data.user.info.user_id, completionHandler: { (_) in
                sender.isSelected = !sender.isSelected
                sender.theme_backgroundColor = "colors.userDetailFollowingConcernBtnBgColor"
            })
        }
    }
    /// 头像按钮或用户名按钮点击
    @IBAction func avatarButtonClicked(_ sender: AnimatableButton) {
        didSelectAvatarOrNameButton?()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

}
