## 用户详情-动态

- 请求方式：GET
- 请求地址：/dongtai/list/v14/?
- 请求参数

| 参数     |  类型  | 是否必须 |   描述   |     示例     |
| ------- | -----  | ------ | -------- | ----------- |
| user_id |   Int  |   Y    | 用户的 ID | 53271122458 |
| iid |   Int  |   N    | 用户的 ID | 18145386087 |
| app_name |   Int  |   N    | app 名称 | news_article |
| version_code |   String  |   N    | 版本号 | 6.4.2 |
| device_id       | Int    |  N   | 设备 ID   | 8800803362 |

**返回数据比较多，不再展示。**

## 用户详情-动态-详细内容

- 请求方式：GET
- 请求地址：/ugc/thread/detail/v1/info/?
- 请求地址：/ugc/comment/repost_detail/v1/info/? （动态 cell 如果是评论或引用则调用这个接口）
- 请求参数

| 参数     |  类型  | 是否必须 |   描述   |     示例     |
| ------- | -----  | ------ | -------- | ----------- |
|thread_id|   Int  |   N    | 用户动态模型中的 id_str | 1586368669366286 |

![navigationBar](img/dongtai/dongtai_detail_navigationBar.png)

![header](img/dongtai/dongtai_detail_header.png)

```
{
    "err_no":0,
    "show_repost_entrance":1,
    "comment":{
        "id":1586852090470414,
        "comment_base":{
            "id":1586852090470414,
            "content":"这个是ar眼镜的任务 识别不是难点//@36氪:人脸识别啥时候能解决脸盲问题？感觉可以福泽很多人[机智]",
            "status":1,
            "create_time":1513340083,
            "user":{
                "info":{
                    "user_id":8,
                    "name":"张一鸣",
                    "desc":"观察移动互联网带来的变革",
                    "schema":"sslocal://profile?uid=8",
                    "avatar_url":"http://p3.pstatp.com/thumb/db40005ee1157a3aeb0",
                    "user_auth_info":"{"auth_type": "1", "auth_info": "今日头条创始人兼CEO"}",
                    "user_verified":1,
                    "verified_content":"今日头条创始人兼CEO",
                    "medals":[

                    ],
                    "user_url":"",
                    "remark_name":""
                },
                "relation":{
                    "is_friend":0,
                    "is_following":0,
                    "is_followed":0
                },
                "relation_count":{
                    "followings_count":1489,
                    "followers_count":458290
                },
                "block":{
                    "is_blocking":0,
                    "is_blocked":0
                }
            },
            "action":{
                "forward_count":3,
                "comment_count":14,
                "read_count":525,
                "digg_count":38,
                "bury_count":0,
                "user_digg":0,
                "user_repin":0,
                "user_bury":0,
                "play_count":0
            },
            "content_rich_span":"{"links":[{"start":19,"length":4,"link":"sslocal://profile?uid=3757989448","type":0,"text":""}]}",
            "detail_schema":"sslocal://comment_repost_detail?category_id=&comment_id=1586852090470414&enter_from=click_headline&group_id=1586852090470414&refer=",
            "share":{
                "share_url":"https://weitoutiao.zjurl.cn/ugc/share/comment/1586852090470414/",
                "share_title":"微头条",
                "share_desc":"张一鸣 : 这个是ar眼镜的任务 识别不是难点",
                "share_weibo_desc":"",
                "share_cover":{
                    "uri":"",
                    "url_list":[
                        "http://p3.pstatp.com/thumb/db40005ee1157a3aeb0"
                    ]
                }
            },
            "group_id":1586852090470414,
            "repost_params":{
                "repost_type":212,
                "fw_id":1585727870572557,
                "fw_id_type":2,
                "fw_user_id":0,
                "opt_id":1586852090470414,
                "opt_id_type":1
            }
        },
        "comment_type":212,
        "is_repost":1,
        "show_origin":1,
        "show_tips":"",
        "origin_thread":{
            "thread_id":1585727870572557,
            "content":"开会的挑战是人脸识别 打招呼的时候快速想是谁是谁 和考试一样",
            "title":"",
            "create_time":1512267943,
            "modify_time":0,
            "forum_id":0,
            "status":1,
            "reason":"",
            "share_url":"https://toutiao.com/ugc/share/thread/1585727870572557/?app=&iid=0",
            "content_rich_span":"{"links":[]}",
            "item_type":0,
            "flags":0,
            "rate":0,
            "digg_count":1283,
            "read_count":642390,
            "comment_count":244,
            "user_digg":0,
            "user_repin":0,
            "position":{
                "latitude":0,
                "longitude":0,
                "position":"嘉兴市 桐乡市",
                "city":""
            },
            "forum":{
                "forum_id":0,
                "forum_name":"",
                "status":0,
                "show_et_status":0,
                "banner_url":"",
                "desc":"",
                "talk_count":0,
                "onlookers_count":0,
                "follower_count":0,
                "participant_count":0,
                "avatar_url":"",
                "introdution_url":"",
                "like_time":0,
                "schema":""
            },
            "user":{
                "id":0,
                "user_id":8,
                "name":"张一鸣",
                "screen_name":"张一鸣",
                "desc":"观察移动互联网带来的变革",
                "schema":"sslocal://profile?uid=8&refer=dongtai",
                "avatar_url":"http://p3.pstatp.com/thumb/db40005ee1157a3aeb0",
                "user_auth_info":"{"auth_type": "1", "auth_info": "今日头条创始人兼CEO"}",
                "user_verified":1,
                "verified_content":"今日头条创始人兼CEO",
                "medals":[

                ],
                "user_role_icons":null,
                "is_friend":0,
                "is_following":0,
                "is_blocked":0,
                "is_blocking":0,
                "followers_count":0,
                "followings_count":0,
                "remark_name":""
            },
            "digg_list":null,
            "friend_digg_list":[

            ],
            "large_image_list":[
                {
                    "uri":"large/w960/47770005360b462a6c63",
                    "url":"http://p7.pstatp.com/large/w960/47770005360b462a6c63",
                    "width":1500,
                    "height":1124,
                    "url_list":[
                        {
                            "url":"http://p7.pstatp.com/large/w960/47770005360b462a6c63"
                        },
                        {
                            "url":"http://p4.pstatp.com/large/w960/47770005360b462a6c63"
                        },
                        {
                            "url":"http://p.pstatp.com/large/w960/47770005360b462a6c63"
                        }
                    ],
                    "type":1
                }
            ],
            "thumb_image_list":[
                {
                    "uri":"list/640x360/47770005360b462a6c63",
                    "url":"http://p7.pstatp.com/list/640x360/47770005360b462a6c63",
                    "width":1500,
                    "height":1124,
                    "url_list":[
                        {
                            "url":"http://p7.pstatp.com/list/640x360/47770005360b462a6c63"
                        },
                        {
                            "url":"http://p4.pstatp.com/list/640x360/47770005360b462a6c63"
                        },
                        {
                            "url":"http://p.pstatp.com/list/640x360/47770005360b462a6c63"
                        }
                    ],
                    "type":1
                }
            ],
            "forward_info":{
                "forward_count":163
            },
            "comments":[

            ],
            "user_role":0,
            "talk_type":0,
            "show_comments_num":0,
            "cursor":0,
            "digg_limit":0,
            "show_origin":0,
            "show_tips":"",
            "forward_num":0,
            "schema":"sslocal://thread_detail?fid=6564242300&gd_ext_json=%7B%22category_id%22%3A%22%22%2C%22enter_from%22%3A%22%22%2C%22group_type%22%3A%22forum_post%22%2C%22refer%22%3A%22%22%7D&tid=1585727870572557"
        }
    },
    "ban_face":0
}
```



