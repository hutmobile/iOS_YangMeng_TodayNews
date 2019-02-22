//
//  UserDetail.swift
//  News
//
//  Created by 杨蒙 on 2017/11/30.
//  Copyright © 2017年 hrscy. All rights reserved.
//

import Foundation
import HandyJSON

struct UserDetail: HandyJSON {
    
    var screen_name: String = "" // 考研张雪峰
    var name: String = "" // 考研张雪峰
    
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
    
    var description: NSString = "" // 考研规划“神嘴”张雪峰老师。
    var descriptionHeight: CGFloat? {
        // screeenWidth - (15 + 15 + 40 + 5)
        return description.boundingRect(with: CGSize(width: screenWidth - 30.0, height: CGFloat(MAXFLOAT)), options: .usesLineFragmentOrigin, attributes: [.font: UIFont.systemFont(ofSize: 13)], context: nil).size.height + 5.0
    }
    
    
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
    var followersCount: String? {
        guard followers_count >= 10000 else {
            return String(describing: followers_count)
        }
        return String(format: "%.1f万", Float(followers_count) / 10000.0)
    }
    var followings_count: Int = 0 // 关注 3
    var followingsCount: String? {
        guard followings_count >= 10000 else {
            return String(describing: followings_count)
        }
        return String(format: "%.1f万", Float(followings_count) / 10000.0)
    }
    
    var media_type: Int = 0
    
    var area: String = ""
    
    var user_auth_info: String = ""
    
    var userAuthInfo: UserAuthInfo? {
        return UserAuthInfo.deserialize(from: user_auth_info)
    }
}

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

struct TopTab: HandyJSON {
    
    var url: String = ""
    
    var is_default: Bool = false
    
    var show_name: String = "" // 动态 文章 视频 问答
    
    var type: String = ""
    
}

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
    
    var user_auth_info: String = ""
    
    var userAuthInfo: UserAuthInfo? {
        return UserAuthInfo.deserialize(from: user_auth_info)
    }
    
    var type: Int = 0
}

/// 相关推荐模型
struct UserCard: HandyJSON {
    
    var name: String = ""
    
    var recommend_reason: String = ""
    
    var recommend_type: Int = 2048
    
    var user: UserCardUser = UserCardUser()
    
}

/// 相关推荐的用户模型
struct UserCardUser: HandyJSON {
    
    var info: UserCardUserInfo = UserCardUserInfo()
    
    var relation: UserCardUserRelation = UserCardUserRelation()
    
}

/// 相关推荐的用户信息模型
struct UserCardUserInfo: HandyJSON {
    
    var name: String = ""
    
    var user_id: Int = 0
    
    var avatar_url: String = ""
    
    var desc: String = ""
    
    var schema: String = ""
    
    var user_auth_info: String = ""
    
    var userAuthInfo: UserAuthInfo? {
        return UserAuthInfo.deserialize(from: user_auth_info)
    }
}

/// 相关推荐的用户是否关注模型
struct UserCardUserRelation: HandyJSON {
    
    var is_followed: Bool = false
    
    var is_following: Bool = false
    
    var is_friend: Bool = false
    
}

/// 用户详情 动态模型
struct UserDetailDongtai: HandyJSON {
    
    var cellHeight = 0
    
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
    
    var user_digg: Int = 0
    
    var create_time: Int = 0
    
    var id_str: String = ""
    
    var display_lines: Int = 0
    
    var comment_visible_count: Int = 0
    
    var comment_count: Int = 0
    var commentCount: String? {
        guard comment_count >= 10000 else {
            return String(describing: comment_count)
        }
        return String(format: "%.1f万", Float(comment_count) / 10000.0)
    }
    
    var digg_count: Int = 0
    var diggCount: String? {
        guard digg_count >= 10000 else {
            return String(describing: digg_count)
        }
        return String(format: "%.1f万", Float(digg_count) / 10000.0)
    }
    
    var forward_num: Int = 0
    
    var forward_count: Int = 0
    var forwardCount: String? {
        guard forward_count >= 10000 else {
            return String(describing: forward_count)
        }
        return String(format: "%.1f万", Float(forward_count) / 10000.0)
    }
    
    var is_pgc_author: Int = 0
    
    var comment_type: Int = 0 // 212 同 item_type=109
    var cell_type: Int = 0
    var type: Int = 0
    var item_type: Int = 0   //  109 有引用
    
    var digg_limit: Int = 0
    
    var rich_content: String = ""
    
    var device_type: Int = 0
    
    var content_unescape: String = ""
    var content: String = ""
    
