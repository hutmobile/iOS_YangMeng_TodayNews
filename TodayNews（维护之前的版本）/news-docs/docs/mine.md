# 我的界面接口

## 我的界面 cell

![我的界面](img/mine/mine.png)

- 请求方式：GET

- 请求地址：/user/tab/tabs/?

- 请求参数

| 参数        | 类型   | 是否必须 | 描述    | 示例          |
| --------- | ---- | ---- | ----- | ----------- |
| device_id | Int  | Y    | 设备 ID | 8800803362  |
| iid       | Int  | Y    | 未知    | 14486549076 |

> 对于 device_id 和 iid 是如何生成的，目前未知。

返回数据示例

```
{
  "message": "success",
  "data": {
    "sections": [
      [
        {
          "grey_text": "",
          "icons": {
            "day": {
              "width": 24,
              "url_list": [
                {
                  "url": "http://p1.pstatp.com/origin/6649/8382300936"
                },
                {
                  "url": "http://pb3.pstatp.com/origin/6649/8382300936"
                },
                {
                  "url": "http://pb3.pstatp.com/origin/6649/8382300936"
                }
              ],
              "uri": "origin/6649/8382300936",
              "height": 24
            },
            "night": {
              "width": 24,
              "url_list": [
                {
                  "url": "http://p1.pstatp.com/origin/6653/7036384588"
                },
                {
                  "url": "http://pb3.pstatp.com/origin/6653/7036384588"
                },
                {
                  "url": "http://pb3.pstatp.com/origin/6653/7036384588"
                }
              ],
              "uri": "origin/6653/7036384588",
              "height": 24
            }
          },
          "url": "sslocal://message",
          "text": "消息通知",
          "key": "msg_notification",
          "tip_new": 0
        }
      ],
      [
        {
          "grey_text": "邀请好友得200元现金奖励",
          "icons": {
            "day": {
              "width": 24,
              "url_list": [
                {
                  "url": "http://p1.pstatp.com/origin/6649/8382300936"
                },
                {
                  "url": "http://pb3.pstatp.com/origin/6649/8382300936"
                },
                {
                  "url": "http://pb3.pstatp.com/origin/6649/8382300936"
                }
              ],
              "uri": "origin/6649/8382300936",
              "height": 24
            },
            "night": {
              "width": 24,
              "url_list": [
                {
                  "url": "http://p1.pstatp.com/origin/6653/7036384588"
                },
                {
                  "url": "http://pb3.pstatp.com/origin/6653/7036384588"
                },
                {
                  "url": "http://pb3.pstatp.com/origin/6653/7036384588"
                }
              ],
              "uri": "origin/6653/7036384588",
              "height": 24
            }
          },
          "url": "sslocal://webview?url=http://lf.snssdk.com/2/wap/tt_mall/&bounce_disable=1&hide_bar=1&title=头条商城",
          "text": "头条商城",
          "key": "mall",
          "tip_new": 0
        },
        {
          "grey_text": "新人领188元红包",
          "icons": {
            "day": {
              "width": 24,
              "url_list": [
                {
                  "url": "http://p1.pstatp.com/origin/6649/8382300936"
                },
                {
                  "url": "http://pb3.pstatp.com/origin/6649/8382300936"
                },
                {
                  "url": "http://pb3.pstatp.com/origin/6649/8382300936"
                }
              ],
              "uri": "origin/6649/8382300936",
              "height": 24
            },
            "night": {
              "width": 24,
              "url_list": [
                {
                  "url": "http://p1.pstatp.com/origin/6653/7036384588"
                },
                {
                  "url": "http://pb3.pstatp.com/origin/6653/7036384588"
                },
                {
                  "url": "http://pb3.pstatp.com/origin/6653/7036384588"
                }
              ],
              "uri": "origin/6653/7036384588",
              "height": 24
            }
          },
          "url": "sslocal://jdkepler?keplerType=4&url=https://union-click.jd.com/jdc?e=0&p=AyIHVCtaJQMiQwpDBUoyS0IQWhkeHAxeUQQHCllHGAdFBwtSQEINXA8LAmt6EkwwSkAWWwMePXBqVWUocwFXShFZBXNfC1pNUgFSRExHTlpbWQJLREtTBU5XSlwicj5iUklRF2cwAQMXVmAGMUJaTFRsd1kXaxcFFwJSGV0SBSIFVx9bFwUSDlEraxUHIkw7GmsSAxcGUBtSEgsiB1ASWRAAEg5dGlMVAyIFVysATV1RXxBPB0VafFULR2slMiI%3D&t=W1dCFFlQCxxLA0pHRE5XDVULR0VFUFdfEk9FFXtvQAJwBFcGTlFQfT59RXB6PUEZXQFMVz0fRU1dR1McBAJQXk8JF0IFU1tGVwAXBEs%3D&kepler-customerInfo=tt_channel_type_2&app_key=8bd51f8e450d443bafe9c364721f194a&is_temai=1&type=kepler",
          "text": "京东特供",
          "key": "jd",
          "tip_new": 0
        }
      ],
      [
        {
          "grey_text": "",
          "icons": {
            "day": {
              "width": 24,
              "url_list": [
                {
                  "url": "http://p1.pstatp.com/origin/6649/8382300936"
                },
                {
                  "url": "http://pb3.pstatp.com/origin/6649/8382300936"
                },
                {
                  "url": "http://pb3.pstatp.com/origin/6649/8382300936"
                }
              ],
              "uri": "origin/6649/8382300936",
              "height": 24
            },
            "night": {
              "width": 24,
              "url_list": [
                {
                  "url": "http://p1.pstatp.com/origin/6653/7036384588"
                },
                {
                  "url": "http://pb3.pstatp.com/origin/6653/7036384588"
                },
                {
                  "url": "http://pb3.pstatp.com/origin/6653/7036384588"
                }
              ],
              "uri": "origin/6653/7036384588",
              "height": 24
            }
          },
          "url": "sslocal://gossip?url=http://i.snssdk.com/2/wap/broke/?client_forum_type=f2&hide_more=1&fid=4534794731&cid=6216118333691922945",
          "text": "我要爆料",
          "key": "gossip",
          "tip_new": 0
        },
        {
          "grey_text": "",
          "icons": {
            "day": {
              "width": 24,
              "url_list": [
                {
                  "url": "http://p1.pstatp.com/origin/6649/8382300936"
                },
                {
                  "url": "http://pb3.pstatp.com/origin/6649/8382300936"
                },
                {
                  "url": "http://pb3.pstatp.com/origin/6649/8382300936"
                }
              ],
              "uri": "origin/6649/8382300936",
              "height": 24
            },
            "night": {
              "width": 24,
              "url_list": [
                {
                  "url": "http://p1.pstatp.com/origin/6653/7036384588"
                },
                {
                  "url": "http://pb3.pstatp.com/origin/6653/7036384588"
                },
                {
                  "url": "http://pb3.pstatp.com/origin/6653/7036384588"
                }
              ],
              "uri": "origin/6653/7036384588",
              "height": 24
            }
          },
          "url": "sslocal://feedback",
          "text": "用户反馈",
          "key": "feedback",
          "tip_new": 0
        },
        {
          "grey_text": "",
          "icons": {
            "day": {
              "width": 24,
              "url_list": [
                {
                  "url": "http://p1.pstatp.com/origin/6649/8382300936"
                },
                {
                  "url": "http://pb3.pstatp.com/origin/6649/8382300936"
                },
                {
                  "url": "http://pb3.pstatp.com/origin/6649/8382300936"
                }
              ],
              "uri": "origin/6649/8382300936",
              "height": 24
            },
            "night": {
              "width": 24,
              "url_list": [
                {
                  "url": "http://p1.pstatp.com/origin/6653/7036384588"
                },
                {
                  "url": "http://pb3.pstatp.com/origin/6653/7036384588"
                },
                {
                  "url": "http://pb3.pstatp.com/origin/6653/7036384588"
                }
              ],
              "uri": "origin/6653/7036384588",
              "height": 24
            }
          },
          "url": "sslocal://more",
          "text": "系统设置",
          "key": "config",
          "tip_new": 0
        }
      ]
    ]
  }
}
```

