//
//  UserDetail.swift
//  News
//
//  Created by 杨蒙 on 2017/11/30.
//  Copyright © 2017年 hrscy. All rights reserved.
//

import Foundation
import HandyJSON

// MARK: 用户详情模型
struct UserDetail: HandyJSON {
    
    var screen_name: String = ""
    var name: String = ""
    
    var big_avatar_url: String = "" // 头像
    var avatar_url: String = ""
    
    var status: Int = 0
    
    var is_followed: Bool = false
    var is_following: Bool = false // 是否正在关注
    
    var current_user_id: Int = 0
    
    var media_id: Int = 0               // 1554769814257666
    var ugc_publish_media_id: Int = 0   // 1576963425007630
    var user_id: Int = 0                // 53271122458
    var creator_id: Int = 0             // 53271122458
    
    var description: String = "" // 考研规划“神嘴”张雪峰老师。
    var attributedDescription: NSAttributedString {
        let emojimanager = EmojiManager()
        return emojimanager.showEmoji(content: description, font: UIFont.systemFont(ofSize: 13))
    }
    // screeenWidth - (15 + 15 + 40 + 5)
    var descriptionHeight: CGFloat { return Calculate.textHeight(text: description, fontSize: 13, width: screenWidth - 30.0) }
    
    var apply_auth_url: String = "" // sslocal://apply_user_auth_info
    
    var bottom_tab: [BottomTab] = [BottomTab]()
    var top_tab: [TopTab] = [TopTab]()
    
    var bg_img_url: String = ""
    
    var verified_content: String = ""
    var user_verified: Bool = false
    
    var verified_agency: String = "" // 头条认证
    
    var is_blocking: Bool = false
    var is_blocked: Bool = false
    
    var gender: Int = 0
    
    var share_url: String = ""
    
    var followers_count: Int = 0// 粉丝 470837
    var followersCount: String { return followers_count.convertString() }
    
    var followings_count: Int = 0 // 关注 3
    var followingsCount: String { return followings_count.convertString() }
    
    var media_type: Int = 0
    
    var area: String = ""
    
    var user_auth_info = UserAuthInfo()
}

// MARK: 用户详情底部 tab
struct BottomTab: HandyJSON {
    
    var type: String = "" // href
    
    var name: String = ""
    
    var value: String = ""
    
    var children: [BottomTabChildren] = [BottomTabChildren]()
    
}

struct BottomTabChildren: HandyJSON {
    
    var schema_href: String = "" // sslocal://webview?url=http%3A%2F%2Fwww.guanfumuseum.org.cn%2F
    
    var type: String = "" // href
    
    var name: String = ""
    
    var value: String = "" // http://www.guanfumuseum.org.cn/
}

enum TopTabType: String, HandyJSONEnum {
    case dongtai = "dongtai"                            // 动态
    case article = "all"                                // 文章
    case video = "video"                                // 视频
    case wenda = "wenda"                                // 问答
    case iesVideo = "ies_video"                         // 小视频
//    case matrix_atricle_list = "matrix_atricle_list"    // 发布厅
//    case matrix_media_list = "matrix_media_list"        // 矩阵
}

struct TopTab: HandyJSON {
    
    var url: String = ""
    
    var is_default: Bool = false
    
    var show_name: String = "" // 动态 文章 视频 问答
    
    var type: TopTabType = .dongtai
    
}

// MARK: 关注用户
struct ConcernUser: HandyJSON {
    
    var is_followed: Bool = false
    var is_following: Bool = false // 是否正在关注
    
    var media_id: Int = 0               // 1554769814257666
    
    var create_time: TimeInterval = 0
    
    var user_verified: Bool = false
    
    var screen_name: String = "" // 考研张雪峰
    var name: String = "" // 考研张雪峰
    
    var user_id: Int = 0                // 53271122458
    
    var last_update: String = ""
    
    var avatar_url: String = ""
    
    var user_auth_info = UserAuthInfo()
    
    var type: Int = 0
}

// MARK: 相关推荐模型
struct UserCard: HandyJSON {
    
    var name: String = ""
    
    var recommend_reason: String = ""
    
    var recommend_type: Int = 0
    
    var user: UserCardUser = UserCardUser()
    
    var stats_place_holder: String = ""
    
}

// MARK: 相关推荐的用户模型
struct UserCardUser: HandyJSON {
    
    var info: UserCardUserInfo = UserCardUserInfo()
    