    var delete: Int = 0
    
    var modify_time: Int = 0
    
    var reason: String = ""
    
    var read_count: Int = 0
    var readCount: String? {
        guard read_count >= 10000 else {
            return String(describing: read_count)
        }
        return String(format: "%.1f万", Float(read_count) / 10000.0)
    }
    
    var share_url: String = ""
    
    var comment_id: Int = 0
    
    var user = DongtaiUser()
    
    var position = DongtaiPosition()
    
    var origin_group = DongtaiOriginGroup()
    
    var origin_thread = DongtaiOriginThread()
    
    var origin_item = DongtaiOriginItem()
    
    var talk_item = DongtaiTalkItem()
    
    var digg_list = [DongtaiDiggList]()
    
    var comments = [DongtaiComment]()
    
    var repost_params = DongtaiRepostParam()
    
    var thumb_image_list = [DongtaiThumbImageList]()
    var ugc_cut_image_list = [DongtaiUGCCutImageList]()
    var large_image_list = [DongtaiLargeImageList]()
}

struct DongtaiPosition: HandyJSON {
    
    var position: String = ""
}

/// 引用内容
struct DongtaiOriginThread: HandyJSON {
    
    var cellHeight = 0
    
    var ugc_cut_image_list = [DongtaiUGCCutImageList]()
    
    var content_unescape: String = ""
    
    var talk_item: DongtaiTalkItem!
    
    var content: String = ""
    
    var thread_id: Int = 0
    
    var show_tips: String = ""
    
    var position = DongtaiPosition()
    
    var thread_id_str: String = ""
    
    var rich_content: String = ""
    
    var show_origin: Int = 0
    
    var open_url: String = ""
    
    var large_image_list = [DongtaiLargeImageList]()
    
    var delete: Int = 0
    
    var thumb_image_list = [DongtaiThumbImageList]()
    
    var brand_info: String = ""
    
    var user = DongtaiUser()
    
    var status: Int = 0
    
    var content_rich_span: String = ""
}

struct DongtaiTalkItem: HandyJSON {
    
}

struct DongtaiComment: HandyJSON {
    
}

struct DongtaiDiggList: HandyJSON {
    
}

struct DongtaiOriginItem: HandyJSON {
    
}

struct DongtailURLList: HandyJSON {
    
    var url: String = ""
}

struct DongtaiLargeImageList: HandyJSON {
    
    var height: Int = 0
    
    var url_list = [DongtailURLList]()
    
    var url: String = ""
    
    var width: Int = 0
    
    var uri: String = ""
}

struct DongtaiThumbImageList: HandyJSON {
    
    var height: Int = 0
    
    var url_list = [DongtailURLList]()
    
    var url: String = ""
    
    var width: Int = 0
    
    var uri: String = ""
}

struct DongtaiUGCCutImageList: HandyJSON {
    
    var height: Int = 0
    
    var url_list = [DongtailURLList]()
    
    var url: String = ""
    
    var width: Int = 0
    
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
}

struct DongtaiOriginGroup: HandyJSON {
    
    var item_id_str: String = ""
    
    var media_type: Int = 0
    
    var show_tips: String = ""
    
    var item_id: Int = 0
    
    var image_url: String = ""
    
    var source: String = ""
    
    var show_origin: Int = 0
    
    var open_url: String = ""
    
    var title: String = ""
    
    var group_id: Int = 0
    
    var item_type: Int = 0
    
    var group_id_str: String = ""
    
    var delete: Int = 0
    
    var thumb_url: String = ""
}

struct DongtaiRepostParam: HandyJSON {
    
    var opt_id: Int = 0
    
    var repost_type: Int = 0
    
    var schema: String = ""
    
    var fw_id_str: String = ""
    
    var opt_id_str: String = ""
    
    var opt_id_type: Int = 0
    
    var fw_id_type: Int = 0
    
    var fw_user_id: Int = 0
    
    var fw_id: Int = 0
}

/// 用户详情 文章
struct UserDetailArticle: HandyJSON {
    
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
    var digg_count: Int = 0
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
    var middle_image: String = ""
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
    var comment_count: Int = 0
    var url: String = ""
    var create_time: Int = 0
    var region: Int = 0
    var str_item_id: String = ""
    var comments_count: String = ""
    var flags: Int = 0
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
    var modify_time: Int = 0
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
    
    var star: String!
    
    var label3: String!
    
    var praise: String!
    
    var video_search_items: String!
    
    var elite: String!
    
    var pgc_source: String!
    
    var originality: String!
    
    var has_extern_link: String!
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





