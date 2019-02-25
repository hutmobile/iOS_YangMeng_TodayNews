//
//  File.swift
//  News
//
//  Created by 杨蒙 on 2018/1/9.
//  Copyright © 2018年 hrscy. All rights reserved.
//

import UIKit
import HandyJSON

struct Wenda: HandyJSON {
    var err_no = 0
    var err_tips = ""
    var offset = 0
    var api_param = ""
    var ans_list = [WendaAnswer]()
    var has_more = false
    var can_answer = false
    var related_question_banner_type = 0
    var related_question_reason_url = ""
    var candidate_invite_user = CandidateInviteUser()
    var module_list = [WendaModule]()
    var module_count = 0
    var question_header_content_fold_max_count = 0
    var show_format = WendaShowFormat()
    var repost_params = WendaRepostParam()
    var question = WendaQuestion()
    var has_profit: Bool = false
}

struct CandidateInviteUser: HandyJSON {
    
}

struct WendaAnswer: HandyJSON {
    
    var cellHeight: CGFloat? {
        // 60 + 5 + textH + 5 + imageH + 5 + 20 + 5
        var height: CGFloat = 100 + content_abstract.textH!
        if content_abstract.hasImage {
            height += 166.0
        }
        return height
    }
    
    let emojiManager = EmojiManager()
    
    var attributedString: NSMutableAttributedString {
        return emojiManager.showEmoji(content: content_abstract.text, font: UIFont.systemFont(ofSize: 18))
    }
    
    var user = WendaUser()
    var comment_count: Int = 0
    var commentCount: String { return comment_count.convertString() }
    var bury_count: Int = 0
    var buryCount: String { return bury_count.convertString() }
    var brow_count: Int = 0
    var browCount: String { return brow_count.convertString() }
    var ansid: String = ""
    var comment_schema: String = ""
    var schema: String = ""
    var share_data: WendaShareData!
    var is_show_bury: Bool = false
    var title: String = ""
    var forward_count: Int = 0
    var content_abstract: WendaContentAbstract!
    var is_digg: Bool = false
    var is_buryed: Bool = false
    var create_time: TimeInterval = 0
    var createTime: String { return create_time.convertString() }
    var digg_count: Int = 0
    var diggCount: String { return digg_count.convertString() }
    var ans_url: String = ""
}

struct WendaFoldReason: HandyJSON {
    var open_url: String = ""
    var title: String = ""
}

struct WendaConcernTag: HandyJSON {
    var concern_id: String = ""
    var name: String = ""
    var schema: String = ""
}

struct WendaRepostParam: HandyJSON {
    var repost_type: Int = 0
    var opt_id: Int = 0
    var schema: String = ""
    var cover_url: String = ""
    var title: String = ""
    var fw_id_type: Int = 0
    var opt_id_type: Int = 0
    var fw_id: Int = 0
    var fw_user_id: Int = 0
}

struct WendaModule: HandyJSON {
    var text: String = ""
    var day_icon_url: String = ""
    var icon_type: Int = 0
    var schema: String = ""
    var night_icon_url: String = ""
    
}

struct WendaShowFormat: HandyJSON {
    var font_size: String = ""
    var answer_full_context_color: Int = 0
    var show_module: Int = 0
}

struct WendaContentAbstract: HandyJSON {
    
    var hasImage: Bool {
        return thumb_image_list.count != 0
    }
    
    var thumb_image_list = [ThumbImage]()
    var large_image_list = [LargeImage]()
    var video_list: [WendaVideo]!
    var text: String = ""
    var textH: CGFloat? {
        // 一行的高度
        let lineHeight: CGFloat = 26.48046875
        // 为富文本添加字体属性
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = 5
        let height = (text as NSString).boundingRect(with: CGSize(width: screenWidth - 30, height: CGFloat(MAXFLOAT)), options: [.usesLineFragmentOrigin, .usesFontLeading], attributes: [.font: UIFont.systemFont(ofSize: 18), .paragraphStyle: paragraphStyle], context: nil).height
        if thumb_image_list.count == 0 { // 没有图片 26.5 * 6 = 160
            let lineHeightX6 = lineHeight * 6
            return height > lineHeightX6 ? lineHeightX6 : height
        } else { // 有图片 26.5 * 4
            let lineHeightX4 = lineHeight * 4
            return height > lineHeightX4 ? lineHeightX4 : height
        }
    }
    
}

struct WendaVideo: HandyJSON {
    
}

struct WendaUser: HandyJSON {
    var schema: String = ""
    var total_digg: Int = 0
    var totalDigg: String { return total_digg.convertString() }
    var user_intro: String = ""
    var is_following = false
    var is_verify = false
    var total_answer: Int = 0
    var uname: String = ""
    var user_id: String = ""
    var create_time: TimeInterval = 0
    var createTime: String { return create_time.convertString() }
    var avatar_url: String = ""
    var user_auth_info = UserAuthInfo()
    
}

struct WendaQuestion: HandyJSON {
    
    /// 没有展开的高度
    var foldHeight: CGFloat? {
        // 10 + titleH! + 10 + 20 + 10 + thumbHeight + 10 + 20 + 10 + 41
        return 131 + titleH! + content.thumbHeight!
    }
    
    /// 展开以后的高度
    var unfoldHeight: CGFloat? {
        // 10 + titleH! + 10 + content.textH! + 10 + thumbHeight + 10 + 20 + 10 + 41
        return 111.0 + titleH! + content.textH! + content.thumbHeight!
    }
    
    var can_edit: Bool = false
    var content = QuestionContent()
    
    var qid: String = ""
    var post_answer_url: String = ""
    var concern_tag_list = [WendaConcernTag]()
    var fold_reason = WendaFoldReason()
    var follow_count: Int = 0
    var followCount: String { return follow_count.convertString() }
    var is_follow: Bool = false
    var can_delete: Bool = false
    var share_data = WendaShareData()
    var show_edit: Bool = false
    var title: String = ""
    var titleH: CGFloat? {
        return title.textHeight(fontSize: 18, width: screenWidth - 30)
    }
    
    var show_delete: Bool = false
    var create_time: TimeInterval = 0
    var createTime: String { return create_time.convertString() }
    var nice_ans_count: Int = 0
    var normal_ans_count: Int = 0
    var answerCount: String { return (nice_ans_count + normal_ans_count).convertString() }
    
    var user = WendaUser()
}

struct QuestionContent: HandyJSON {
    /// 图片的高度
    var thumbHeight: CGFloat? {
        guard thumb_image_list.count != 0 else {
            return 0
        }
        return thumb_image_list.first!.ratio * 166
    }
    
    var thumb_image_list = [ThumbImage]()
    var text: String = ""
    var textH: CGFloat? {
        return text.textHeight(fontSize: 16, width: screenWidth - 30)
    }
    var large_image_list = [LargeImage]()
}

struct WendaShareData: HandyJSON {
    var content: String = ""
    var image_url: String = ""
    var share_url: String = ""
    var title: String = ""
}