显示的 cell 如下：

![](img/mine/mine-other-cell.png)

右侧的副标题可能有数据，也可能没有数据。

## 我的关注 cell

- 请求方式：GET

- 请求地址：/concern/v2/follow/my_follow/?

- 请求参数

| 参数        | 类型   | 是否必须 | 描述    | 示例          |
| --------- | ---- | ---- | ----- | ----------- |
| device_id | Int  | Y    | 设备 ID | 8800803362  |
| iid       | Int  | N    | 未知    | 14486549076 |

没有关注任何人，则我的关注 cell 不显示

返回数据示例：

```
{
  "guide_text": "",
  "max_cursor": 1504744618,
  "guide_url": "",
  "offset": 0,
  "has_more": false,
  "message": "success",
  "data": [],
  "blank_text": "你关注的频道，股票，明星访谈都在这里"
}
```

有一条关注数据显示如下：

![](img/mine/mine-first-cell-1.png)

有两条关注数据或更多关注显示如下：

![](img/mine/mine-first-cell-2.png)

有 3 条关注数据：
```
{
  "guide_text": "",
  "max_cursor": 1504744743,
  "guide_url": "",
  "offset": 50,
  "has_more": true,
  "message": "success",
  "data": [
    {
      "description": "频道、话题等",
      "url": "sslocal://interest?uid=0",
      "tips": false,
      "icon": "http://p3.pstatp.com/origin/150e0002fdad080cb8d2",
      "type": "interest",
      "name": "兴趣"
    },
    {
      "media_id": 3249151846,
      "name": "创业邦",
      "url": "sslocal://profile?refer=all&user_id=3249088303&uid=3249088303&enter_from=my_follow",
      "description": "出货量30万套，打脸投资人，创业要仰望星空，在风口前猥琐发育",
      "userid": 3249088303,
      "time": "2017-09-07 08:34",
      "is_verify": 1,
      "tips": true,
      "user_auth_info": "{"auth_type": "0", "auth_info": "创业邦官方帐号 悟空问答战略合作伙伴"}",
      "type": "media",
      "id": 3249088303,
      "icon": "http://p1.pstatp.com/thumb/1bf3001cb167a60693ce"
    },
    {
      "media_id": 5580217246,
      "name": "新浪乐居",
      "url": "sslocal://profile?refer=all&user_id=5580031421&uid=5580031421&enter_from=my_follow",
      "description": "新房未住就遭水淹 物调委出面解纠纷",
      "userid": 5580031421,
      "time": "2017-09-07 08:33",
      "is_verify": 1,
      "tips": true,
      "user_auth_info": "{"auth_type": "0", "other_auth": {"pgc": "头条号房产作者"}, "auth_info": "头条号房产作者"}",
      "type": "media",
      "id": 5580031421,
      "icon": "http://p1.pstatp.com/thumb/8902/5547424596"
    }
  ],
  "blank_text": "你关注的频道，股票，明星访谈都在这里"
}
```
