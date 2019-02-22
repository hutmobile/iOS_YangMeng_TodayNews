//
//  RelatedVideoHeaderView.swift
//  News
//
//  Created by 杨蒙 on 2018/1/21.
//  Copyright © 2018年 hrscy. All rights reserved.
//

import UIKit
import IBAnimatable

class RelatedVideoHeaderView: UIView, NibLoadable {

    var video = NewsModel() {
        didSet {
            titleLabel.text = video.title
            playCountLabel.text = video.video_detail_info.videoWatchCount + "次播放"
            diggButton.setTitle(video.diggCount, for: .normal)
            descriptionLabel.text = video.description
            publishTimeLabel.text = video.publishTime + "发布"
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        width = screenWidth
        height = bottomView.frame.maxY
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        foldButton.setImage(UIImage(named: "video_detail_arrow_down_night_12x5_"), for: .normal)
        foldButton.setImage(UIImage(named: "video_detail_arrow_night_12x5_"), for: .selected)
        theme_backgroundColor = "colors.cellBackgroundColor"
        titleLabel.theme_textColor = "colors.black"
        playCountLabel.theme_textColor = "colors.grayColor150"
        publishTimeLabel.theme_textColor = "colors.grayColor150"
        descriptionLabel.theme_textColor = "colors.grayColor150"
        diggButton.theme_setTitleColor("colors.black", forState: .normal)
        pyqButton.theme_setTitleColor("colors.black", forState: .normal)
        wechatButton.theme_setTitleColor("colors.black", forState: .normal)
    }
    /// 标题
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var titleLabelHeight: NSLayoutConstraint!
    /// 播放次数
    @IBOutlet weak var playCountLabel: UILabel!
    /// 发布时间
    @IBOutlet weak var publishTimeLabel: UILabel!
    @IBOutlet weak var publishTimeLabelHeight: NSLayoutConstraint!
    /// 描述
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var descriptionLabelHeight: NSLayoutConstraint!
    /// 点赞
    @IBOutlet weak var diggButton: AnimatableButton!
    /// 分享到朋友圈
    @IBOutlet weak var pyqButton: AnimatableButton!
    /// 分享到微信
    @IBOutlet weak var wechatButton: AnimatableButton!
    /// 展开按钮
    @IBOutlet weak var foldButton: UIButton!
    
    @IBOutlet weak var bottomView: UIView!
    /// 展开按钮点击
    @IBAction func foldButtonClicked(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        if sender.isSelected {
            titleLabelHeight.constant = video.videoTitleH
            descriptionLabelHeight.constant = video.descriptionH
            publishTimeLabelHeight.constant = 16
        } else {
            titleLabelHeight.constant = 21
            publishTimeLabelHeight.constant = 0
            descriptionLabelHeight.constant = 0
        }
        UIView.animate(withDuration: 0.25) {
            self.layoutIfNeeded()
        }
    }
    
    /// 点赞按钮点击
    @IBAction func diggButtonClicked(_ sender: AnimatableButton) {
        
    }
    /// 朋友圈按钮点击
    @IBAction func pyqButtonClicked(_ sender: AnimatableButton) {
        
    }
    /// 朋友圈按钮点击
    @IBAction func wechatButtonClicked(_ sender: AnimatableButton) {
        
    }
    
    
}
