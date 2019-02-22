//
//  DongtaiDetailHeaderView.swift
//  News
//
//  Created by 杨蒙 on 2017/12/23.
//  Copyright © 2017年 hrscy. All rights reserved.
//

import UIKit
import IBAnimatable

class DongtaiDetailHeaderView: UIView, NibLoadable {
    /// 点击了 点赞按钮
    var didSelectDiggButton: ((_ dongtai: UserDetailDongtai)->())?
    /// 点击了 用户名
    var didSelectDongtaiUserName: ((_ uid: Int)->())?
    /// 点击了 话题
    var didSelectDongtaiTopic: ((_ cid: Int)->())?
    /// 点击了覆盖的按钮
    var didSelectCoverButton: ((_ userId: Int)->())?
    
    var dongtai = UserDetailDongtai() {
        didSet {
            theme_backgroundColor = "colors.cellBackgroundColor"
            avatarButton.kf.setImage(with: URL(string: dongtai.user.avatar_url), for: .normal)
            nameLabel.text = dongtai.user.screen_name
            timeLabel.text = "· " + dongtai.createTime
            descriptionLabel.text = dongtai.user.verified_content
            readCountLabel.text = dongtai.readCount + "阅读 ·" + dongtai.brand_info + " " + dongtai.position.position
            commentCountLabel.text = dongtai.commentCount + "评论"
            zanButton.setTitle(dongtai.diggCount, for: .normal)
            // 显示 emoji
            contentLabel.attributedText = dongtai.attributedContent
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
            /// 防止因为 cell 重用机制，导致数据错乱现象出现
            if middleView.contains(postVideoOrArticleView) { postVideoOrArticleView.removeFromSuperview() }
            if middleView.contains(collectionView) { collectionView.removeFromSuperview() }
            if middleView.contains(originThreadView) { originThreadView.removeFromSuperview() }
            
            switch dongtai.item_type {
            case .postVideoOrArticle, .postVideo, .answerQuestion, .proposeQuestion, .forwardArticle, .postContentAndVideo: // 发布了文章或者视频
                postVideoOrArticleView.frame = CGRect(x: 15, y: 0, width: screenWidth - 30, height: middleView.height)
                postVideoOrArticleView.group = dongtai.group.title == "" ? dongtai.origin_group : dongtai.group
                middleView.addSubview(postVideoOrArticleView)
            case .postContent, .postSmallVideo: // 发布了文字内容
                collectionView.isDongtaiDetail = true
                collectionView.frame = CGRect(x: 15, y: 0, width: dongtai.collectionViewW, height: dongtai.detailConllectionViewH)
                collectionView.isPostSmallVideo = (dongtai.item_type == .postSmallVideo)
                collectionView.thumbImages = dongtai.thumb_image_list
                collectionView.largeImages = dongtai.large_image_list
                middleView.addSubview(collectionView)
            case .commentOrQuoteContent, .commentOrQuoteOthers: // 引用或评论
                originThreadView.originthread = dongtai.origin_thread
                originThreadView.originthread.isDongtaiDetail = true
                originThreadView.frame = CGRect(x: 0, y: 0, width: screenWidth - 30, height: dongtai.origin_thread.detailHeight)
                middleView.addSubview(originThreadView)
            }
        }
    }
    
    /// 懒加载 评论或引用
    private lazy var originThreadView = DongtaiOriginThreadView.loadViewFromNib()
    /// 懒加载 发布视频或者文章
    private lazy var postVideoOrArticleView = PostVideoOrArticleView.loadViewFromNib()
    /// 懒加载 collectionView
    private lazy var collectionView = DongtaiCollectionView.loadViewFromNib()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        theme_backgroundColor = "colors.cellBackgroundColor"
        separatorView.theme_backgroundColor = "colors.separatorViewColor"
        nameLabel.theme_textColor = "colors.black"
        timeLabel.theme_textColor = "colors.grayColor150"
        descriptionLabel.theme_textColor = "colors.grayColor150"
        readCountLabel.theme_textColor = "colors.grayColor150"
        contentLabel.theme_textColor = "colors.black"
    }
    
    /// 头像
    @IBOutlet weak var avatarButton: AnimatableButton!
    /// V 图标
    @IBOutlet weak var vImageView: UIImageView!
    /// 用户名
    @IBOutlet weak var nameLabel: UILabel!
    /// 创建时间
    @IBOutlet weak var timeLabel: UILabel!
    /// 描述
    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBOutlet weak var separatorView: UIView!
    /// 阅读数量
    @IBOutlet weak var readCountLabel: UILabel!
    /// 中间的 view
    @IBOutlet weak var middleView: UIView!
    /// 内容
    @IBOutlet weak var contentLabel: RichLabel!
    /// 评论数量
    @IBOutlet weak var commentCountLabel: UILabel!
    /// 赞
    @IBOutlet weak var zanButton: UIButton!
    
    /// 覆盖的按钮点击
    @IBAction func coverButtonClicked() {
        didSelectCoverButton?(dongtai.user.user_id)
    }
    
    /// 点赞按钮点击
    @IBAction func diggButtonClicked(_ sender: UIButton) {
         didSelectDiggButton?(dongtai)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        height = dongtai.detailHeaderHeight
    }
}
