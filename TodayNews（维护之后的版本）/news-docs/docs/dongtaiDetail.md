## 用户详情-动态详情

## 用户详情-动态-评论

- 请求方式：POST
- 请求地址：/article/v2/tab_comments/?
- 请求参数(body 体)

| 参数     |  类型  | 是否必须 |   描述   |     示例     |
| ------- | -----  | ------ | -------- | ----------- |
|offset|   Int  |   Y    |  | 0 |
|forum_id|   Int  |   Y    |  | 6564242300 |
|group_id|   Int  |   Y    |  | 传 thread_id 吧 |
|count|   Int  |   Y    |  | 20 |
|item_id|   Int  |   N    |  | 0 |
|group_type|   Int  |   N    |  | 2 |

- 请求方式：GET
- 请求地址：/2/comment/v1/reply_list/?  （动态 cell 如果是评论或引用则调用这个接口）

| 参数     |  类型  | 是否必须 |   描述   |     示例     |
| ------- | -----  | ------ | -------- | ----------- |
|offset|   Int  |   Y    |  | 0 |
|id|   Int  |   Y    |  | 6564242300 |
|count|   Int  |   Y    |  | 20 |

![header](img/dongtai/dongtai_detail_comment.png)

```
{
    "ban_face":false,
    "message":"success",
    "data":{
        "has_more":false,
        "total_count":14,
        "stick_total_number":0,
        "offset":14,
        "stick_has_more":false,
        "data":[
            {
                "content":"张总技术出身么？",
                "create_time":1513447845,
                "is_owner":false,
                "user":{
                    "is_followed":null,
                    "description":"武汉高校圈子为你提供武汉高校一手资讯学习交友尽在武汉高校圈子",
                    "screen_name":"武汉高校圈子",
                    "is_following":null,
                    "is_blocked":null,
                    "user_verified":true,
                    "user_auth_info":"{"auth_type": "0", "auth_info": "武汉校园资讯达人"}",
                    "is_blocking":null,
                    "is_pgc_author":false,
                    "user_id":5977178102,
                    "name":"武汉高校圈子",
                    "author_badge":[

                    ],
                    "user_relation":0,
                    "verified_reason":"武汉校园资讯达人",
                    "avatar_url":"http://p1.pstatp.com/thumb/78f001f66a18434af9e"
                },
                "text":"张总技术出身么？",
                "user_digg":false,
                "id":1586965088097293,
                "content_rich_span":"",
                "digg_count":3
            },
            {
                "content":"哈哈，人脸识别[送心][送心]",
                "create_time":1513343023,
                "is_owner":false,
                "user":{
                    "is_followed":null,
                    "description":"资讯、美食、旅游、心情、吃喝玩乐大小事情，一网搜罗！",
                    "screen_name":"龟话",
                    "is_following":null,
                    "is_blocked":null,
                    "user_verified":false,
                    "user_auth_info":"",
                    "is_blocking":null,
                    "is_pgc_author":false,
                    "user_id":4751518306,
                    "name":"龟话",
                    "author_badge":[

                    ],
                    "user_relation":0,
                    "verified_reason":"",
                    "avatar_url":"http://p3.pstatp.com/thumb/438900033d3b90e713d7"
                },
                "text":"哈哈，人脸识别[送心][送心]",
                "user_digg":false,
                "id":1586855174661198,
                "content_rich_span":"",
                "digg_count":1
            },
            {
                "content":"老大好[大笑]",
                "create_time":1513341603,
                "is_owner":false,
                "user":{
                    "is_followed":null,
                    "description":"分享最潮流美食，管理资讯，厨师秘籍，厨师界关注最多的自媒体！",
                    "screen_name":"名厨汇",
                    "is_following":null,
                    "is_blocked":null,
                    "user_verified":true,
                    "user_auth_info":"{"auth_type": "0", "auth_info": "美食达人"}",
                    "is_blocking":null,
                    "is_pgc_author":false,
                    "user_id":2747621738,
                    "name":"名厨汇",
                    "author_badge":[

                    ],
                    "user_relation":0,
                    "verified_reason":"美食达人",
                    "avatar_url":"http://p1.pstatp.com/thumb/36410009bb33cd43d034"
                },
                "text":"老大好[大笑]",
                "user_digg":false,
                "id":1586853684609053,
                "content_rich_span":"",
                "digg_count":1
            }
        ],
        "id":1586852090470414,
        "hot_comments":[

        ]
    },
    "stable":true
}
```

## 用户详情-动态-评论

- 请求方式：GET
- 请求地址：/2/comment/v1/reply_list/? （动态 cell 如果是评论或引用则调用这个接口）
- 请求参数