    var relation: UserCardUserRelation = UserCardUserRelation()
    
}

// MARK: 相关推荐的用户信息模型
struct UserCardUserInfo: HandyJSON {
    
    var name: String = ""
    
    var user_id: Int = 0
    
    var avatar_url: String = ""
    
    var desc: String = ""
    
    var schema: String = ""
    
    var user_auth_info = UserAuthInfo()
}

// MARK: 相关推荐的用户是否关注模型
struct UserCardUserRelation: HandyJSON {
    
    var is_followed: Bool = false
    
    var is_following: Bool = false
    
    var is_friend: Bool = false
    
}

// MARK: cell 中间内容的样式
enum DongtaiItemType: Int, HandyJSONEnum {
    case commentOrQuoteContent = 109   // 引用或者评论别人的内容
    case commentOrQuoteOthers = 212    // 引用或者评论别人的内容
    case postVideoOrArticle = 151      // 发布了视频和文章
    case postContent = 200             // 发布了文字内容
    case answerQuestion = 1028         // 回答了问题    group 的  item_type 7 问答
    case proposeQuestion = 1029        // 提出了问题
    case postContentAndVideo = 211     // 发布了文字内容和视频
    case postVideo = 150               // 发布了视频
    case forwardArticle = 110          // 转发了文章 origin_group 不为空了
    case postSmallVideo = 300          // 小视频
}

/// rich_content 中的元素
struct RichContent {
    var uid = ""
    var name = ""
    
    init(_ uid: String, _ name: String) {
        self.uid = uid
        self.name = name
    }
}

// MARK: - 用户详情 动态模型
struct UserDetailDongtai: HandyJSON {
    /// header view 的高度
    var detailHeaderHeight: CGFloat {
        // 60 + contentHeight + middleViewHeight + 25 + 5 + 40
        var height: CGFloat = 135 + detailContentH
        switch item_type {
        case .postVideoOrArticle, .postVideo, .answerQuestion, .proposeQuestion, .forwardArticle, .postContentAndVideo:   // 发布了视频和文章,提出了问题,回答了问题
            height += 60
        case .postContent, .postSmallVideo:   // 发布了文字内容
            height += collectionViewH
        case .commentOrQuoteContent, .commentOrQuoteOthers:   // 引用或者评论别人的内容
            height += origin_thread.detailHeight
        }
        return height
    }
    
    /// cell 的高度
    var cellHeight: CGFloat {
        // 顶部分割线 5，头像用户名 45，底部 55， 中间部分上下间距 5
        var height: CGFloat = 115.0 + contentH
        switch item_type {
        case .postVideoOrArticle, .postVideo, .answerQuestion, .proposeQuestion, .forwardArticle, .postContentAndVideo:   // 发布了视频和文章,提出了问题,回答了问题
            height += 60
        case .postContent, .postSmallVideo:   // 发布了文字内容
            height += (thumb_image_list.count == 0 ? 0 : collectionViewH)
        case .commentOrQuoteContent, .commentOrQuoteOthers:   // 引用或者评论别人的内容
            height += origin_thread.height
        }
        return height
    }
    
    var isDongtaiDetail = false
    
    /// 详情 collectionView 高度
    var detailConllectionViewH : CGFloat {
        return Calculate.detailCollectionViewHieght(thumb_image_list)
    }
    
    /// collectionView 高度
    var collectionViewH: CGFloat {
        return Calculate.collectionViewHeight(thumb_image_list.count)
    }
    
    /// collectionView 宽度
    var collectionViewW: CGFloat {
        return isDongtaiDetail ? (screenWidth - 30) : Calculate.collectionViewWidth(thumb_image_list.count)
    }
    
    var rich_content: String = ""
    // 用户数组
    var userContents: [RichContent]? {
        return Calculate.richContents(from: rich_content, idPattern: "(?<=uid=).*?(?=\">@)", titlePattern: "(?<=\">@).*?(?=</a>:)")
    }
    // 话题数组
    var topicContents: [RichContent]? {
        return Calculate.richContents(from: rich_content, idPattern: "(?<=cid=).*?(?=&enter_from=)", titlePattern: "#.*?#")
    }
    
    var content_unescape: String = ""
    var content: String = ""
    var detailContentH: CGFloat {
        return Calculate.textHeight(text: content, fontSize: 17, width: screenWidth - 30.0)
    }
    
