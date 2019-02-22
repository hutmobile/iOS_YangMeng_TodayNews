//
//  EmojiCollectionCell.swift
//  News
//
//  Created by 杨蒙 on 2018/1/6.
//  Copyright © 2018年 hrscy. All rights reserved.
//

import UIKit

class EmojiCollectionCell: UICollectionViewCell, RegisterCellFromNib {

    var emoji = Emoji() {
        didSet {
            if emoji.isDelete {  // 是删除按钮
                iconButton.theme_setImage("images.input_emoji_delete_44x44_", forState: .normal)
            } else if emoji.isEmpty { // 如果是空表情
                iconButton.setImage(nil, for: .normal)
            } else {
                iconButton.setImage(UIImage(named: emoji.png), for: .normal)
            }
        }
    }
    
    @IBOutlet weak var iconButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        theme_backgroundColor = "colors.cellBackgroundColor"
    }

}
