
//
//  NewsModel.swift
//  News
//
//  Created by 杨蒙 on 2018/1/13.
//  Copyright © 2018年 hrscy. All rights reserved.
//

import UIKit
import HandyJSON

/// 新闻数据模型（首页新闻数据，视频新闻数据，小视频，微头条）
struct NewsModel: HandyJSON {
    
    var item_id: Int = 0
    var cell_flag: Int = 0
    var behot_time: Int = 0
    var tip: Int = 0
    var publish_time: Int = 0
    var source_icon_style: Int = 0
    var tag_id: Int = 0
    var media_info = MediaInfo()
    var user_info = NewsUserInfo()
    var preload_web: Int = 0
    var cell_layout_style: Int = 0
    var group_id: Int = 0
    var cell_type: Int = 0
    var log_pb = LogPB()
    var media_name: String = ""
    
    var user_repin: Int = 0
    var display_url: String = ""
    var url: String = ""
    var repin_count: Int = 0
    var repinCount: String? { return read_count.convertString() }
    var stick_label: String = ""
    var show_portrait_article: Bool = false
    var action_list = [Action]()
    var digg_count: Int = 0
    var diggCount: String? { return digg_count.convertString() }
    var has_m3u8_video: Bool = false
    var has_video: Bool = false
    var item_version: Int = 0
    var share_count: Int = 0
    var shareCount: String? { return share_count.convertString() }
    var source: String = ""
    var article_alt_url: String = ""
    var comment_count: Int = 0
    var commentCount: String? { return comment_count.convertString() }
    var cursor: Int = 0
    var video_style: Int = 0
    var show_portrait: Bool = false
    var stick_style: Int = 0
    var ignore_web_transform: Int = 0
    var forward_info = ForwardInfo()
    var is_stick: Bool = false
    var verified_content: String = ""
    var share_url: String = ""
    var bury_count: Int = 0
    var buryCount: String? { return bury_count.convertString() }
    var article_sub_type: Int = 0
    var allow_download: Bool = false
    var tag: String = ""
    var like_count: Int = 0
    var likeCount: String? { return like_count.convertString() }
    var level: Int = 0
    var read_count: Int = 0
    var readCount: String? { return read_count.convertString() }
    var article_type: Int = 0
    var user_verified: Int = 0
    var rid: String = ""
    let emojiManager = EmojiManager()
    
    var title: String = ""
    var abstract: String = ""
    
    var is_subject: Bool = false
    var hot: Int = 0
    var keywords: String = ""
    var source_open_url: String = ""
    var article_url: String = ""
    var ban_comment: Int = 0
    var ugc_recommend = UGCRecommend()
    var label: String = ""
    
    var aggr_type: Int = 0
    var has_mp4_video: Int = 0
    var image_list = [ImageList]()
    var large_image_list = [LargeImageList]()
    
    var middle_image = MiddleImage()
    var video_play_info = VideoPlayInfo()
    var video_detail_info = VideoDetailInfo()
    var raw_data = SmallVideo() //小视频数据
    var video_duration: Int = 0
    var video_id: String = ""
    var videoDuration: String? {
        return video_duration.convertVideoDuration()
    }
    
    // 广告
    var ad_button = ADButton()
    var ad_id = 0
    var ad_label = ""
    var sub_title = ""
    var type = "" // app
    var label_style: Int = 0  // 3 是广告
}

struct ADButton: HandyJSON {
    var description: String = ""
    var download_url: String = ""
    var id: Int = 0
    var web_url: String = ""
    var app_name: String = ""
    var track_url: String = ""
    var ui_type: Int = 0
    var click_track_url: String = ""
    var button_text: String = ""
    var display_type: Int = 0
    var hide_if_exists: Int = 0
    var open_url: String = ""
    var source: String = ""
    var type: String = ""
    var package: String = ""
    var appleid: String = ""
    var web_title: String = ""
}

struct SmallVideo: HandyJSON {
    
    let emojiManager = EmojiManager()
    
    var rich_title: String = ""
    var group_id: Int = 0
    var status = Status()
    var thumb_image_list = [ThumbImageList]()
    var title: String = ""
    var attrbutedText: NSMutableAttributedString? {
        return emojiManager.showEmoji(content: title, font: UIFont.systemFont(ofSize: 17))
    }
    