    var contentH: CGFloat {
        let height = Calculate.textHeight(text: content, fontSize: 17, width: screenWidth - 30.0)
        return height >= 110 ? 110 : height
    }
    
    /// 富文本内容高度
    var attributedCntentHeight: CGFloat {
        let height = Calculate.attributedTextHeight(text: attributedContent, width: screenWidth - 30.0)
        return height >= 110.0 ? 110.0 : height
    }
    
    var attributedContent: NSAttributedString {
        let emojimanager = EmojiManager()
        return emojimanager.showEmoji(content: content, font: UIFont.systemFont(ofSize: 17))
    }
    
    var cell_type: Int = 0
    var type: Int = 0
    var comment_type: DongtaiItemType = .postContent
    var item_type: DongtaiItemType = .postContent
    
    var create_time: TimeInterval = 0
    var createTime: String { return create_time.convertString() }
    
    var comment_count: Int = 0
    var commentCount: String { return comment_count.convertString() }
    
    var digg_count: Int = 0
    var diggCount: String { return digg_count.convertString() }
    
    var forward_num: Int = 0
    
    var forward_count: Int = 0
    var forwardCount: String { return forward_count.convertString() }
    
    var read_count: Int = 0
    var readCount: String { return read_count.convertString() }
    
    var is_admin: Int = 0
    
    var cursor: Int = 0
    
    var device_model: String = ""
    
    var id: Int = 0
    
    var flags: Int = 0
    
    var comment_id_str: String = ""
    
    var brand_info: String = ""
    
    var action_desc: String = ""
    
    var content_rich_span: String = ""
    
    var source_type: Int = 0
    
    var is_repost: Int = 0
    
    var open_url: String = ""
    
    var user_digg = false
    // id_str 作为 thread_id 参数
    var id_str: String = ""
    
    var display_lines: Int = 0
    
    var comment_visible_count: Int = 0
    
    var is_pgc_author: Int = 0
    
    var digg_limit: Int = 0
    
    var device_type: Int = 0
    /// 原内容是否已经删除
    var delete = false
    
    var modify_time: Int = 0
    
    var reason: String = ""
    
    var share_url: String = ""
    
    var comment_id: Int = 0
    
    var user = DongtaiUser()
    
    var position = DongtaiPosition()
    
    var origin_group = DongtaiOriginGroup()
    var group = DongtaiOriginGroup()
    
    var origin_thread = DongtaiOriginThread()
    var thread = DongtaiOriginThread()
    
    var origin_item = DongtaiOriginItem()
    
    var talk_item = DongtaiTalkItem()
    
    var digg_list = [DongtaiUserDigg]()
    
    var comments = [DongtaiComment]()
    
    var repost_params = RepostParam()
    
    var thumb_image_list = [ThumbImage]()
    var ugc_cut_image_list = [UGCCutImage]()
    var large_image_list = [LargeImage]()
    