## 用户详情-文章

- 请求方式：GET
- 请求地址：/dongtai/list/v10/?
- 请求参数

| 参数     |  类型  | 是否必须 |   描述   |     示例     |
| ------- | -----  | ------ | -------- | ----------- |
| user_id |   Int  |   Y    | 用户的 ID | 53271122458 |
|   device_id    |   Int  |   Y    | 用户的 ID | 53271122458 |
|     iid   | Int    |  Y   |    | 53271122458 |

**返回数据和动态类似**

## 用户详情-视频

- 请求方式：GET
- 请求地址：/pgc/ma/?
- 请求参数

| 参数     |  类型  | 是否必须 |   描述   |     示例     |
| ------- | -----  | ------ | -------- | ----------- |
| media_id |   Int  |   Y    | 用户的 ID | 53271122458 |
|   uid    |   Int  |   Y    | 用户的 ID | 53271122458 |
|max_behot_time|   Int  |   Y    | 用户的 ID | 1510025153『秒数』 |
|     as   | Int    |  Y   |    | A1856A615F87457 |
|  output  |   String  |   Y    |  输出 | json |
|  count   |   Int  |   Y    |  输出 | 20 |
| page_type|   Int  |   Y    |  | **0(视频)** |
|   from   |   Int  |   N    | 来源 | user_profile_app |
|  version | Int    |  N   | 版本   | 2 |
|    cp    | Int    |  N   |    | 5A1F871485672E1 |

