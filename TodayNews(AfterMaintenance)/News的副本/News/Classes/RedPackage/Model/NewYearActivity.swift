//
//  NewYearActivity.swift
//  News
//
//  Created by 杨蒙 on 2018/2/5.
//  Copyright © 2018年 hrscy. All rights reserved.
//

import HandyJSON

struct NewYear: HandyJSON {
    
    var activity_list = [NewYearActivity]()
    var moreActivitiesLabel = ""
    var more_activities = [MoreActivity]()
    
    var title = ""
    var type = 0
}

struct NewYearActivity: HandyJSON {
    var background_image: String = ""
    var share_info: String = ""
    var id: Int = 0
    var rain_next_image_url: String = ""
    var content_image_url: String = ""
    var sub_title: String = ""
    var btn_open_url: String = ""
    var btn_style: String = ""
    var activity_title: String = ""
    var btn_label: String = ""
    var can_completed_task_count: Int = 0
    var flag: Int = 0
    var image: String = ""
    var rain_title_image_url: String = ""
    var introduce_url: String = ""
    var card_data = CardData()
    var introduce: String = ""
    var content: String = ""
    var title = ""
    
}

struct CardData: HandyJSON {
    var new_year_count: Int = 0
    var available_card_count: Int = 0
    var bonus_win: String = ""
    var winner_count: Int = 0
    var win_rank: Int = 0
    var cards_status: Int = 0
    var dest_card_list: String = ""
    var bonus_init: String = ""
    var ask_info: String = ""
    var bonus_top_user: String = ""
    var card_gold_user_limit: Int = 0
    var drop_info: String = ""
}

struct ShareInfo: HandyJSON {
    var share_title = ""
    var target_url = ""
    var tt_url = ""
    var image_url = ""
    var description = ""
    var tt_url_extra = ""
    var token = ""
    var type = ""
    
}

struct Shengxiao: HandyJSON {
    var title: String = ""
    var big: String = ""
    var small = ""
}

struct MoreActivity: HandyJSON {
    
}

/// 增加抽卡次数
struct NewYearTask: HandyJSON {
    
    var schema_url = ""
    var task_bonus_count = ""
    var task_desc = ""
    var task_id = ""
    var task_status = ""
    var task_sub_desc = ""
}