    // 下面是文章数据
    var go_detail_count: String = ""
    var group_id: Int = 0
    var is_original: Bool = false
    var external_visit_count: Int = 0
    var show_play_effective_count: Bool = false
    var pgc_ad: Int = 0
    var seo_url: String = ""
    var internal_visit_count_format: String = ""
    var datetime: String = ""
    var review_comment_mode: Int = 0
    var display_mode: String = ""
    var is_key_item: Int = 0
    var tag: String = ""
    var play_effective_count: String = ""
    var categories: [String]!
    var internal_visit_count: Int = 0
    var article_type: Int = 0
    var has_m3u8_video: Int = 0
    var source_url: String = ""
    var item_status: Int = 0
    var group_flags: Int = 0
    var article_url: String = ""
    var tag_id: Int = 0
    var max_comments: Int = 0
    var display_url: String = ""
    var behot_time: Int = 0
    var detail_play_effective_count: Int = 0
    var keywords: String = ""
    var middle_image = MiddleImage()
    var display_type: Int = 0
    var has_inner_video: Bool = false
    var article_live_type: String = ""
    var composition: Int = 0
    var label: [String]!
    var app_url: String = ""
    var has_image: Bool = false
    var group_status: Int = 0
    var content_cards: String = ""
    var total_read_count: Int = 0
    var has_video: Bool = false
    var language: String = ""
    var pgc_article_type: Int = 0
    var has_gallery: Bool = false
    var video_duration_str: String = ""
    var creator_uid: Int = 0
    var has_mp4_video: Int = 0
    var detail_source: String = ""
    var list_play_effective_count: Int = 0
    var ad_type: Int = 0
    var video_play_count: Int = 0
    var url: String = ""
    var region: Int = 0
    var str_item_id: String = ""
    var comments_count: String = ""
    var review_comment: Bool = false
    var publish_time: Int = 0
    var middle_mode: Bool = false
    var source: String = ""
    var bury_count: Int = 0
    var group_source: Int = 0
    var web_display_type: Int = 0
    var impression_count: Int = 0
    var play_effective_count_num: Int = 0
    var content_cntw: Int = 0
    var media_id: Int = 0
    var wap_open: Int = 0
    var original_media_id: Int = 0
    var web_article_type: Int = 0
    var external_visit_count_format: String = ""
    var was_recommended: Int = 0
    var share_count: Int = 0
    var visibility: Int = 0
    var pgc_id: Int = 0
    var ban_comment: Int = 0
    var natant_level: Int = 0
    var image_url: String = ""
    var book_info: String = ""
    var city: String = ""
    var title: String = ""
    var str_group_id: String = ""
    var level: Int = 0
    var article_sub_type: Int = 0
    var ban_bury: Bool = false
    var item_id: Int = 0
    var pc_image_url: String = ""
    var abstract: String = ""
    var own_group: Bool = false
    var good_voice: Bool = false
    var detail_mode: Int = 0
    var ban_action: Bool = false
    var repin_count: Int = 0
    var verify_detail = UserDetailArticleVerifyDetail()
    var display_status: Int = 0
    var video_infos = [UserDetailArticleVideoInfo]()
    var image_detail = [UserDetailArticleImageDetail]()
    var thumb_image = [UserDetailArticleThumbImage]()
    var image_list = [UserDetailArticleImageList]()
    var gallery = [UserDetailArticleGroup]()
    var optional_data = UserDetailArticleOptionalData()
    var image_infos = [UserDetailArticleImageInfo]()
    var slave_infos =  [UserDetailArticleSlaveInfo]()
    var cover_image_infos = [UserDetailArticleCoverImageInfos]()
    
    var comment_base = DongtaiCommentBase()
    
}

struct DongtaiCommentBase: HandyJSON {
    var status: Int = 0
    var content: String = ""
    
    var action = CommentBaseAction()
    var id: Int = 0
    var group_id: Int = 0
    var share = CommentBaseShare()
    var create_time: TimeInterval = 0
    var createTime: String {
        return create_time.convertString()
    }
    var content_rich_span: String = ""
    var detail_schema: String = ""
    var repost_params = RepostParam()
    var user = CommentBaseUser()
}

struct CommentBaseShare: HandyJSON {
    var share_url: String = ""
    var share_title: String = ""
    var share_weibo_desc: String = ""
    var share_cover = CommentBaseShareOver()
    var share_desc: String = ""
}

struct CommentBaseShareOver: HandyJSON {
    var uri: String = ""
    var url_list = [String]()
}

struct CommentBaseUser: HandyJSON {
    var relation = CommentBaseUserRelation()
    var info: CommentBaseUserInfo!
    var relation_count = CommentBaseRelationCount()
    var block = CommentBaseBlock()
}

struct CommentBaseUserRelation: HandyJSON {
    var is_followed = false
    var is_following = false
    var is_friend = false
}

struct CommentBaseUserInfo: HandyJSON {
    var schema: String = ""
    var avatar_url: String = ""
    var user_auth_info = UserAuthInfo()
    var user_verified = false
    var medals = [CommentBaseUserInfoMedal]()
    var user_url: String = ""
    var remark_name: String = ""
    var verified_content: String = ""
    var user_id: Int = 0
    var name: String = ""
    var desc: String = ""
}

struct CommentBaseUserInfoMedal: HandyJSON {
    
}

struct CommentBaseRelationCount: HandyJSON {
    var followings_count: Int = 0
    var followingsCount: String {
        return followings_count.convertString()
    }
    
    var followers_count: Int = 0
    var followersCount: String {
        return followers_count.convertString()
    }
}

struct CommentBaseBlock: HandyJSON {
    var is_blocked: Int = 0
    var is_blocking: Int = 0
}

struct CommentBaseAction: HandyJSON {
    var user_repin: Int = 0
    var bury_count: Int = 0
    var buryCount: String {
        return bury_count.convertString()
    }
    
