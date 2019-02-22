//
//  UserDetailDongTaiCell.swift
//  News
//
//  Created by 杨蒙 on 2017/12/7.
//  Copyright © 2017年 hrscy. All rights reserved.
//
//  用户动态 cell
//

import UIKit
import IBAnimatable
import Kingfisher

class UserDetailDongTaiCell: UITableViewCell, RegisterCellFromNib {
    /// 点击了 用户名
    var didSelectDongtaiUserName: ((_ uid: Int)->())?
    /// 点击了 话题
    var didSelectDongtaiTopic: ((_ cid: Int)->())?
    
    var dongtai = UserDetailDongtai() {
        didSet {
            avatarImageView.kf.setImage(with: URL(string: dongtai.user.avatar_url))
            nameLabel.text = dongtai.user.screen_name
            modifyTimeLabel.text = "· " + dongtai.createTime
            likeButton.setTitle(dongtai.diggCount, for: .normal)
            commentButton.setTitle(dongtai.commentCount, for: .normal)
            forwardButton.setTitle(dongtai.forwardCount, for: .normal)
            areaLabel.text = dongtai.brand_info + " " + dongtai.position.position
            readCountLabel.text = dongtai.readCount + "阅读"
            
            // 点击了用户
            contentLabel.userTapped = { [weak self] (userName, range) in
                for userContent in self!.dongtai.userContents! {
                    if userName.contains(userContent.name) {
                        self!.didSelectDongtaiUserName?(Int(userContent.uid)!)
                    }
                }
            }
            // 点击了话题
            contentLabel.topicTapped = {[weak self] (topic, range) in
                for topicContent in self!.dongtai.topicContents! {
                    if topic.contains(topicContent.name) {
                        self!.didSelectDongtaiTopic?(Int(topicContent.uid)!)
                    }
                }
            }
            // 显示 emoji
            contentLabel.attributedText = dongtai.attributedContent
            contentLabelHeight.constant = dongtai.contentH
            allContentLabel.isHidden = dongtai.attributedCntentHeight == 110 ? false : true
            /// 防止因为 cell 重用机制，导致数据错乱现象出现
            if middleView.contains(postVideoOrArticleView) { postVideoOrArticleView.removeFromSuperview() }
            if middleView.contains(collectionView) { collectionView.removeFromSuperview() }
            if middleView.contains(originThreadView) { originThreadView.removeFromSuperview() }
            
            switch dongtai.item_type {
            case .postVideoOrArticle, .postVideo, .answerQuestion, .proposeQuestion, .forwardArticle, .postContentAndVideo: // 发布了文章或者视频
                middleView.addSubview(postVideoOrArticleView)
                postVideoOrArticleView.frame = CGRect(x: 15, y: 0, width: screenWidth - 30, height: middleView.height)
                if dongtai.group.group_id != 0 { postVideoOrArticleView.group = dongtai.group }
                else if dongtai.origin_group.group_id != 0  { postVideoOrArticleView.group = dongtai.origin_group }
            case .postContent, .postSmallVideo: // 发布了文字内容
                middleView.addSubview(collectionView)
                collectionView.frame = CGRect(x: 15, y: 0, width: dongtai.collectionViewW, height: dongtai.collectionViewH)
                collectionView.isPostSmallVideo = (dongtai.item_type == .postSmallVideo)
                collectionView.thumbImages = dongtai.thumb_image_list
                collectionView.largeImages = dongtai.large_image_list
            case .commentOrQuoteContent, .commentOrQuoteOthers: // 引用或评论
                middleView.addSubview(originThreadView)
                originThreadView.frame = CGRect(x: 0, y: 0, width: screenWidth, height: dongtai.origin_thread.height)
                originThreadView.originthread = dongtai.origin_thread
            }
            layoutIfNeeded()
        }
    }
    
    /// 懒加载 评论或引用
    private lazy var originThreadView = DongtaiOriginThreadView.loadViewFromNib()
    /// 懒加载 发布视频或者文章
    private lazy var postVideoOrArticleView = PostVideoOrArticleView.loadViewFromNib()
    /// 懒加载 collectionView
    private lazy var collectionView = DongtaiCollectionView.loadViewFromNib()
    
    @IBOutlet weak var separatorView: UIView!
    /// 头像
    @IBOutlet weak var avatarImageView: AnimatableImageView!
    /// 用户名
    @IBOutlet weak var nameLabel: UILabel!
    /// 修改时间
    @IBOutlet weak var modifyTimeLabel: UILabel!
    /// 更多按钮
    @IBOutlet weak var moreButton: UIButton!
    /// 喜欢按钮
    @IBOutlet weak var likeButton: UIButton!
    /// 评论按钮
    @IBOutlet weak var commentButton: UIButton!
    /// 转发按钮
    @IBOutlet weak var forwardButton: UIButton!
    /// 位置，阅读数量
    @IBOutlet weak var areaLabel: UILabel!
    @IBOutlet weak var readCountLabel: UILabel!
    
    @IBOutlet weak var separatorView2: UIView!
    /// 内容
    @IBOutlet weak var contentLabel: RichLabel!
    @IBOutlet weak var contentLabelHeight: NSLayoutConstraint!
    /// 全文
    @IBOutlet weak var allContentLabel: UILabel!
    /// 中间的 view
    @IBOutlet weak var middleView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        separatorView.theme_backgroundColor = "colors.separatorViewColor"
        separatorView2.theme_backgroundColor = "colors.separatorViewColor"
        theme_backgroundColor = "colors.cellBackgroundColor"
        nameLabel.theme_textColor = "colors.grayColor150"
        modifyTimeLabel.theme_textColor = "colors.grayColor150"
        likeButton.theme_setTitleColor("colors.black", forState: .normal)
        commentButton.theme_setTitleColor("colors.black", forState: .normal)
        forwardButton.theme_setTitleColor("colors.black", forState: .normal)
        likeButton.theme_setImage("images.feed_like_24x24_", forState: .normal)
        likeButton.theme_setImage("images.feed_like_press_24x24_", forState: .selected)
        commentButton.theme_setImage("images.comment_feed_24x24_", forState: .normal)
        moreButton.theme_setImage("images.morebutton_dynamic_14x8_", forState: .normal)
        moreButton.theme_setImage("images.morebutton_dynamic_press_14x8_", forState: .highlighted)
        forwardButton.theme_setImage("images.feed_share_24x24_", forState: .normal)
        contentLabel.theme_textColor = "colors.black"
        allContentLabel.theme_backgroundColor = "colors.cellBackgroundColor"
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}