> 加载更多数据时，`max_behot_time` 的参数是获取到的数据中的最后一条数据的创建时间。

**返回数据比较多，不再展示。**

## 用户详情-问答

- 请求方式：GET
- 请求地址：/wenda/profile/wendatab/brow/?
- 请求参数

| 参数     |  类型  | 是否必须 |   描述   |     示例     |
| ------- | -----  | ------ | -------- | ----------- |
| other_id |   Int  |   Y    | 用户的 ID | 8 |
| format |   Int  |   Y    | 格式 | json |
| from_channel |   Int  |   N    | 来源 | media_channel |
| device_id       | Int    |  N   | 设备 ID   | 8800803362 |

## 用户详情-问答-加载更多

- 请求方式：GET
- 请求地址：/wenda/profile/wendatab/loadmore/?
- 请求参数

| 参数     |  类型  | 是否必须 |   描述   |     示例     |
| ------- | -----  | ------ | -------- | ----------- |
| other_id |   Int  |   Y    | 用户的 ID | 8 |
| format |   Int  |   Y    | 格式 | json |
| cursor       | Int    |  N   | 指示器   | 6241683443818692866 |
| from_channel |   Int  |   N    | 来源 | media_channel |
| device_id       | Int    |  N   | 设备 ID   | 8800803362 |
| count       | Int    |  N   | 加载条数   | 10 |
| offset       | Int    |  N   |    | undefined |

![马未都](img/user_detail/user_detail_wenda.png)

