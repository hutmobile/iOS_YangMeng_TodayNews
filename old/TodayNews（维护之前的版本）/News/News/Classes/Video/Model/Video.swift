//
//  RealVideo.swift
//  News
//
//  Created by 杨蒙 on 2018/1/17.
//  Copyright © 2018年 hrscy. All rights reserved.
//

import HandyJSON

struct RealVideo: HandyJSON {
    var status: Int = 0
    var user_id: String = ""
    var video_id: String = ""
    var validate: Int = 0
    var enable_ssl: Bool = false
    var video_duration: Float = 0.0
    var video_list = VideoList()
}

struct VideoList: HandyJSON {
    var video_1 = Video()
    var video_2 = Video()
    var video_3 = Video()
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
    var mainURL: String {
        let decodeData = Data(base64Encoded: main_url, options: Data.Base64DecodingOptions(rawValue: 0))
        return String(data: decodeData!, encoding: .utf8)!
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

struct VideoDetail: HandyJSON {
    var related_video_toutiao = [NewsModel]()
    var context: String = ""
    var user_bury: Int = 0
    var log_pb = LogPB()
    var ordered_info = [OrderedInfo]()
    var bury_count: Int = 0
    var buryCount: String { return bury_count.convertString() }
    var ignore_web_transform: Int = 0
    var url: String = ""
    var ad = AD()
    var labels = [VideoDetailLabel]()
    var like_count: Int = 0
    var likeCount: String { return like_count.convertString() }
    var ban_digg: Int = 0
    var filter_words = [FilterWord]()
    var danmaku_count: Int = 0
    var info_flag: Int = 0
    var h5_extra = H5Extra()
    var script: String = ""
    var ug_install_aid: Int = 0
    var user_digg: Int = 0
    var source: String = ""
    var related_wenda = [RelatedWenda]()
    var ban_bury: Int = 0
    var comment_count: Int = 0
    var commentCount: String { return comment_count.convertString() }
    var digg_count: Int = 0
    var diggCount: String { return digg_count.convertString() }
    var group_flags: Int = 0
    var is_wenda: Bool = false
    var user_info = NewsUserInfo()
    var user_repin: Int = 0
    var like_desc: String = ""
    var ban_danmaku: Bool = false
    var detail_show_flags: Int = 0
    var display_url: String = ""
    var group_id: Int = 0
    var media_info = MediaInfo()
    var user_like: Int = 0
    var read_count: Int = 0
    var readCount: String { return read_count.convertString() }
    var share_url: String = ""
    var video_label_html: String = ""
    var video_watch_count: Int = 0
    var repin_count: Int = 0
    var repinCount: String { return read_count.convertString() }
    var ban_comment: Int = 0
    var related_video_section: Int = 0
}

struct OrderedInfo: HandyJSON {
    var ad_data: String = ""
    var name: String = ""
}

struct AD: HandyJSON {
    var mixed = Mixed()
    var is_preview: Bool = false
    var app = App()
}

struct App: HandyJSON {
    var log_extra: String = ""
    var open_url: String = ""
    var os_type: String = ""
    var source: String = ""
    var title: String = ""
    var app_name: String = ""
    var image = AppImage()
    var button_text: String = ""
    var image_mode: Int = 0
    var appleid: String = ""
    var click_track_url_list = [ClickTrackURL]()
    var track_url_list = [TrackURL]()
    var click_track_url: String = ""
    var track_url: String = ""
    var download_url: String = ""
    var type: String = ""
    var id: Int = 0
    var label: String = ""
    var app_size: String = ""
    var filter_words = [FilterWord]()
    var show_dislike: Int = 0
    var download_count: String = ""
    var rate: Int = 0
    var ad_id: Int = 0
    var app_icon: String = ""
    var display_subtype: Int = 0
    var description: String = ""
}

struct TrackURL: HandyJSON {
    
}

struct ClickTrackURL: HandyJSON {
    
}

struct AppImage: HandyJSON {
    var url_list = [URLList]()
    var height: Int = 0
    var uri: String = ""
    var width: Int = 0
}

struct Mixed: HandyJSON {
    var display_subtype: Int = 0
    var id: Int = 0
    var label: String = ""
    var log_extra: String = ""
    var show_dislike: Int = 0
    var image_height: Int = 0
    var track_url: String = ""
    var track_url_list = [TrackURL]()
    var web_title: String = ""
    var button_text: String = ""
    var image_width: Int = 0
    var is_tongtou_ad: Bool = false
    var open_url: String = ""
    var image: String = ""
    var image_list = [ThumbImage]()
    var source_name: String = ""
    var title: String = ""
    var type: String = ""
    var web_url: String = ""
    var filter_words = [FilterWord]()
}

struct Media: HandyJSON {
    var pgc_custom_menu: String = ""
    var user_auth_info: String = ""
    var user_verified: Bool = false
    var id: Int = 0
    var can_be_praised: Bool = false
    var description: String = ""
    var user_decoration: String = ""
    var avatar_url: String = ""
    var name: String = ""
    
}

struct VideoDetailLabel: HandyJSON {
    var link: String = ""
    var word: String = ""
}

struct RelatedWenda: HandyJSON {
    
}

struct SpecialColumn: HandyJSON {
    
}

struct H5Extra: HandyJSON {
    var is_subscribed: Bool = false
    var have_red_pack: Int = 0
    var is_original: Bool = false
    var media: Media!
}

