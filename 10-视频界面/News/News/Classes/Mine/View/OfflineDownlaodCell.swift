
//
//  OfflineDownlaodCell.swift
//  News
//
//  Created by 杨蒙 on 2017/10/6.
//  Copyright © 2017年 hrscy. All rights reserved.
//

import UIKit

class OfflineDownlaodCell: UITableViewCell, RegisterCellFromNib {
    /// 标题
    @IBOutlet weak var titleLabel: UILabel!
    /// 勾选图片
    @IBOutlet weak var rightImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        theme_backgroundColor = "colors.cellBackgroundColor"
        titleLabel.theme_textColor = "colors.black"
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