    var forward_count: Int = 0
    var forwardCount: String {
        return forward_count.convertString()
    }
    var comment_count: Int = 0
    var commentCount: String {
        return comment_count.convertString()
    }
    var user_bury: Int = 0
    var userBury: String {
        return user_bury.convertString()
    }
    var digg_count: Int = 0
    var diggCount: String {
        return digg_count.convertString()
    }
    var user_digg: Bool = false
    
    var read_count: Int = 0
    var readCount: String {
        return read_count.convertString()
    }
    var play_count: Int = 0
    var playCount: String {
        return play_count.convertString()
    }
}


struct DongtaiForumExtra: HandyJSON {
    var id: Int = 0
    var medals = [Any]()
    var is_blocking: Int = 0
    var followers_count: Int = 0
    var followings_count: Int = 0
    var remark_name: String = ""
    var avatar_url: String = ""
    var schema: String = ""
    var user_auth_info = UserAuthInfo()
    
    var user_id: Int = 0
    var desc: String = ""
    var is_following: Int = 0
    var is_friend: Int = 0
    var is_blocked: Int = 0
    var user_verified: Int = 0
    var verified_content: String = ""
    var user_role_icons = [Any]()
    var name: String = ""
    var screen_name: String = ""
}

// MARK: 上头条
struct DongtaiForumInfo: HandyJSON {
    
    var participant_count: Int = 0
    var show_et_status: Int = 0
    var like_time: Int = 0
    var avatar_url: String = ""
    var banner_url: String = ""
    var desc: String = ""
    var talk_count: Int = 0
    var introdution_url: String = ""
    var forum_id: Int = 0
    var share_url: String = ""
    var onlookers_count: Int = 0
    var follower_count: Int = 0
    var status: Int = 0
    var forum_name: String = ""
}

// MARK: 位置
struct DongtaiPosition: HandyJSON {
    
    var position: String = ""
}

// MARK: 引用内容
struct DongtaiOriginThread: HandyJSON {
    /// cell 的高度
    var height: CGFloat { return 20 + contentH + ((delete || !show_origin) ? 0 : collectionViewH) }
    var detailHeight: CGFloat { return 20 + contentH + ((delete || !show_origin) ? 0 : detailCollectionViewH) }
    
    var content: String = ""
    var contentH: CGFloat {
        if !show_origin || delete { return 40 }
        let nameAndContent = (user.screen_name == "" ? "" : "\(user.screen_name):") + content
        let height = Calculate.textHeight(text: nameAndContent, fontSize: 17, width: screenWidth - 30.0) + 5.0
        return height >= 120 ? 120 : height
    }
    var attributedContent: NSAttributedString {
        let emojimanager = EmojiManager()
        let mutableAtttributedString = NSMutableAttributedString(string: (user.screen_name == "" ? "" : "\(user.screen_name):"), attributes: [.foregroundColor: UIColor.blueFontColor()])
        mutableAtttributedString.append(emojimanager.showEmoji(content: content, font: UIFont.systemFont(ofSize: 17)))
        return mutableAtttributedString
    }
    
    var isDongtaiDetail = false
    
    /// 详情 collectionView 高度
    var detailCollectionViewH: CGFloat {
        return Calculate.detailCollectionViewHieght(thumb_image_list)
    }
    
    /// collectionView 高度
    var collectionViewH: CGFloat {
        return Calculate.collectionViewHeight(thumb_image_list.count)
    }
    
    /// collectionView 宽度
    var collectionViewW: CGFloat {
        return isDongtaiDetail ? (screenWidth - 30) : Calculate.collectionViewWidth(thumb_image_list.count)
    }
    var ugc_cut_image_list = [UGCCutImage]()
    
    var content_unescape: String = ""
    
    var talk_item: DongtaiTalkItem!
    
    var thread_id: Int = 0
    
    var show_tips: String = ""
    
    var position = DongtaiPosition()
    
    var thread_id_str: String = ""
    
    var rich_content: String = ""
    
    var show_origin = false
    
    var open_url: String = ""
    
    var large_image_list = [LargeImage]()
    
    var delete = false
    
    var thumb_image_list = [ThumbImage]()
    
    var brand_info: String = ""
    
    var user = DongtaiUser()
    
    var status: Int = 0
    
    var content_rich_span: String = ""
    