| 参数     |  类型  | 是否必须 |   描述   |     示例     |
| ------- | -----  | ------ | -------- | ----------- |
|id       |   Int  |   Y    |  | 1585685157805070 |
|count|   Int  |   Y    |  | 20 |
|offset|   Int  |   N    |  | 0 |

```
{
    "ban_face": false,
    "message": "success",
    "data": {
        "has_more": true,
        "total_count": 160,
        "stick_total_number": 0,
        "offset": 20,
        "stick_has_more": false,
        "data": [
            {
                "content": "88块拿不出来还活着干嘛？你抽烟一包多少了？[看]博物馆又不是在村子里面的",
                "create_time": 1512227582,
                "is_owner": false,
                "user": {
                    "is_followed": null,
                    "description": "",
                    "screen_name": "吃瓜群众969",
                    "is_following": null,
                    "is_blocked": null,
                    "user_verified": false,
                    "user_auth_info": "",
                    "is_blocking": null,
                    "is_pgc_author": false,
                    "user_id": 11251282836,
                    "name": "吃瓜群众969",
                    "author_badge": [],
                    "user_relation": 0,
                    "verified_reason": "",
                    "avatar_url": "http://p9.pstatp.com/thumb/1bf40017180f20b8c3ba"
                },
                "text": "88块拿不出来还活着干嘛？你抽烟一包多少了？[看]博物馆又不是在村子里面的",
                "user_digg": false,
                "id": 1585685549288461,
                "content_rich_span": "",
                "digg_count": 13
            },
            {
                "content": "马爷不容易啊",
                "create_time": 1512227331,
                "is_owner": false,
                "user": {
                    "is_followed": null,
                    "description": "",
                    "screen_name": "oldyaoguai",
                    "is_following": null,
                    "is_blocked": null,
                    "user_verified": false,
                    "user_auth_info": "",
                    "is_blocking": null,
                    "is_pgc_author": false,
                    "user_id": 3642003792,
                    "name": "oldyaoguai",
                    "author_badge": [],
                    "user_relation": 0,
                    "verified_reason": "",
                    "avatar_url": "http://p3.pstatp.com/thumb/3792/5112637127"
                },
                "text": "马爷不容易啊",
                "user_digg": false,
                "id": 1585685286528077,
                "content_rich_span": "",
                "digg_count": 13
            }
        ],
        "id": 1585685157805070,
        "hot_comments": []
    },
    "stable": true
}
```

## 用户详情-动态详情-点赞用户列表数据

- 请求方式：GET
- 请求地址：/2/comment/v1/digg_list/?
- 请求参数

| 参数     |  类型  | 是否必须 |   描述   |     示例     |
| ------- | -----  | ------ | -------- | ----------- |
|id       |   Int  |   Y    |  | 1585685157805070 |
|count|   Int  |   Y    |  | 20 |
|offset|   Int  |   N    |  | 0 |
|iid|   Int  |   N    |  | 0 |
|device_id|   Int  |   N    |  | 0 |

```
{
    "message": "success",
    "data": {
        "anonymous_count": 8,
        "total_count": 211,
        "has_more": true,
        "tips": {
            "display_info": "发现20条更新",
            "open_url": "",
            "web_url": "",
            "app_name": "今日头条",
            "package_name": "",
            "type": "app",
            "display_duration": 3,
            "download_url": ""
        },
        "data": [
            {
                "is_followed": 0,
                "description": "今日头条汽车频道官方账号",
                "is_following": 0,
                "is_owner": 0,
                "is_blocked": 0,
                "user_verified": 1,
                "user_auth_info": "{\"auth_type\": \"0\", \"auth_info\": \"今日头条汽车频道官方帐号\"}",
                "is_blocking": 0,
                "is_pgc_author": 0,
                "user_id": 6480145787,
                "screen_name": "头条汽车",
                "author_badge": [],
                "user_relation": 0,
                "verified_reason": "今日头条汽车频道官方帐号",
                "avatar_url": "http://p3.pstatp.com/thumb/412000eee164c3724ac"
            },
            {
                "is_followed": 0,
                "description": "哪也不如家乡好🌹🌹🌹🌻🌻🌻🌹🌹🌹",
                "is_following": 0,
                "is_owner": 0,
                "is_blocked": 0,
                "user_verified": 0,
                "user_auth_info": "",
                "is_blocking": 0,
                "is_pgc_author": 0,
                "user_id": 53665122522,
                "screen_name": "故乡小镇1314999",
                "author_badge": [],
                "user_relation": 0,
                "verified_reason": "",
                "avatar_url": "http://p3.pstatp.com/thumb/54ea000568e14855f824"
            }
        ],
        "id": 1588394675056647
    },
    "stable": true
}
```
