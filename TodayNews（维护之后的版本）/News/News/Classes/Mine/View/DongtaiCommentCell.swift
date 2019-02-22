//
//  DongtaiCommentCell.swift
//  News
//
//  Created by 杨蒙 on 2017/12/23.
//  Copyright © 2017年 hrscy. All rights reserved.
//

import UIKit
import IBAnimatable
import Kingfisher

class DongtaiCommentCell: UITableViewCell, RegisterCellFromNib {

    var comment = DongtaiComment() {
        didSet {
            vImageView.isHidden = !comment.user_verified
            nameLabel.text = comment.user_name != "" ? comment.user_name : ""
            if comment.user_auth_info.auth_info != "" { authInfoLabel.text = comment.user_auth_info.auth_info }
            if comment.user_profile_image_url != "" {
                avatarButton.kf.setImage(with: URL(string: comment.user_profile_image_url)!, for: .normal)
            } else if comment.avatar_url != "" {
                avatarButton.kf.setImage(with: URL(string: comment.avatar_url)!, for: .normal)
            } else if comment.user.user_id != 0 {
                avatarButton.kf.setImage(with: URL(string: comment.user.avatar_url)!, for: .normal)
                nameLabel.text = comment.user.screen_name
                vImageView.isHidden = !comment.user.user_verified
                if comment.user.user_auth_info.auth_info != "" { authInfoLabel.text = comment.user.user_auth_info.auth_info }
            }
            contentLabel.attributedText = comment.attributedContent
            timeLabel.text = comment.createTime + "· "
            if comment.reply_count != 0 { replayButton.theme_backgroundColor = "colors.grayColor240" }
            replayButton.setTitle(comment.reply_count == 0 ? "回复" : "\(comment.reply_count)回复", for: .normal)
            diggButton.setTitle(comment.digg_count == 0 ? "赞" : comment.diggCount, for: .normal)
            diggButton.isSelected = comment.user_digg
        }
    }
    
    /// 头像
    @IBOutlet weak var avatarButton: AnimatableButton!
    /// v
    @IBOutlet weak var vImageView: UIImageView!
    /// 用户名
    @IBOutlet weak var nameLabel: UILabel!
    /// 认证内容
    @IBOutlet weak var authInfoLabel: UILabel!
    /// 点赞
    @IBOutlet weak var diggButton: UIButton!
    /// 内容
    @IBOutlet weak var contentLabel: RichLabel!
    /// 时间
    @IBOutlet weak var timeLabel: UILabel!
    /// 回复
    @IBOutlet weak var replayButton: AnimatableButton!
    
    /// 点赞按钮点击
    @IBAction func diggButtonClicked(_ sender: UIButton) {
        
    }
    
    /// 回复按钮点击
    @IBAction func replayButtonClicked(_ sender: AnimatableButton) {
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        theme_backgroundColor = "colors.cellBackgroundColor"
        diggButton.theme_setImage("images.comment_like_icon_16x16_", forState: .normal)
        diggButton.theme_setImage("images.comment_like_icon_press_16x16_", forState: .selected)
        contentLabel.theme_textColor = "colors.black"
        diggButton.theme_setTitleColor("colors.grayColor150", forState: .normal)
        authInfoLabel.theme_textColor = "colors.grayColor150"
        timeLabel.theme_textColor = "colors.grayColor150"
        replayButton.theme_setTitleColor("colors.grayColor150", forState: .normal)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