    var create_time: Int = 0
    var recommand_reason: String = ""
    var first_frame_image_list = [FirstFrameImage]()
    var action = SmallVideoAction()
    var app_download = AppDownload()
    var app_schema: String = ""
    var interact_label: String = ""
    var activity: String = ""
    var large_image_list = [LargeImageList]()
    var group_source: GroupSource = .huoshan
    var share = Share()
    var publish_reason = PublishReason()
    var music = Music()
    var title_rich_span: String = ""
    var user = User()
    var video = Video()
    var label: String = ""
    var label_for_list: String = ""
    var distance: String = ""
    var detail_schema: String = ""
    var item_id: Int = 0
    var animated_image_list = [AnimatedImage]()
    var video_neardup_id: Int = 0
}

/// 小视频类型
enum GroupSource: Int, HandyJSONEnum {
    case huoshan = 16
    case douyin = 19
}

struct SmallVideoAction: HandyJSON {
    var bury_count = 0
    var buryCount: String? { return bury_count.convertString() }
    var comment_count = 0
    var commentCount: String? { return comment_count.convertString() }
    var digg_count = 0
    var diggCount: String? { return digg_count.convertString() }
    var forward_count = 0
    var forwardCount: String? { return forward_count.convertString() }
    var play_count = 0
    var playCount: String? { return play_count.convertString() }
    var read_count = 0
    var readCount: String? { return read_count.convertString() }
    var user_bury = 0
    var userBury: String? { return user_bury.convertString() }
    var user_repin = 0
    var userRepin: String? { return user_repin.convertString() }
    var user_digg = false
}

struct AnimatedImage: HandyJSON {
    var uri: String = ""
    var image_type: Int = 0
    var url_list = [URLList]()
    var url: String = ""
    var width: Int = 0
    var height: Int = 0
}

struct OriginCover: HandyJSON {
    var uri: String = ""
    var url_list = [String]()
}

struct PlayAddr: HandyJSON {
    var uri: String = ""
    var url_list = [String]()
}

struct DownloadAddr: HandyJSON {
    var uri: String = ""
    var url_list = [String]()
}

struct User: HandyJSON {
    var relation_count = RelationCount()
    var relation = Relation()
    var info = Info()
}

struct Info: HandyJSON {
    var medals: String = ""
    var avatar_url: String = ""
    var schema: String = ""
    var user_auth_info: String = ""
    var user_id: Int = 0
    var desc: String = ""
    var ban_status: Bool = false
    var user_verified = false
    var verified_content: String = ""
    var media_id: String = ""
    var name: String = ""
    var user_decoration: String = ""
}

struct Relation: HandyJSON {
    var is_followed = false
    var is_friend = false
    var is_following = false
    var remark_name: String = ""
}

struct RelationCount: HandyJSON {
    var followings_count: Int = 0
    var followingsCount: String? { return followings_count.convertString() }
    var followers_count: Int = 0
    var followersCount: String? { return followers_count.convertString() }
}

struct Music: HandyJSON {
    var author: String = ""
    var music_id: Int = 0
    var title: String = ""
    var cover_large: String = ""
    var album: String = ""
    var cover_medium: String = ""
    var cover_thumb: String = ""
    var cover_hd: String = ""
}

struct PublishReason: HandyJSON {
    var noun: String = ""
    var verb: String = ""
}

struct AppDownload: HandyJSON {
    var flag: Int = 0
    var text: String = ""
}

struct Share: HandyJSON {
    var share_title: String = ""
    var share_url: String = ""
    var share_weibo_desc: String = ""
    var share_cover: String = ""
    var share_desc: String = ""
}

struct FirstFrameImage: HandyJSON {
    var uri: String = ""
    var image_type: Int = 0
    var url_list = [URLList]()
    var url: NSString = ""
    var urlString: String? {
        guard url.hasSuffix(".webp") else { return url as String }
        return url.replacingCharacters(in: NSRange(location: url.length - 5, length: 5), with: ".png")
    }
    var width: Int = 0
    var height: Int = 0
}

struct Status: HandyJSON {
    var allow_share: Bool = false
    var allow_download: Bool = false
    var allow_comment: Bool = false
    var is_delete: Bool = false
}

struct VideoDetailInfo: HandyJSON {
    var video_preloading_flag: Int = 0
    var direct_play: Int = 0
    var group_flags: Int = 0
    var video_url = [VideoURL]()
    var detail_video_large_image = DetailVideoLargeImage()
    var video_third_monitor_url: String = ""
    var video_watching_count: Int = 0
    var videoWatchingCount: String? { return video_watching_count.convertString() }
    var video_id: String = ""
    var video_watch_count: Int = 0
    var videoWatchCount: String? { return video_watch_count.convertString() }
    var video_type: Int = 0
    var show_pgc_subscribe: Int = 0
}