```
{
    "cursor":"6241683443818692866",
    "err_no":0,
    "answer_question":[
        {
            "answer":{
                "show_time":"2017.08.30",
                "content_abstract":{
                    "text":"知识应该分享的 我们只是鼓励创作 。一如既往 我们会覆盖长尾 从阳春白雪到下里巴人 只是要做好匹配。大家别吵了 上来答题吧。",
                    "thumb_image_list":[

                    ],
                    "large_image_list":[

                    ]
                },
                "user":{
                    "is_verify":1,
                    "uname":"张一鸣",
                    "create_time":1325225113,
                    "user_auth_info":"{"auth_type":"1","auth_info":"\u4eca\u65e5\u5934\u6761\u521b\u59cb\u4eba\u517cCEO"}",
                    "user_id":"8",
                    "avatar_url":"http://p3.pstatp.com/thumb/db40005ee1157a3aeb0",
                    "profit_amount":0,
                    "user_intro":"今日头条创始人兼CEO",
                    "profit_user":true,
                    "medals":[

                    ],
                    "schema":"sslocal://profile?uid=8&refer=wenda"
                },
                "ans_url":"https://ic.snssdk.com/wenda/v1/wapanswer/content/?ansid=6459738464865747213",
                "ansid":"6459738464865747213",
                "is_show_bury":false,
                "wap_url":"https://www.wukong.com/answer/6459738464865747213/",
                "is_buryed":false,
                "bury_count":0,
                "title":"",
                "is_delete":0,
                "digg_count":663,
                "content":"<p>知识应该分享的 我们只是鼓励创作 。一如既往 我们会覆盖长尾 从阳春白雪到下里巴人 只是要做好匹配。大家别吵了 上来答题吧。</p>",
                "brow_count":197576,
                "is_digg":false,
                "schema":"sslocal://wenda_detail?gd_ext_json=%7B%22article_type%22%3A%22wenda%22%2C%22author_id%22%3A%228%22%7D&ansid=6459738464865747213&api_param=%7B%22scope%22%3A%22toutiao_wenda%22%2C%22origin_from%22%3A%22click_headline%22%2C%22parent_enter_from%22%3A%22question%22%2C%22enter_from%22%3A%22answer_detail%22%7D"
            },
            "question":{
                "content":{
                    "text":"8月29日下午，有人在朋友圈爆料称，悟空问答签约了300多个大V，罗振宇转发后引发激烈讨论，你怎么看？",
                    "pic_uri_list":[
                        {
                            "width":498,
                            "type":"1",
                            "web_uri":"3831000589f55c3e04ce",
                            "height":263
                        }
                    ],
                    "thumb_image_list":[
                        {
                            "url":"http://p1.pstatp.com/list/r498/3831000589f55c3e04ce",
                            "url_list":[
                                {
                                    "url":"http://p1.pstatp.com/list/r498/3831000589f55c3e04ce"
                                },
                                {
                                    "url":"http://pb3.pstatp.com/list/r498/3831000589f55c3e04ce"
                                },
                                {
                                    "url":"http://pb3.pstatp.com/list/r498/3831000589f55c3e04ce"
                                }
                            ],
                            "uri":"3831000589f55c3e04ce",
                            "height":263,
                            "width":498,
                            "type":1
                        }
                    ],
                    "large_image_list":[
                        {
                            "url":"http://p1.pstatp.com/large/3831000589f55c3e04ce",
                            "url_list":[
                                {
                                    "url":"http://p1.pstatp.com/large/3831000589f55c3e04ce"
                                },
                                {
                                    "url":"http://pb3.pstatp.com/large/3831000589f55c3e04ce"
                                },
                                {
                                    "url":"http://pb3.pstatp.com/large/3831000589f55c3e04ce"
                                }
                            ],
                            "uri":"3831000589f55c3e04ce",
                            "height":263,
                            "width":498,
                            "type":1
                        }
                    ]
                },
                "tag_name":"",
                "create_time":1504001788,
                "normal_ans_count":47,
                "user":{
                    "is_verify":0,
                    "uname":"用户65146878",
                    "create_time":1433388228,
                    "user_auth_info":"",
                    "user_id":"4474648172",
                    "avatar_url":"http://s0.pstatp.com/image/avatar.png",
                    "profit_amount":78,
                    "user_intro":"",
                    "profit_user":true,
                    "medals":[

                    ],
                    "schema":"sslocal://profile?uid=4474648172&refer=wenda"
                },
                "title":"如何看悟空问答签约大V答主？",
                "qid":"6459638491356594445",
                "nice_ans_count":101,
                "tag_id":0,
                "fold_reason":{
                    "open_url":"sslocal://detail?groupid=6293724675596402946",
                    "title":"为什么折叠？"
                }
            }
        }
    ],
    "err_tips":"",
    "api_param":{
        "origin_from":"out_wenda",
        "enter_from":"out_wenda"
    },
    "has_more":false,
    "login_user":{

    },
    "total":7,
    "user_data":{
        "all_brow_cnt_str":"5238万人读过你的回答",
        "is_verify":0,
        "curretn_month_digg_cnt_str":"本月共0人点赞",
        "all_digg_cnt_str":"回答获0人点赞",
        "current_month_brow_cnt":"98万",
        "youzhi_info":[

        ],
        "laomo_info":[

        ],
        "uname":"",
        "all_brow_cnt":"5238万",
        "is_valid":1,
        "current_month_brow_cnt_str":"本月共98万人浏览",
        "user_intro":"",
        "current_month_digg_cnt":"0",
        "all_digg_cnt":"0",
        "user_profile_image_url":"",
        "ming_ren_tang":"",
        "schema":""
    },
    "can_ask":false
}
```
## 用户详情-小视频

- 请求方式：GET
- 请求地址：/user/profile/tabs/ies/?
- 请求参数

| 参数     |  类型  | 是否必须 |   描述   |     示例     |
| ------- | -----  | ------ | -------- | ----------- |
| user_id |   Int  |   Y    | 用户的 ID | 53271122458 |
| iid |   Int  |   N    | 用户的 ID | 18145386087 |
| count |   Int  |   N    |  | 15 |
| device_id       | Int    |  N   | 设备 ID   | 8800803362 |

**数据比较多，不再展示**
