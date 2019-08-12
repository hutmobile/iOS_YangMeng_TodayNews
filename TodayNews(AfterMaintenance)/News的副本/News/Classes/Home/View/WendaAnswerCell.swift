//
//  WendaAnswerCell.swift
//  News
//
//  Created by 杨蒙 on 2018/1/9.
//  Copyright © 2018年 hrscy. All rights reserved.
//

import UIKit
import IBAnimatable
import Kingfisher

class WendaAnswerCell: UITableViewCell, RegisterCellFromNib {

    var answer = WendaAnswer() {
        didSet {
            nameLabel.text = answer.user.uname
            avatarImageView.kf.setImage(with: URL(string: answer.user.avatar_url)!)
            vImageView.isHidden = !answer.user.is_verify
            concernButton.isSelected = answer.user.is_following
            if answer.user.user_intro != "" {
                userIntroLabel.text = answer.user.user_intro
                userintroLabelHeight.constant = 16.0
            }
            diggLabel.text = answer.diggCount + "赞"
            readCountLabel.text = answer.browCount + "阅读"
            thumbImageView.image = nil
            // 是否有图片
            if answer.content_abstract.hasImage {
                let thumb = answer.content_abstract.thumb_image_list.first!
                thumbImageView.kf.setImage(with: URL(string: thumb.urlString)!)
                thumbImageViewHeight.constant = 166.0
                thumbImageViewWidth.constant = 166.0 * thumb.ratio
            } else { thumbImageViewHeight.constant = 0 }
            contentLabel.setSeparatedLinesFrom(answer.attributedString, hasImage: answer.content_abstract.hasImage)
            contentLabelHeight.constant = answer.content_abstract.textH!
            layoutIfNeeded()
        }
    }
    
    /// 覆盖按钮点击
    var didSelectCoverButton: (()->())?
    /// 头像
    @IBOutlet weak var avatarImageView: AnimatableImageView!
    /// v
    @IBOutlet weak var vImageView: UIImageView!
    /// 用户名
    @IBOutlet weak var nameLabel: UILabel!
    /// 用户认证内容
    @IBOutlet weak var userIntroLabel: UILabel!
    @IBOutlet weak var userintroLabelHeight: NSLayoutConstraint!
    /// 关注按钮
    @IBOutlet weak var concernButton: UIButton!
    /// 点赞
    @IBOutlet weak var diggLabel: UILabel!
    /// 阅读
    @IBOutlet weak var readCountLabel: UILabel!
    /// 缩略图
    @IBOutlet weak var thumbImageView: UIImageView!
    @IBOutlet weak var thumbImageViewWidth: NSLayoutConstraint!
    @IBOutlet weak var thumbImageViewHeight: NSLayoutConstraint!
    @IBOutlet weak var contentLabel: UILabel!
    @IBOutlet weak var contentLabelHeight: NSLayoutConstraint!
    
    @IBOutlet weak var separatorView: UIView!
    /// 关注按钮点击
    @IBAction func concernButtonClicked(_ sender: UIButton) {
        if sender.isSelected { // 已经关注，点击则取消关注
            // 已关注用户，取消关注
            NetworkTool.loadRelationUnfollow(userId: Int(answer.user.user_id)!, completionHandler: { (_) in
                sender.isSelected = !sender.isSelected
                sender.theme_backgroundColor = "colors.globalRedColor"
            })
        } else { // 未关注，点击则关注这个用户
            // 点击关注按钮，关注用户
            NetworkTool.loadRelationFollow(userId: Int(answer.user.user_id)!, completionHandler: { (_) in
                sender.isSelected = !sender.isSelected
                sender.theme_backgroundColor = "colors.userDetailFollowingConcernBtnBgColor"
            })
        }
    }
    
    /// 覆盖按钮点击
    @IBAction func coverButtonClicked(_ sender: UIButton) {
        didSelectCoverButton?()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        theme_backgroundColor = "colors.cellBackgroundColor"
        separatorView.theme_backgroundColor = "colors.separatorViewColor"
        concernButton.setTitle("关注", for: .normal)
        concernButton.setTitle("已关注", for: .selected)
        concernButton.theme_setTitleColor("colors.globalRedColor", forState: .normal)
        concernButton.theme_setTitleColor("colors.lightGray", forState: .selected)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