    var flags: Int = 0
    var cursor: Int = 0
    var item_type: Int = 0
    var friend_digg_list = [DongtaiFriendDigg]()
    var repost_params = RepostParam()
    var comments = [DongtaiComment]()
    var forward_num: Int = 0
    
    var forum_id: Int = 0
    var digg_list = [DongtaiUserDigg]()
    
    var user_digg = false
    
    var create_time: Int = 0
    var show_comments_num: Int = 0
    var forward_info = DongtaiForwardInfo()
    var comment_count: Int = 0
    var digg_count: Int = 0
    
    var digg_limit: Int = 0
    
    var user_repin: Int = 0
    var user_role: Int = 0
    var modify_time: Int = 0
    
    var talk_type: Int = 0
    var reason: String = ""
    
    var read_count: Int = 0
    var share_url: String = ""
    var title: String = ""
    
    var rate: Int = 0
    
}

struct DongtaiForwardInfo: HandyJSON {
    var forward_count = 0
    
}

struct DongtaiFriendDigg: HandyJSON {
    
}

struct DongtaiTalkItem: HandyJSON {
    var participant_count: Int = 0
    var show_et_status: Int = 0
    var like_time: Int = 0
    var avatar_url: String = ""
    var banner_url: String = ""
    var desc: String = ""
    var talk_count: Int = 0
    var introdution_url: String = ""
    var forum_id: Int = 0
    var share_url: String = ""
    var onlookers_count: Int = 0
    var follower_count: Int = 0
    var status: Int = 0
    var forum_name: String = ""
}

struct DongtaiComment: HandyJSON {
    
    var id: Int = 0
    var medals = [Any]()
    var is_blocking = false
    var followers_count: Int = 0
    var followings_count: Int = 0
    var remark_name: String = ""
    var avatar_url: String = ""
    var schema: String = ""
    var user_auth_info = UserAuthInfo()
    var user_id: Int = 0
    var desc: String = ""
    var is_following = false
    var is_friend = false
    var is_blocked = false
    var user_verified: Bool = false
    var verified_content: String = ""
    var user_role_icons = [Any]()
    var name: String = ""
    var screen_name: String = ""
    var is_followed = false
    var user_bury: Int = 0
    var create_time: TimeInterval = 0
    var createTime: String { return create_time.convertString() }
    
    var reply_count: Int = 0
    var digg_count: Int = 0
    var diggCount: String { return digg_count.convertString() }
    var score: Float = 0.0
    var bury_count: Int = 0
    var buryCount: String { return bury_count.convertString()}
    var reply_list = [DongtaiReplyList]()
    var verified_reason: String = ""
    var is_pgc_author = false
    var content_rich_span: String = ""
    var user_relation: Int = 0
    var platform: String = ""
    var user_digg = false
    var user_profile_image_url: String = ""
    var text: String = ""
    var attributedContent: NSAttributedString {
        let emojimanager = EmojiManager()
        return emojimanager.showEmoji(content: text, font: UIFont.systemFont(ofSize: 17))
    }
    
    var content = ""
    var user_name: String = ""
    var author_badge = [DongtaiAuthorBadge]()
    var user = DongtaiUser()
    
}

struct DongtaiReplyList: HandyJSON {
    var id: Int = 0
    var is_pgc_author: Int = 0
    var user_digg = false
    var user_auth_info = UserAuthInfo()
    var user_id: Int = 0
    var author_badge = [DongtaiAuthorBadge]()
    var user_profile_image_url: String = ""
    var user_name: String = ""
    var user_verified: Bool = false
    var text: String = ""
    var digg_count: Int = 0
    var content_rich_span: String = ""
}

struct DongtaiAuthorBadge: HandyJSON {
    var open_url: String = ""
    var uri: String = ""
    var url_list = [URLList]()
    var url: String = ""
    var width: Int = 0
    var height: Int = 0
}


struct DongtaiUserDigg: HandyJSON {
    var description: String = ""
    var is_blocking = false
    var is_owner = false
    var is_pgc_author = false
    var avatar_url: String = ""
    var is_blocked = false
    var is_following = false
    var user_auth_info = UserAuthInfo()
    var user_id: Int = 0
    var author_badge = [DongtaiAuthorBadge]()
    var user_relation: Int = 0
    var user_verified = false
    var verified_reason: String = ""
    var is_followed = false
    var screen_name: String = ""
}

struct DongtaiOriginItem: HandyJSON {
    
}

