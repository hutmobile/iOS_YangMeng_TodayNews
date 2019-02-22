//
//  WendaAnswerHeaderView.swift
//  News
//
//  Created by 杨蒙 on 2018/1/9.
//  Copyright © 2018年 hrscy. All rights reserved.
//

import UIKit
import Kingfisher

class WendaAnswerHeaderView: UIView, NibLoadable {

    var question = WendaQuestion() {
        didSet {
            titleLabel.text = question.title
            titleLabelHeight.constant = question.titleH!
            contentLabel.text = question.content.text
            answerCountLabel.text = question.answerCount + "个回答 · "
            collectionCountLabel.text = question.answerCount + "人收藏"
            // 如果有图
            if let thumb = question.content.thumb_image_list.first {
                imageView.kf.setImage(with: URL(string: thumb.urlString)!)
                imageViewHeight.constant = 166.0
                imageViewWidth.constant = 166 * thumb.ratio
            }
            height = question.foldHeight!
            layoutIfNeeded()
        }
    }
    
    /// 点击了展开按钮
    var didSelectUnfoldButton: (()->())?
    /// 收藏问题按钮
    @IBOutlet weak var collectButton: UIButton!
    /// 邀请回答按钮
    @IBOutlet weak var inviteButton: UIButton!
    /// 分割线
    @IBOutlet weak var separatorView: UIView!
    
    /// 标题
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var titleLabelHeight: NSLayoutConstraint!
    /// 内容
    @IBOutlet weak var contentLabel: UILabel!
    @IBOutlet weak var contentLabelHeight: NSLayoutConstraint!
    
    /// 回答数量
    @IBOutlet weak var answerCountLabel: UILabel!
    /// 收藏数量
    @IBOutlet weak var collectionCountLabel: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var imageViewHeight: NSLayoutConstraint!
    @IBOutlet weak var imageViewWidth: NSLayoutConstraint!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        width = screenWidth
        theme_backgroundColor = "colors.cellBackgroundColor"
        titleLabel.theme_textColor = "colors.black"
        contentLabel.theme_textColor = "colors.lightGray"
        separatorView.theme_backgroundColor = "colors.separatorViewColor"
        collectButton.theme_setTitleColor("colors.userDetailSendMailTextColor", forState: .normal)
        inviteButton.theme_setTitleColor("colors.userDetailSendMailTextColor", forState: .normal)
        unfoldButton.theme_setTitleColor("colors.userDetailSendMailTextColor", forState: .normal)
    }
    
    /// 展开按钮
    @IBOutlet weak var unfoldButton: UIButton!
    @IBOutlet weak var unfoldButtonWidth: NSLayoutConstraint!
    /// 展开按钮点击
    @IBAction func unfoldButtonClicked(_ sender: UIButton) {
        sender.isHidden = true
        unfoldButtonWidth.constant = 0
        contentLabelHeight.constant = question.content.textH!
        height = question.unfoldHeight!
        UIView.animate(withDuration: 0.25) {
            self.layoutIfNeeded()
            self.didSelectUnfoldButton?()
        }
    }
    
}