struct DetailVideoLargeImage: HandyJSON {
    var height: Int = 0
    var url_list: [URLList]!
    var url: NSString = ""
    var urlString: String? {
        guard url.hasSuffix(".webp") else { return url as String }
        return url.replacingCharacters(in: NSRange(location: url.length - 5, length: 5), with: ".png")
    }
    var width: Int = 0
    var uri: String = ""
    
}

struct VideoURL: HandyJSON {
    
}

struct MiddleImage: HandyJSON {
    
    var height: CGFloat = 0
    
    var url_list = [URLList]()
    
    var url: String = ""
    
    var width: CGFloat = 0
    
    var uri: String = ""
    /// 宽高比
    var ratio: CGFloat? { return width / height }
    
}

struct ImageList: HandyJSON {
    
    var height: CGFloat = 0
    
    var url_list = [URLList]()
    
    var url: String = ""
    
    var width: CGFloat = 0
    
    var uri: String = ""
    /// 宽高比
    var ratio: CGFloat? { return width / height }
    
}

struct NewsUserInfo: HandyJSON {
    var follow: Bool = false
    var name: String = ""
    var user_verified: Bool = false
    var verified_content: String = ""
    var user_id: Int = 0
    var description: String = ""
    var avatar_url: String = ""
    var follower_count: Int = 0
    var followerCount: String? { return follower_count.convertString() }
}

struct ForwardInfo: HandyJSON {
    var forward_count: Int = 0
    var forwardCount: String? { return forward_count.convertString() }
}

struct UGCRecommend: HandyJSON {
    var activity = ""
    var reason = ""
}

struct MediaInfo: HandyJSON {
    var follow: Bool = false
    var is_star_user: Bool = false
    var recommend_reason: String = ""
    var user_verified: Bool = false
    var media_id: Int = 0
    var verified_content: String = ""
    var user_id: Int = 0
    var recommend_type: Int = 0
    var avatar_url: String = ""
    var name: String = ""
}

struct LogPB: HandyJSON {
    var impr_id: String = ""
}

struct Extra: HandyJSON {
    
}

struct Action: HandyJSON {
    var extra = Extra()
    var action: Int = 0
    var desc: String = ""
}

struct FilterWord: HandyJSON {
    var id: String = ""
    var name: String = ""
    var is_selected: Bool = false
}

struct Video: HandyJSON {
    var logo_name: String = ""
    var coded_format: String = ""
    var vwidth: Int = 0
    var socket_buffer: Int = 0
    var preload_interval: Int = 0
    var preload_size: Int = 0
    var preload_min_step: Int = 0
    var bitrate: Int = 0
    var size: Int = 0
    /// 用 base 64 加密的视频真实地址
    var main_url: String = ""
    var mainURL: String? {
        let decodeData = Data(base64Encoded: main_url, options: Data.Base64DecodingOptions(rawValue: 0))
        return String(data: decodeData!, encoding: .utf8)
    }
    
    var user_video_proxy: Int = 0
    var backup_url_1: String = ""
    var preload_max_step: Int = 0
    var definition: String = ""
    var vheight: Int = 0
    var vtype: String = ""
    var height: Int = 0
    var download_addr = DownloadAddr()
    var play_addr = PlayAddr()
    var origin_cover = OriginCover()
    var width: Int = 0
    var duration: CGFloat = 0.0
    var video_id: String = ""
    var ratio: String = ""
}

struct VideoList: HandyJSON {
    var video_1 = Video()
    var video_2 = Video()
    var video_3 = Video()
}

struct DnsInfo: HandyJSON {
    
}

struct OriginalPlayURL: HandyJSON {
    var main_url: String = ""
    var backup_url: String = ""
}

struct VideoPlayInfo: HandyJSON {
    var status: Int = 0
    var dns_info = DnsInfo()
    var enable_ssl: Bool = false
    var poster_url: String = ""
    var message: String = ""
    var video_list = VideoList()
    var original_play_url = OriginalPlayURL()
    var video_duration: Int = 0
    var videoDuration: String? {
        return video_duration.convertVideoDuration()
    }
    
    var validate: String = ""
}