struct URLList: HandyJSON {
    
    var url: String = ""
}

struct LargeImage: HandyJSON {
    var type = ImageType.normal
    var height: CGFloat = 0
    
    var url_list = [URLList]()
    
    var url: NSString = ""
    var urlString: String {
        guard url.hasSuffix(".webp") else { return url as String }
        return url.replacingCharacters(in: NSRange(location: url.length - 5, length: 5), with: ".png")
    }
    
    var width: CGFloat = 0
    
    var uri: String = ""
}

struct ThumbImage: HandyJSON {
    var type = ImageType.normal
    var height: CGFloat = 0
    
    var url_list = [URLList]()
    
    var url: NSString = ""
    var urlString: String {
        guard url.hasSuffix(".webp") else { return url as String }
        return url.replacingCharacters(in: NSRange(location: url.length - 5, length: 5), with: ".png")
    }
    
    var width: CGFloat = 0
    
    var uri: String = ""
    
    /// 宽高比
    var ratio: CGFloat { return width / height }
    
}

struct UGCCutImage: HandyJSON {
    var type = ImageType.normal
    var height: CGFloat = 0
    
    var url_list = [URLList]()
    
    var url: String = ""
    
    var width: CGFloat = 0
    
    var uri: String = ""
}

/// item_type 或 type 是 151  group 有值
struct DongtaiUser: HandyJSON {
    
    var schema: String = ""
    
    var user_verified: Bool = false
    
    var is_friend: Int = 0
    
    var is_blocking: Int = 0
    
    var is_blocked: Int = 0
    
    var user_id: Int = 0
    
    var description: String = ""
    
    var screen_name: String = ""
    
    var avatar_url: String = ""
    
    var verified_reason: String = ""
    
    var id: Int = 0
    var medals = [Any]()
    
    var followers_count: Int = 0
    var followersCount: String { return followers_count.convertString() }
    var followings_count: Int = 0
    var followingsCount: String { return followings_count.convertString() }
    var name: String = ""
    var desc: String = ""
    var is_following: Int = 0
    var verified_content: String = ""
    var user_role_icons = [Any]()
    var remark_name: String = ""
    var user_intro: String = ""
    var profit_user: Bool = false
    var is_verify: Int = 0
    var profit_amount: Int = 0
    var uname: String = ""
    var create_time: Int = 0
    var user_auth_info = UserAuthInfo()
}

enum DongtaiGroupMediaType: Int, HandyJSONEnum {
    case postArticle = 1   // 发布了文章
    case postVideo = 2     // 发布了视频
}

struct DongtaiOriginGroup: HandyJSON {
    
    var item_id_str: String = ""
    
    var media_type: DongtaiGroupMediaType = .postArticle
    
    var show_tips: String = ""
    
    var item_id: Int = 0
    
    var image_url: String = ""
    
    var source: String = ""
    
    var show_origin = false
    
    var open_url: String = ""
    
    var title: String = ""
    
    var group_id: Int = 0
    
    var item_type: Int = 0
    
    var group_id_str: String = ""
    
    var delete = false
    
    var thumb_url: String = ""
    
    var user = DongtaiUser()
    var user_info = DongtaiUser()
    
    var article_url = ""
    
    var has_video = false
    
    var middle_image = OriginGroupMiddleImage()
    
}

struct OriginGroupMiddleImage: HandyJSON {
    var uri: String = ""
    var url: String = ""
    var width = 0
    var height = 0
    
    var url_list = [URLList]()
    
    var type = 0
    
}

struct RepostParam: HandyJSON {
    
    var opt_id: Int = 0
    
    var repost_type: Int = 0
    
    var schema: String = ""
    
    var fw_id_str: String = ""
    
    var opt_id_str: String = ""
    
    var opt_id_type: Int = 0
    
    var fw_id_type: Int = 0
    
    var fw_user_id: Int = 0
    
    var fw_id: Int = 0
    
    var cover_url = ""
    
    var title = ""
}

struct UserDetailArticleCoverImageInfos: HandyJSON {
    
    var mimetype = ""
    
    var image_type = 0
    
    var height = 0
    
    var width = 0
    
    var web_uri = ""
    
    var desc = ""
}

struct UserDetailArticleImageInfo: HandyJSON {
    
}

struct UserDetailArticleImageDetail: HandyJSON {
    
}

struct UserDetailArticleThumbImage: HandyJSON {
    
}

