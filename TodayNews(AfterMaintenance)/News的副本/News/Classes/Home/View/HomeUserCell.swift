//
//  HomeUserCell.swift
//  News
//
//  Created by 杨蒙 on 2018/1/23.
//  Copyright © 2018年 hrscy. All rights reserved.
//

import UIKit
import Kingfisher

class HomeUserCell: UITableViewCell, RegisterCellFromNib {
    
    var aNews = NewsModel() {
        didSet {
            /// 发布者
            if aNews.source != "" { nameLabel.text = aNews.source }
            else if aNews.user.user_id != 0 {
                avatarImageView.kf.setImage(with: URL(string: aNews.user.avatar_url)!)
                nameLabel.text = aNews.user.screen_name
            } else if aNews.user_info.user_id != 0 {
                avatarImageView.kf.setImage(with: URL(string: aNews.user_info.avatar_url)!)
                nameLabel.text = aNews.user_info.name
            } else if aNews.media_info.user_id != 0 {
                nameLabel.text = aNews.media_info.name
                avatarImageView.kf.setImage(with: URL(string: aNews.media_info.avatar_url)!)
            }
            readCountLabel.text = "\(aNews.readCount)阅读"
            verifiedContentLabel.text = aNews.verified_content
            digButton.setTitle(aNews.diggCount, for: .normal)
            commentButton.setTitle("\(aNews.commentCount)", for: .normal)
            feedshareButton.setTitle(aNews.forwardCount, for: .normal)
            contentLabel.attributedText = aNews.attributedContent
        }
    }
    @IBOutlet weak var separatorView: UIView!
    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var vipImageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var verifiedContentLabel: UILabel!
    @IBOutlet weak var contentLabel: UILabel!
    @IBOutlet weak var readCountLabel: UILabel!
    @IBOutlet weak var concernButton: UIButton!
    @IBOutlet weak var closeButton: UIButton!
    @IBOutlet weak var digButton: UIButton!
    @IBOutlet weak var commentButton: UIButton!
    @IBOutlet weak var feedshareButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        closeButton.theme_setImage("images.add_textpage_17x12_", forState: .normal)
        nameLabel.theme_textColor = "colors.black"
        verifiedContentLabel.theme_textColor = "colors.cellRightTextColor"
        readCountLabel.theme_textColor = "colors.cellRightTextColor"
        contentView.theme_backgroundColor = "colors.cellBackgroundColor"
        digButton.theme_setImage("images.like_old_feed_24x24_", forState: .normal)
        digButton.theme_setImage("images.like_old_feed_press_24x24_", forState: .selected)
        separatorView.theme_backgroundColor = "colors.separatorViewColor"
        commentButton.theme_setImage("images.comment_24x24_", forState: .normal)
        feedshareButton.theme_setImage("images.feed_share_24x24_", forState: .normal)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
