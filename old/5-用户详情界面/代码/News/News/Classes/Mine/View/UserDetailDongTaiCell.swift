//
//  UserDetailDongTaiCell.swift
//  News
//
//  Created by 杨蒙 on 2017/12/7.
//  Copyright © 2017年 hrscy. All rights reserved.
//

import UIKit
import IBAnimatable
import Kingfisher

class UserDetailDongTaiCell: UITableViewCell, RegisterCellOrNib {

    var dongtai: UserDetailDongtai? {
        didSet {
            avatarImageView.kf.setImage(with: URL(string: dongtai!.user.avatar_url))
            nameLabel.text = dongtai!.user.screen_name
            likeButton.setTitle(dongtai!.diggCount, for: .normal)
            commentButton.setTitle(dongtai!.commentCount, for: .normal)
            forwardButton.setTitle(dongtai!.forwardCount, for: .normal)
        }
    }
    
    /// 头像
    @IBOutlet weak var avatarImageView: AnimatableImageView!
    /// 用户名
    @IBOutlet weak var nameLabel: UILabel!
    /// 修改时间
    @IBOutlet weak var modifyTimeLabel: UILabel!
    /// 喜欢按钮
    @IBOutlet weak var likeButton: UIButton!
    /// 评论按钮
    @IBOutlet weak var commentButton: UIButton!
    /// 转发按钮
    @IBOutlet weak var forwardButton: UIButton!
    /// 位置，阅读数量
    @IBOutlet weak var bottomLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        nameLabel.theme_textColor = "colors.black"
        likeButton.theme_setTitleColor("colors.black", forState: .normal)
        commentButton.theme_setTitleColor("colors.black", forState: .normal)
        forwardButton.theme_setTitleColor("colors.black", forState: .normal)
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