struct UserDetailArticleGroup: HandyJSON {
    
}

struct UserDetailArticleSlaveInfo: HandyJSON {
    
    var id = 0
    
    var slave_source = 1
}

struct UserDetailArticleVerifyDetail: HandyJSON {
    
    var auto = UserDetailArticleVerifyDetailAuto()
    
    var editor = UserDetailArticleVerifyDetailEditor()
    
    var pass_time: String = ""
}

struct UserDetailArticleVerifyDetailAuto: HandyJSON {
    
    var status = 0
}

struct UserDetailArticleVerifyDetailEditor: HandyJSON {
    
    var status = 0
}

struct UserDetailArticleOptionalData: HandyJSON {
    
    var star: String = ""
    
    var label3: String = ""
    
    var praise: String = ""
    
    var video_search_items: String = ""
    
    var elite: String = ""
    
    var pgc_source: String = ""
    
    var originality: String = ""
    
    var has_extern_link: String = ""
}

struct UserDetailArticleVideoInfo: HandyJSON{
    
    var thumb_width: Int = 0
    
    var thumb_height: Int = 0
    
    var sp: String = ""
    
    var vid: String = ""
    
    var video_size = UserDetailArticleVideoSize()
    
    var duration: Int = 0
    
    var thumb_url: String = ""
    
    var vu: String = ""
    
    var video_partner: Int = 0
}

struct UserDetailArticleVideoSize: HandyJSON {
    
    var high = UserDetailArticleVideoSizeResolve()
    var ultra = UserDetailArticleVideoSizeResolve()
    var normal = UserDetailArticleVideoSizeResolve()
}

/// 分辨率
struct UserDetailArticleVideoSizeResolve: HandyJSON {
    var h = 0
    var w = 0
    var file_size = ""
    var subjective_score = ""
}

struct UserDetailArticleImageList: HandyJSON {
    
    var url = ""
    
    var pc_url = ""
}

struct UserDetailWenda: HandyJSON {
    /// cell 的高度
    var cellHeight: CGFloat {
        // 10 + question.titleH! + 5 + 10 + 10 + 5
        return 40 + question.titleH + answer.content_abstract.textHeight
    }
    var answer: UserDetailAnswer!
    var question: UserDetailQuestion!
}

struct UserDetailQuestion: HandyJSON {
    var tag_name: String = ""
    var content = UserDetailQuestionContent()
    var qid: String = ""
    var nice_ans_count: Int = 0
    var tag_id: Int = 0
    var title: String = ""
    var titleH: CGFloat {
        return Calculate.textHeight(text: title, fontSize: 17, width: screenWidth - 30.0) + 5
    }
    
    var create_time: Int = 0
    var normal_ans_count: Int = 0
    var fold_reason = UserDetailQuestionFoldReason()
    var user = DongtaiUser()
}

struct UserDetailQuestionContent: HandyJSON {
    var thumb_image_list = [ThumbImage]()
    var large_image_list = [LargeImage]()
    var pic_uri_list = [PicUriList]()
    var text: String = ""
}

struct PicUriList: HandyJSON {
    var web_uri: String = ""
    var width: Int = 0
    var type: String = ""
    var height: Int = 0
}

struct UserDetailQuestionFoldReason: HandyJSON {
    var open_url: String = ""
    var title: String = ""
}

struct UserDetailAnswer: HandyJSON {
    var content: String = ""
    var bury_count: Int = 0
    var brow_count: Int = 0
    var browCount: String { return brow_count.convertString() }
    var ansid: String = ""
    var show_time: String = ""
    var wap_url: String = ""
    var schema: String = ""
    var is_show_bury: Bool = false
    var title: String = ""
    var is_delete: Int = 0
    var content_abstract = UserDetailAnswerContentAbstract()
    var is_digg: Bool = false
    var is_buryed: Bool = false
    var user = DongtaiUser()
    var digg_count: Int = 0
    var diggCount: String { return digg_count.convertString() }
    var ans_url: String = ""
    
}

struct UserDetailAnswerContentAbstract: HandyJSON {
    var thumb_image_list: [ThumbImage]!
    var text: String = ""
    var textHeight: CGFloat {
        let height = Calculate.textHeight(text: text, fontSize: 16, width: screenWidth - 30.0)
        return height >= 42 ? 42 : height
    }
    
    var large_image_list: [LargeImage]!
}

