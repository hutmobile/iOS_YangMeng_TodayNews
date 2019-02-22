//
//  VideoCell.swift
//  News
//
//  Created by 杨蒙 on 2018/1/17.
//  Copyright © 2018年 hrscy. All rights reserved.
//

import UIKit
import IBAnimatable
import Kingfisher

class VideoCell: UITableViewCell, RegisterCellFromNib {
    /// 视频数据
    var video = NewsModel() {
        didSet {
            titleLabel.text = video.title
            playCountLabel.text = video.video_detail_info.videoWatchCount + "次播放"
            avatarButton.kf.setImage(with: URL(string: video.user_info.avatar_url), for: .normal)
            vImageView.isHidden = !video.user_info.user_verified
            concernButton.isSelected = video.user_info.follow
            bgImageButton.kf.setBackgroundImage(with: URL(string: video.video_detail_info.detail_video_large_image.urlString)!, for: .normal)
            timeLabel.text = video.videoDuration
            commentButton.setTitle(video.commentCount, for: .normal)
            commentButton.theme_setTitleColor("colors.black", forState: .normal)
            commentButton.theme_setImage("images.comment_24x24_", forState: .normal)
            concernButton.isHidden = video.label_style == .ad
            commentButton.isHidden = video.label_style == .ad
            adButton.setTitle((video.ad_button.button_text == "" ? "查看详情" : video.ad_button.button_text), for: .normal)
            nameLable.text = video.user_info.name
            if video.label_style == .ad {
                nameLable.text = video.app_name != "" ? video.app_name : video.ad_button.app_name
                descriptionLabel.text = video.ad_button.description == "" ? video.sub_title : video.ad_button.description
                descriptionLabelHeight.constant = 20
                layoutIfNeeded()
            }
            adButton.isHidden = video.label_style != .ad
            adLabel.isHidden = video.label_style != .ad
        }
    }
    
    /// 标题 label
    @IBOutlet weak var titleLabel: UILabel!
    /// 广告
    @IBOutlet weak var adLabel: AnimatableLabel!
    /// 播放数量
    @IBOutlet weak var playCountLabel: UILabel!
    /// 时间 label
    @IBOutlet weak var timeLabel: UILabel!
    /// 背景图片
    @IBOutlet weak var bgImageButton: UIButton!
    /// 用户头像
    @IBOutlet weak var avatarButton: UIButton!
    @IBOutlet weak var vImageView: UIImageView!
    /// 用户昵称
    @IBOutlet weak var nameLable: UILabel!
    /// 描述
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var descriptionLabelHeight: NSLayoutConstraint!
    /// 分享到 stackView
    @IBOutlet weak var shareStackView: UIStackView!
    /// 分享到
    @IBOutlet weak var shareLable: UILabel!
    /// 朋友圈按钮
    @IBOutlet weak var pyqButton: UIButton!
    @IBOutlet weak var pyqButtonWidth: NSLayoutConstraint!
    /// 微信按钮
    @IBOutlet weak var wechatButton: UIButton!
    /// 关注按钮
    @IBOutlet weak var concernButton: UIButton!
    /// 评论按钮
    @IBOutlet weak var commentButton: UIButton!
    /// 如果是广告，查看详情按钮
    @IBOutlet weak var adButton: UIButton!
    /// 更多按钮
    @IBOutlet weak var moreButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        theme_backgroundColor = "colors.cellBackgroundColor"
        bgImageButton.setImage(UIImage(named: "video_play_icon_44x44_"), for: .normal)
        shareLable.theme_textColor = "colors.black"
        titleLabel.theme_textColor = "colors.moreLoginTextColor"
        nameLable.theme_textColor = "colors.black"
        playCountLabel.theme_textColor = "colors.moreLoginTextColor"
        concernButton.theme_setImage("images.video_add_24x24_", forState: .normal)
        concernButton.setImage(nil, for: .selected)
        concernButton.setTitle("关注", for: .normal)
        concernButton.setTitle("已关注", for: .selected)
        concernButton.theme_setTitleColor("colors.black", forState: .normal)
        concernButton.theme_setTitleColor("colors.grayColor210", forState: .selected)
        moreButton.theme_setImage("images.More_24x24_", forState: .normal)
        adButton.theme_setTitleColor("colors.userDetailSendMailTextColor", forState: .normal)
        adButton.theme_setImage("images.view detail_ad_feed_15x13_", forState: .normal)
    }
    
    /// 关注按点击
    @IBAction func concernButtonClicked(_ sender: UIButton) {
        if sender.isSelected { // 已经关注，点击则取消关注
            // 已关注用户，取消关注
            NetworkTool.loadRelationUnfollow(userId: video.user_info.user_id, completionHandler: { (_) in
                sender.isSelected = !sender.isSelected
            })
        } else { // 未关注，点击则关注这个用户
            // 点击关注按钮，关注用户
            NetworkTool.loadRelationFollow(userId: video.user_info.user_id, completionHandler: { (_) in
                sender.isSelected = !sender.isSelected
            })
        }
    }
    
    /// 广告按钮点击
    @IBAction func adButtonClicked(_ sender: UIButton) {
        let downloadURL = video.ad_button.download_url != "" ? video.ad_button.download_url : video.download_url
        print("app 下载地址 - \(downloadURL)")
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

extension VideoCell {
    /// 视频播放时隐藏 cell 的部分子视图
    func hideSubviews() {
        titleLabel.isHidden = true
        playCountLabel.isHidden = true
        timeLabel.isHidden = true
        vImageView.isHidden = true
        avatarButton.isHidden = true
        nameLable.isHidden = true
        shareStackView.isHidden = false
    }
    
    /// 设置当前 cell 的属性
    func showSubviews() {
        titleLabel.isHidden = false
        playCountLabel.isHidden = false
        timeLabel.isHidden = false
        avatarButton.isHidden = false
        vImageView.isHidden = !video.user_verified
        nameLable.isHidden = false
        shareStackView.isHidden = true
    }
}
