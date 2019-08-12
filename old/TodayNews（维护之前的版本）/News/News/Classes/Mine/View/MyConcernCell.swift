//
//  MyConcernCell.swift
//  News
//
//  Created by 杨蒙 on 2017/9/16.
//  Copyright © 2017年 hrscy. All rights reserved.
//

import UIKit
import Kingfisher

class MyConcernCell: UICollectionViewCell, RegisterCellFromNib {
    /// 头像
    @IBOutlet weak var avatarImageView: UIImageView!
    
    @IBOutlet weak var vipImageView: UIImageView!
    /// 用户名
    @IBOutlet weak var nameLabel: UILabel!
    /// 新通知
    @IBOutlet weak var tipsButton: UIButton!
    
    var myConcern = MyConcern() {
        didSet {
            avatarImageView.kf.setImage(with: URL(string: (myConcern.icon)))
            nameLabel.text = myConcern.name
            vipImageView.isHidden = !myConcern.is_verify
            tipsButton.isHidden = !myConcern.tips
            vipImageView.image = myConcern.user_auth_info.auth_type == 1 ? UIImage(named: "all_v_avatar_star_16x16_") : UIImage(named: "all_v_avatar_18x18_")
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        tipsButton.layer.borderWidth = 1
        tipsButton.layer.theme_borderColor = "colors.cellBackgroundColor"
        theme_backgroundColor = "colors.cellBackgroundColor"
        tipsButton.theme_backgroundColor = "colors.globalRedColor"
        nameLabel.theme_textColor = "colors.black"
    }

}
