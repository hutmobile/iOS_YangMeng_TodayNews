//
//  PostVideoOrArticleView.swift
//  News
//
//  Created by 杨蒙 on 2017/12/10.
//  Copyright © 2017年 hrscy. All rights reserved.
//

import UIKit
import Kingfisher

class PostVideoOrArticleView: UIView, NibLoadable {
    /// 原内容是否已经删除
    var delete = false {
        didSet {
            originContentHasDeleted()
        }
    }
    
    /// 原内容已经删除
    func originContentHasDeleted() {
        titleLabel.text = "原内容已经删除"
        titleLabel.textAlignment = .center
        iconButtonWidth.constant = 0
        layoutIfNeeded()
    }
    
    var group = DongtaiOriginGroup() {
        didSet {
            titleLabel.text = " " + group.title
            if group.thumb_url != "" {
                iconButton.kf.setBackgroundImage(with: URL(string: group.thumb_url)!, for: .normal)
            } else if group.user.avatar_url != "" {
                iconButton.kf.setBackgroundImage(with: URL(string: group.user.avatar_url)!, for: .normal)
            } else if group.delete {
                originContentHasDeleted()
            }
            switch group.media_type {
            case .postArticle:
                iconButton.setImage(nil, for: .normal)
            case .postVideo:
                iconButton.theme_setImage("images.smallvideo_all_32x32_", forState: .normal)
            }
        }
    }
    
    /// 图标
    @IBOutlet weak var iconButton: UIButton!
    /// 标题
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var iconButtonWidth: NSLayoutConstraint!
    
    /// 覆盖按钮点击
    @IBAction func coverButtonClicked(_ sender: UIButton) {
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        theme_backgroundColor = "colors.cellBackgroundColor"
        titleLabel.theme_textColor = "colors.black"
        titleLabel.theme_backgroundColor = "colors.grayColor247"
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        width = screenWidth - 30
    }

}
