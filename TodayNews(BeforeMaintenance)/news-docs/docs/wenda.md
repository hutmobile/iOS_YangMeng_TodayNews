
## 动态-提出了问题

- 请求方式：POST
- 请求地址：http://is.snssdk.com/wenda/v1/question/brow/
- 请求参数

| 参数          | 类型     | 是否必须 | 描述        | 示例                       |
| ----------- | ------ | ---- | --------- | ------------------------ |
| iid         | Int    | N    | 用户的 ID    | 18145386087              |
| device_id   | Int    | N    | 设备 ID     | 8800803362               |
| enter_from  | String | Y    | 从哪里进入问答详情 | dongtai                  |
| gd_ext_json | Int    | Y    |           | {"enter_from":"dongtai"} |
| api_param   | Int    | Y    |           | {"source":"question"}    |
| qid         | Int    | Y    | 问题 ID     | 6485873422990573838      |

![首页推荐问答](img/wenda/wenda_dongtai.jpeg)

```
{
	"err_no": 0,
	"err_tips": "",
	"offset": 10,
	"api_param": "{\"enter_from\":\"question\",\"origin_from\":\"\"}",
	"ans_list": [{
		"ansid": "6485925565353165070",
		"forward_count": 0,
		"comment_count": 9,
		"digg_count": 42,
		"brow_count": 9737,
		"bury_count": 0,
		"is_digg": false,
		"is_show_bury": true,
		"is_buryed": false,
		"title": "",
		"schema": "sslocal://wenda_detail?ansid=6485925565353165070\u0026api_param=%7B%22answer_list%22%3A%5B6485925565353165070%2C6486230099589857549%2C6493895549861757197%2C6491999154938577165%2C6485880399040872717%2C6485894590896275725%2C6486586020044210446%2C6492220515573301518%2C6485892319768740110%2C6485938674008588558%5D%2C%22answer_type%22%3A%22nice_answer%22%2C%22enter_ansid%22%3A%22%22%2C%22enter_from%22%3A%22question%22%2C%22in_offset%22%3A0%2C%22next_offset%22%3A10%7D\u0026gd_ext_json=%7B%22enter_from%22%3A%22click_answer%22%2C%22ansid%22%3A%226485925565353165070%22%2C%22enterfrom_answerid%22%3A%226485873422990573838%22%2C%22parent_enterfrom%22%3A%22dongtai%22%2C%22qid%22%3A%22%22%2C%22category_name%22%3A%22%22%2C%22author_id%22%3A%225725902544%22%2C%22article_type%22%3A%22wenda%22%2C%22log_pb%22%3Anull%7D",
		"comment_schema": "sslocal://wenda_detail?ansid=6485925565353165070\u0026api_param=%7B%22answer_list%22%3A%5B6485925565353165070%2C6486230099589857549%2C6493895549861757197%2C6491999154938577165%2C6485880399040872717%2C6485894590896275725%2C6486586020044210446%2C6492220515573301518%2C6485892319768740110%2C6485938674008588558%5D%2C%22answer_type%22%3A%22nice_answer%22%2C%22enter_ansid%22%3A%22%22%2C%22enter_from%22%3A%22question%22%2C%22in_offset%22%3A0%2C%22next_offset%22%3A10%7D\u0026gd_ext_json=%7B%22enter_from%22%3A%22click_answer%22%2C%22ansid%22%3A%226485925565353165070%22%2C%22enterfrom_answerid%22%3A%226485873422990573838%22%2C%22parent_enterfrom%22%3A%22dongtai%22%2C%22qid%22%3A%22%22%2C%22category_name%22%3A%22%22%2C%22author_id%22%3A%225725902544%22%2C%22article_type%22%3A%22wenda%22%2C%22log_pb%22%3Anull%7D\u0026is_jump_comment=1",
		"create_time": 1510122224,
		"ans_url": "https://ic.snssdk.com/wenda/v1/wapanswer/content/?ansid=6485925565353165070",
		"user": {
			"uname": "超级信仰果",
			"avatar_url": "http://p9.pstatp.com/thumb/355b00048a543b73fa06",
			"user_id": "5725902544",
			"is_verify": 0,
			"create_time": 1446690967,
			"user_intro": "",
			"is_following": 0,
			"user_auth_info": "",
			"schema": "sslocal://profile?api_param=%7B%22enter_from%22%3A%22question%22%7D\u0026refer=wenda\u0026uid=5725902544",
			"total_digg": 5088,
			"total_answer": 613
		},
		"share_data": {
			"content": "乔布斯之后无苹果，iOS6之后无iOS.从iOS7开始，苹果引入全新的bug OS.不止视觉上是个bug，使用起来也极其bug.怀念乔布斯时代，怀念iOS6时代.没有为什么，\ufffd",
			"image_url": "http://p3.pstatp.com/list/300x196/3ea5000a734c7b7102e9.webp",
			"share_url": "https://www.wukong.com/answer/6485925565353165070/?iid=20063010037\u0026app=news_article",
			"title": "为什么iOS11老是重启？(超级信仰果的回答)- 悟空问答"
		},
		"content_abstract": {
			"text": "乔布斯之后无苹果，iOS6之后无iOS.从iOS7开始，苹果引入全新的bug OS.不止视觉上是个bug，使用起来也极其bug.怀念乔布斯时代，怀念iOS6时代.没有为什么，精神导师不在了.如今的苹果设备就像和消费者开玩笑一样，6s配置很高嘛.好，再给你来个SE打击一下6s用户.曾经乔布斯嘴中的垃圾设计，应该就是iPhone X这种刘海设计.真是搞笑至极，玩具公司？！",
			"thumb_image_list": [{
				"height": 192,
				"width": 192,
				"uri": "3ea5000a734c7b7102e9",
				"url": "http://p3.pstatp.com/list/s192/3ea5000a734c7b7102e9",
				"type": 1,
				"url_list": [{
					"url": "http://p3.pstatp.com/list/s192/3ea5000a734c7b7102e9"
				}, {
					"url": "http://p3.pstatp.com/list/s192/3ea5000a734c7b7102e9"
				}, {
					"url": "http://p3.pstatp.com/list/s192/3ea5000a734c7b7102e9"
				}]
			}, {
				"height": 192,
				"width": 192,
				"uri": "dd50007bc0723c2b73d",
				"url": "http://p3.pstatp.com/list/s192/dd50007bc0723c2b73d",
				"type": 1,
				"url_list": [{
					"url": "http://p3.pstatp.com/list/s192/dd50007bc0723c2b73d"
				}, {
					"url": "http://p3.pstatp.com/list/s192/dd50007bc0723c2b73d"
				}, {
					"url": "http://p3.pstatp.com/list/s192/dd50007bc0723c2b73d"
				}]
			}, {
				"height": 192,
				"width": 192,
				"uri": "3ea2000a6f8eafe7e614",
				"url": "http://p1.pstatp.com/list/s192/3ea2000a6f8eafe7e614",
				"type": 1,
				"url_list": [{
					"url": "http://p1.pstatp.com/list/s192/3ea2000a6f8eafe7e614"
				}, {
					"url": "http://p1.pstatp.com/list/s192/3ea2000a6f8eafe7e614"
				}, {
					"url": "http://p1.pstatp.com/list/s192/3ea2000a6f8eafe7e614"
				}]
			}, {
				"height": 192,
				"width": 192,
				"uri": "dd50007bc391c9592ca",
				"url": "http://p3.pstatp.com/list/s192/dd50007bc391c9592ca",
				"type": 1,
				"url_list": [{
					"url": "http://p3.pstatp.com/list/s192/dd50007bc391c9592ca"
				}, {
					"url": "http://p3.pstatp.com/list/s192/dd50007bc391c9592ca"
				}, {
					"url": "http://p3.pstatp.com/list/s192/dd50007bc391c9592ca"
				}]
			}, {
				"height": 192,
				"width": 192,
				"uri": "3ea4000a6d07082c427d",
				"url": "http://p1.pstatp.com/list/s192/3ea4000a6d07082c427d",
				"type": 1,
				"url_list": [{
					"url": "http://p1.pstatp.com/list/s192/3ea4000a6d07082c427d"
				}, {
					"url": "http://p1.pstatp.com/list/s192/3ea4000a6d07082c427d"
				}, {
					"url": "http://p1.pstatp.com/list/s192/3ea4000a6d07082c427d"
				}]
			}],
			"large_image_list": [{
				"height": 360,
				"width": 640,
				"uri": "3ea5000a734c7b7102e9",
				"url": "http://p3.pstatp.com/large/3ea5000a734c7b7102e9",
				"type": 1,
				"url_list": [{
					"url": "http://p3.pstatp.com/large/3ea5000a734c7b7102e9"
				}, {
					"url": "http://p3.pstatp.com/large/3ea5000a734c7b7102e9"
				}, {
					"url": "http://p3.pstatp.com/large/3ea5000a734c7b7102e9"
				}]
			}, {
				"height": 360,
				"width": 640,
				"uri": "dd50007bc0723c2b73d",
				"url": "http://p3.pstatp.com/large/dd50007bc0723c2b73d",
				"type": 1,
				"url_list": [{
					"url": "http://p3.pstatp.com/large/dd50007bc0723c2b73d"
				}, {
					"url": "http://p3.pstatp.com/large/dd50007bc0723c2b73d"
				}, {
					"url": "http://p3.pstatp.com/large/dd50007bc0723c2b73d"
				}]
			}, {
				"height": 960,
				"width": 640,
				"uri": "3ea2000a6f8eafe7e614",
				"url": "http://p1.pstatp.com/large/3ea2000a6f8eafe7e614",
				"type": 1,
				"url_list": [{
					"url": "http://p1.pstatp.com/large/3ea2000a6f8eafe7e614"
				}, {
					"url": "http://p1.pstatp.com/large/3ea2000a6f8eafe7e614"
				}, {
					"url": "http://p1.pstatp.com/large/3ea2000a6f8eafe7e614"
				}]
			}, {
				"height": 960,
				"width": 640,
				"uri": "dd50007bc391c9592ca",
				"url": "http://p3.pstatp.com/large/dd50007bc391c9592ca",
				"type": 1,
				"url_list": [{
					"url": "http://p3.pstatp.com/large/dd50007bc391c9592ca"
				}, {
					"url": "http://p3.pstatp.com/large/dd50007bc391c9592ca"
				}, {
					"url": "http://p3.pstatp.com/large/dd50007bc391c9592ca"
				}]
			}, {
				"height": 960,
				"width": 640,
				"uri": "3ea4000a6d07082c427d",
				"url": "http://p1.pstatp.com/large/3ea4000a6d07082c427d",
				"type": 1,
				"url_list": [{
					"url": "http://p1.pstatp.com/large/3ea4000a6d07082c427d"
				}, {
					"url": "http://p1.pstatp.com/large/3ea4000a6d07082c427d"
				}, {
					"url": "http://p1.pstatp.com/large/3ea4000a6d07082c427d"
				}]
			}],
			"video_list": []
		}
	}, {
		"ansid": "6486230099589857549",
		"forward_count": 0,
		"comment_count": 0,
		"digg_count": 9,
		"brow_count": 9317,
		"bury_count": 1,
		"is_digg": false,
		"is_show_bury": true,
		"is_buryed": false,
		"title": "",
		"schema": "sslocal://wenda_detail?ansid=6486230099589857549\u0026api_param=%7B%22answer_list%22%3A%5B6485925565353165070%2C6486230099589857549%2C6493895549861757197%2C6491999154938577165%2C6485880399040872717%2C6485894590896275725%2C6486586020044210446%2C6492220515573301518%2C6485892319768740110%2C6485938674008588558%5D%2C%22answer_type%22%3A%22nice_answer%22%2C%22enter_ansid%22%3A%22%22%2C%22enter_from%22%3A%22question%22%2C%22in_offset%22%3A1%2C%22next_offset%22%3A10%7D\u0026gd_ext_json=%7B%22enter_from%22%3A%22click_answer%22%2C%22ansid%22%3A%226486230099589857549%22%2C%22enterfrom_answerid%22%3A%226485873422990573838%22%2C%22parent_enterfrom%22%3A%22dongtai%22%2C%22qid%22%3A%22%22%2C%22category_name%22%3A%22%22%2C%22author_id%22%3A%224569089846%22%2C%22article_type%22%3A%22wenda%22%2C%22log_pb%22%3Anull%7D",
		"comment_schema": "sslocal://wenda_detail?ansid=6486230099589857549\u0026api_param=%7B%22answer_list%22%3A%5B6485925565353165070%2C6486230099589857549%2C6493895549861757197%2C6491999154938577165%2C6485880399040872717%2C6485894590896275725%2C6486586020044210446%2C6492220515573301518%2C6485892319768740110%2C6485938674008588558%5D%2C%22answer_type%22%3A%22nice_answer%22%2C%22enter_ansid%22%3A%22%22%2C%22enter_from%22%3A%22question%22%2C%22in_offset%22%3A1%2C%22next_offset%22%3A10%7D\u0026gd_ext_json=%7B%22enter_from%22%3A%22click_answer%22%2C%22ansid%22%3A%226486230099589857549%22%2C%22enterfrom_answerid%22%3A%226485873422990573838%22%2C%22parent_enterfrom%22%3A%22dongtai%22%2C%22qid%22%3A%22%22%2C%22category_name%22%3A%22%22%2C%22author_id%22%3A%224569089846%22%2C%22article_type%22%3A%22wenda%22%2C%22log_pb%22%3Anull%7D\u0026is_jump_comment=1",
		"create_time": 1510193129,
		"ans_url": "https://ic.snssdk.com/wenda/v1/wapanswer/content/?ansid=6486230099589857549",
		"user": {
			"uname": "车问诊",
			"avatar_url": "http://p3.pstatp.com/thumb/363f0010a03ff83bda3f",
			"user_id": "4569089846",
			"is_verify": 1,
			"create_time": 1434878124,
			"user_intro": "汽车自媒体",
			"is_following": 0,
			"user_auth_info": "{\"auth_type\": \"0\", \"auth_info\": \"汽车自媒体\"}",
			"schema": "sslocal://profile?api_param=%7B%22enter_from%22%3A%22question%22%7D\u0026refer=wenda\u0026uid=4569089846",
			"total_digg": 87581,
			"total_answer": 861
		},
		"share_data": {
			"content": "人的智力是有极限的，每个人智力开发的程度又不同，一个大型的系统需要成百上千的程序员来完成，出现BUG是正常的，反复的测试和肉眼的检查很重\ufffd\ufffd",
			"image_url": "http://p3.pstatp.com/thumb/363f0010a03ff83bda3f",
			"share_url": "https://www.wukong.com/answer/6486230099589857549/?iid=20063010037\u0026app=news_article",
			"title": "车问诊回答了为什么iOS11老是重启？(9赞)- 悟空问答"
		},
		"content_abstract": {
			"text": "人的智力是有极限的，每个人智力开发的程度又不同，一个大型的系统需要成百上千的程序员来完成，出现BUG是正常的，反复的测试和肉眼的检查很重要，建议尽量少升级，除非是系统优化方面升级！还有个可能你现在用的就是测试尝鲜版！另外还是建议用华为的手机吧，我发现一个规律不知道是不是这样？媒体人，艺人喜欢用苹果手机，企业人，理工科人喜欢用华为手机，绝大部分媒体人因工作关系经常转述别人的观点，因为他们没有做过企业，只能是别人说什么，就转述什么，也可以这样理解没有自己的观点，也可能人云亦云，容易被新潮的东西所吸引，理工科的人，逻辑思维强，总体来说主观性比较强，有自己的观点的时候比较多，来自于高端制造企业的华为的手机可能更受他们欢迎！纯属个人观点，个人理解，不喜勿喷！车友会群主，玩越野，玩飘移，利用晚上或者休息的时间，亲自码字，用最精炼和通俗的文字回答车主的各类问题，认为有用的请关注我并点赞，谢谢！",
			"thumb_image_list": [{
				"height": 192,
				"width": 192,
				"uri": "3ea3000aa78c52ea6b2b",
				"url": "http://p3.pstatp.com/list/s192/3ea3000aa78c52ea6b2b",
				"type": 1,
				"url_list": [{
					"url": "http://p3.pstatp.com/list/s192/3ea3000aa78c52ea6b2b"
				}, {
					"url": "http://p3.pstatp.com/list/s192/3ea3000aa78c52ea6b2b"
				}, {
					"url": "http://p3.pstatp.com/list/s192/3ea3000aa78c52ea6b2b"
				}]
			}, {
				"height": 192,
				"width": 192,
				"uri": "dd50007f558314a6975",
				"url": "http://p3.pstatp.com/list/s192/dd50007f558314a6975",
				"type": 1,
				"url_list": [{
					"url": "http://p3.pstatp.com/list/s192/dd50007f558314a6975"
				}, {
					"url": "http://p3.pstatp.com/list/s192/dd50007f558314a6975"
				}, {
					"url": "http://p3.pstatp.com/list/s192/dd50007f558314a6975"
				}]
			}, {
				"height": 192,
				"width": 192,
				"uri": "3ea3000aa7c122aab665",
				"url": "http://p3.pstatp.com/list/s192/3ea3000aa7c122aab665",
				"type": 1,
				"url_list": [{
					"url": "http://p3.pstatp.com/list/s192/3ea3000aa7c122aab665"
				}, {
					"url": "http://p3.pstatp.com/list/s192/3ea3000aa7c122aab665"
				}, {
					"url": "http://p3.pstatp.com/list/s192/3ea3000aa7c122aab665"
				}]
			}],
			"large_image_list": [{
				"height": 648,
				"width": 1080,
				"uri": "3ea3000aa78c52ea6b2b",
				"url": "http://p3.pstatp.com/large/3ea3000aa78c52ea6b2b",
				"type": 1,
				"url_list": [{
					"url": "http://p3.pstatp.com/large/3ea3000aa78c52ea6b2b"
				}, {
					"url": "http://p3.pstatp.com/large/3ea3000aa78c52ea6b2b"
				}, {
					"url": "http://p3.pstatp.com/large/3ea3000aa78c52ea6b2b"
				}]
			}, {
				"height": 592,
				"width": 1080,
				"uri": "dd50007f558314a6975",
				"url": "http://p3.pstatp.com/large/dd50007f558314a6975",
				"type": 1,
				"url_list": [{
					"url": "http://p3.pstatp.com/large/dd50007f558314a6975"
				}, {
					"url": "http://p3.pstatp.com/large/dd50007f558314a6975"
				}, {
					"url": "http://p3.pstatp.com/large/dd50007f558314a6975"
				}]
			}, {
				"height": 760,
				"width": 1080,
				"uri": "3ea3000aa7c122aab665",
				"url": "http://p3.pstatp.com/large/3ea3000aa7c122aab665",
				"type": 1,
				"url_list": [{
					"url": "http://p3.pstatp.com/large/3ea3000aa7c122aab665"
				}, {
					"url": "http://p3.pstatp.com/large/3ea3000aa7c122aab665"
				}, {
					"url": "http://p3.pstatp.com/large/3ea3000aa7c122aab665"
				}]
			}],
			"video_list": []
		}
	}, {
		"ansid": "6493895549861757197",
		"forward_count": 0,
		"comment_count": 0,
		"digg_count": 25,
		"brow_count": 14704,
		"bury_count": 0,
		"is_digg": false,
		"is_show_bury": true,
		"is_buryed": false,
		"title": "",
		"schema": "sslocal://wenda_detail?ansid=6493895549861757197\u0026api_param=%7B%22answer_list%22%3A%5B6485925565353165070%2C6486230099589857549%2C6493895549861757197%2C6491999154938577165%2C6485880399040872717%2C6485894590896275725%2C6486586020044210446%2C6492220515573301518%2C6485892319768740110%2C6485938674008588558%5D%2C%22answer_type%22%3A%22nice_answer%22%2C%22enter_ansid%22%3A%22%22%2C%22enter_from%22%3A%22question%22%2C%22in_offset%22%3A2%2C%22next_offset%22%3A10%7D\u0026gd_ext_json=%7B%22enter_from%22%3A%22click_answer%22%2C%22ansid%22%3A%226493895549861757197%22%2C%22enterfrom_answerid%22%3A%226485873422990573838%22%2C%22parent_enterfrom%22%3A%22dongtai%22%2C%22qid%22%3A%22%22%2C%22category_name%22%3A%22%22%2C%22author_id%22%3A%226321203036%22%2C%22article_type%22%3A%22wenda%22%2C%22log_pb%22%3Anull%7D",
		"comment_schema": "sslocal://wenda_detail?ansid=6493895549861757197\u0026api_param=%7B%22answer_list%22%3A%5B6485925565353165070%2C6486230099589857549%2C6493895549861757197%2C6491999154938577165%2C6485880399040872717%2C6485894590896275725%2C6486586020044210446%2C6492220515573301518%2C6485892319768740110%2C6485938674008588558%5D%2C%22answer_type%22%3A%22nice_answer%22%2C%22enter_ansid%22%3A%22%22%2C%22enter_from%22%3A%22question%22%2C%22in_offset%22%3A2%2C%22next_offset%22%3A10%7D\u0026gd_ext_json=%7B%22enter_from%22%3A%22click_answer%22%2C%22ansid%22%3A%226493895549861757197%22%2C%22enterfrom_answerid%22%3A%226485873422990573838%22%2C%22parent_enterfrom%22%3A%22dongtai%22%2C%22qid%22%3A%22%22%2C%22category_name%22%3A%22%22%2C%22author_id%22%3A%226321203036%22%2C%22article_type%22%3A%22wenda%22%2C%22log_pb%22%3Anull%7D\u0026is_jump_comment=1",
		"create_time": 1511977881,
		"ans_url": "https://ic.snssdk.com/wenda/v1/wapanswer/content/?ansid=6493895549861757197",
		"user": {
			"uname": "文笔优美",
			"avatar_url": "http://p3.pstatp.com/thumb/3f03001fb311f9b92132",
			"user_id": "6321203036",
			"is_verify": 0,
			"create_time": 1460728390,
			"user_intro": "",
			"is_following": 0,
			"user_auth_info": "",
			"schema": "sslocal://profile?api_param=%7B%22enter_from%22%3A%22question%22%7D\u0026refer=wenda\u0026uid=6321203036",
			"total_digg": 51,
			"total_answer": 4
		},
		"share_data": {
			"content": "我已经把新闻网昨日推出的“明日头条”新产品矩阵图P出来了，新浪你可以拿去和“今日头条”展开正面PK了...哈哈！！！新浪和今日头条真实故事是\ufffd\ufffd",
			"image_url": "http://p3.pstatp.com/list/300x196/474f0008d9ad8ea8eebb.webp",
			"share_url": "https://www.wukong.com/answer/6493895549861757197/?iid=20063010037\u0026app=news_article",
			"title": "为什么iOS11老是重启？(文笔优美的回答)- 悟空问答"
		},
		"content_abstract": {
			"text": "我已经把新闻网昨日推出的“明日头条”新产品矩阵图P出来了，新浪你可以拿去和“今日头条”展开正面PK了...哈哈！！！新浪和今日头条真实故事是这样子，最开始新浪是今日头条首轮融资方，后来今日头条日渐壮大了，不认这个东家了，不懂得报恩，反而在背地搞了一个微头条，直逼新浪微博社交领域，新浪微博这下子慌了，因为对微博构成了威胁啊，只好由之前恋人关系，彻彻底底发展成为了仇人。与此同时，也印证了中国一句经典至理名言：养虎为患，后患无穷！此次教训，值得新浪深刻反省。",
			"thumb_image_list": [{
				"height": 1281,
				"width": 720,
				"uri": "474f0008d9ad8ea8eebb",
				"url": "http://p3.pstatp.com/list/r720/474f0008d9ad8ea8eebb",
				"type": 1,
				"url_list": [{
					"url": "http://p3.pstatp.com/list/r720/474f0008d9ad8ea8eebb"
				}, {
					"url": "http://p3.pstatp.com/list/r720/474f0008d9ad8ea8eebb"
				}, {
					"url": "http://p3.pstatp.com/list/r720/474f0008d9ad8ea8eebb"
				}]
			}],
			"large_image_list": [{
				"height": 1281,
				"width": 720,
				"uri": "474f0008d9ad8ea8eebb",
				"url": "http://p3.pstatp.com/large/474f0008d9ad8ea8eebb",
				"type": 1,
				"url_list": [{
					"url": "http://p3.pstatp.com/large/474f0008d9ad8ea8eebb"
				}, {
					"url": "http://p3.pstatp.com/large/474f0008d9ad8ea8eebb"
				}, {
					"url": "http://p3.pstatp.com/large/474f0008d9ad8ea8eebb"
				}]
			}],
			"video_list": []
		}
	}, {
		"ansid": "6491999154938577165",
		"forward_count": 0,
		"comment_count": 1,
		"digg_count": 68,
		"brow_count": 396734,
		"bury_count": 1,
		"is_digg": false,
		"is_show_bury": true,
		"is_buryed": false,
		"title": "",
		"schema": "sslocal://wenda_detail?ansid=6491999154938577165\u0026api_param=%7B%22answer_list%22%3A%5B6485925565353165070%2C6486230099589857549%2C6493895549861757197%2C6491999154938577165%2C6485880399040872717%2C6485894590896275725%2C6486586020044210446%2C6492220515573301518%2C6485892319768740110%2C6485938674008588558%5D%2C%22answer_type%22%3A%22nice_answer%22%2C%22enter_ansid%22%3A%22%22%2C%22enter_from%22%3A%22question%22%2C%22in_offset%22%3A3%2C%22next_offset%22%3A10%7D\u0026gd_ext_json=%7B%22enter_from%22%3A%22click_answer%22%2C%22ansid%22%3A%226491999154938577165%22%2C%22enterfrom_answerid%22%3A%226485873422990573838%22%2C%22parent_enterfrom%22%3A%22dongtai%22%2C%22qid%22%3A%22%22%2C%22category_name%22%3A%22%22%2C%22author_id%22%3A%223582660809%22%2C%22article_type%22%3A%22wenda%22%2C%22log_pb%22%3Anull%7D",
		"comment_schema": "sslocal://wenda_detail?ansid=6491999154938577165\u0026api_param=%7B%22answer_list%22%3A%5B6485925565353165070%2C6486230099589857549%2C6493895549861757197%2C6491999154938577165%2C6485880399040872717%2C6485894590896275725%2C6486586020044210446%2C6492220515573301518%2C6485892319768740110%2C6485938674008588558%5D%2C%22answer_type%22%3A%22nice_answer%22%2C%22enter_ansid%22%3A%22%22%2C%22enter_from%22%3A%22question%22%2C%22in_offset%22%3A3%2C%22next_offset%22%3A10%7D\u0026gd_ext_json=%7B%22enter_from%22%3A%22click_answer%22%2C%22ansid%22%3A%226491999154938577165%22%2C%22enterfrom_answerid%22%3A%226485873422990573838%22%2C%22parent_enterfrom%22%3A%22dongtai%22%2C%22qid%22%3A%22%22%2C%22category_name%22%3A%22%22%2C%22author_id%22%3A%223582660809%22%2C%22article_type%22%3A%22wenda%22%2C%22log_pb%22%3Anull%7D\u0026is_jump_comment=1",
		"create_time": 1511536342,
		"ans_url": "https://ic.snssdk.com/wenda/v1/wapanswer/content/?ansid=6491999154938577165",
		"user": {
			"uname": "中国青年网",
			"avatar_url": "http://p3.pstatp.com/thumb/1398/4664054183",
			"user_id": "3582660809",
			"is_verify": 1,
			"create_time": 1412823513,
			"user_intro": "中国青年网官方头条号",
			"is_following": 0,
			"user_auth_info": "{\"auth_type\": \"0\", \"auth_info\": \"中国青年网官方头条号\"}",
			"schema": "sslocal://profile?api_param=%7B%22enter_from%22%3A%22question%22%7D\u0026refer=wenda\u0026uid=3582660809",
			"total_digg": 2489,
			"total_answer": 25
		},
		"share_data": {
			"content": "开发一套TT系统吧👏",
			"image_url": "http://p3.pstatp.com/thumb/1398/4664054183",
			"share_url": "https://www.wukong.com/answer/6491999154938577165/?iid=20063010037\u0026app=news_article",
			"title": "中国青年网回答了为什么iOS11老是重启？(68赞)- 悟空问答"
		},
		"content_abstract": {
			"text": "开发一套TT系统吧👏",
			"thumb_image_list": [],
			"large_image_list": [],
			"video_list": []
		}
	}, {
		"ansid": "6485880399040872717",
		"forward_count": 0,
		"comment_count": 0,
		"digg_count": 3,
		"brow_count": 4140,
		"bury_count": 1,
		"is_digg": false,
		"is_show_bury": true,
		"is_buryed": false,
		"title": "",
		"schema": "sslocal://wenda_detail?ansid=6485880399040872717\u0026api_param=%7B%22answer_list%22%3A%5B6485925565353165070%2C6486230099589857549%2C6493895549861757197%2C6491999154938577165%2C6485880399040872717%2C6485894590896275725%2C6486586020044210446%2C6492220515573301518%2C6485892319768740110%2C6485938674008588558%5D%2C%22answer_type%22%3A%22nice_answer%22%2C%22enter_ansid%22%3A%22%22%2C%22enter_from%22%3A%22question%22%2C%22in_offset%22%3A4%2C%22next_offset%22%3A10%7D\u0026gd_ext_json=%7B%22enter_from%22%3A%22click_answer%22%2C%22ansid%22%3A%226485880399040872717%22%2C%22enterfrom_answerid%22%3A%226485873422990573838%22%2C%22parent_enterfrom%22%3A%22dongtai%22%2C%22qid%22%3A%22%22%2C%22category_name%22%3A%22%22%2C%22author_id%22%3A%2218996928195%22%2C%22article_type%22%3A%22wenda%22%2C%22log_pb%22%3Anull%7D",
		"comment_schema": "sslocal://wenda_detail?ansid=6485880399040872717\u0026api_param=%7B%22answer_list%22%3A%5B6485925565353165070%2C6486230099589857549%2C6493895549861757197%2C6491999154938577165%2C6485880399040872717%2C6485894590896275725%2C6486586020044210446%2C6492220515573301518%2C6485892319768740110%2C6485938674008588558%5D%2C%22answer_type%22%3A%22nice_answer%22%2C%22enter_ansid%22%3A%22%22%2C%22enter_from%22%3A%22question%22%2C%22in_offset%22%3A4%2C%22next_offset%22%3A10%7D\u0026gd_ext_json=%7B%22enter_from%22%3A%22click_answer%22%2C%22ansid%22%3A%226485880399040872717%22%2C%22enterfrom_answerid%22%3A%226485873422990573838%22%2C%22parent_enterfrom%22%3A%22dongtai%22%2C%22qid%22%3A%22%22%2C%22category_name%22%3A%22%22%2C%22author_id%22%3A%2218996928195%22%2C%22article_type%22%3A%22wenda%22%2C%22log_pb%22%3Anull%7D\u0026is_jump_comment=1",
		"create_time": 1510111708,
		"ans_url": "https://ic.snssdk.com/wenda/v1/wapanswer/content/?ansid=6485880399040872717",
		"user": {
			"uname": "微风细雨话苍凉",
			"avatar_url": "http://p3.pstatp.com/thumb/16aa00041926ee1639f1",
			"user_id": "18996928195",
			"is_verify": 0,
			"create_time": 1486830094,
			"user_intro": "",
			"is_following": 0,
			"user_auth_info": "",
			"schema": "sslocal://profile?api_param=%7B%22enter_from%22%3A%22question%22%7D\u0026refer=wenda\u0026uid=18996928195",
			"total_digg": 2078,
			"total_answer": 148
		},
		"share_data": {
			"content": "哈哈哈  这么大的老板，手机要是罢工或者不流畅，直接甩了就是呗！我从来没有用过苹果手机，不是因为爱国，是因为口袋里钱太少了，而且，我感觉",
			"image_url": "http://p3.pstatp.com/origin/18a300102cab5d8d0e05",
			"share_url": "https://www.wukong.com/answer/6485880399040872717/?iid=20063010037\u0026app=news_article",
			"title": "为什么iOS11老是重启？(微风细雨话苍凉的回答)- 悟空问答"
		},
		"content_abstract": {
			"text": "哈哈哈  这么大的老板，手机要是罢工或者不流畅，直接甩了就是呗！我从来没有用过苹果手机，不是因为爱国，是因为口袋里钱太少了，而且，我感觉我找几百元或者千把元的手机也还不错哦！",
			"thumb_image_list": [],
			"large_image_list": [],
			"video_list": []
		}
	}, {
		"ansid": "6485894590896275725",
		"forward_count": 0,
		"comment_count": 0,
		"digg_count": 14,
		"brow_count": 7659,
		"bury_count": 1,
		"is_digg": false,
		"is_show_bury": true,
		"is_buryed": false,
		"title": "",
		"schema": "sslocal://wenda_detail?ansid=6485894590896275725\u0026api_param=%7B%22answer_list%22%3A%5B6485925565353165070%2C6486230099589857549%2C6493895549861757197%2C6491999154938577165%2C6485880399040872717%2C6485894590896275725%2C6486586020044210446%2C6492220515573301518%2C6485892319768740110%2C6485938674008588558%5D%2C%22answer_type%22%3A%22nice_answer%22%2C%22enter_ansid%22%3A%22%22%2C%22enter_from%22%3A%22question%22%2C%22in_offset%22%3A5%2C%22next_offset%22%3A10%7D\u0026gd_ext_json=%7B%22enter_from%22%3A%22click_answer%22%2C%22ansid%22%3A%226485894590896275725%22%2C%22enterfrom_answerid%22%3A%226485873422990573838%22%2C%22parent_enterfrom%22%3A%22dongtai%22%2C%22qid%22%3A%22%22%2C%22category_name%22%3A%22%22%2C%22author_id%22%3A%223172594519%22%2C%22article_type%22%3A%22wenda%22%2C%22log_pb%22%3Anull%7D",
		"comment_schema": "sslocal://wenda_detail?ansid=6485894590896275725\u0026api_param=%7B%22answer_list%22%3A%5B6485925565353165070%2C6486230099589857549%2C6493895549861757197%2C6491999154938577165%2C6485880399040872717%2C6485894590896275725%2C6486586020044210446%2C6492220515573301518%2C6485892319768740110%2C6485938674008588558%5D%2C%22answer_type%22%3A%22nice_answer%22%2C%22enter_ansid%22%3A%22%22%2C%22enter_from%22%3A%22question%22%2C%22in_offset%22%3A5%2C%22next_offset%22%3A10%7D\u0026gd_ext_json=%7B%22enter_from%22%3A%22click_answer%22%2C%22ansid%22%3A%226485894590896275725%22%2C%22enterfrom_answerid%22%3A%226485873422990573838%22%2C%22parent_enterfrom%22%3A%22dongtai%22%2C%22qid%22%3A%22%22%2C%22category_name%22%3A%22%22%2C%22author_id%22%3A%223172594519%22%2C%22article_type%22%3A%22wenda%22%2C%22log_pb%22%3Anull%7D\u0026is_jump_comment=1",
		"create_time": 1510115012,
		"ans_url": "https://ic.snssdk.com/wenda/v1/wapanswer/content/?ansid=6485894590896275725",
		"user": {
			"uname": "娱乐喵喵星",
			"avatar_url": "http://p3.pstatp.com/thumb/402800038cd21858a3ef",
			"user_id": "3172594519",
			"is_verify": 0,
			"create_time": 1396222364,
			"user_intro": "",
			"is_following": 0,
			"user_auth_info": "",
			"schema": "sslocal://profile?api_param=%7B%22enter_from%22%3A%22question%22%7D\u0026refer=wenda\u0026uid=3172594519",
			"total_digg": 13033,
			"total_answer": 1013
		},
		"share_data": {
			"content": "这么高科技的手机真的搞不懂，科技水平太高了，我只知道苹果手机最好不要去更新系统！系统一更新几乎这部手机用起来就不爽了！接二连三问题就\ufffd\ufffd",
			"image_url": "http://p3.pstatp.com/list/300x196/3ea5000a6ba4b775d031.webp",
			"share_url": "https://www.wukong.com/answer/6485894590896275725/?iid=20063010037\u0026app=news_article",
			"title": "为什么iOS11老是重启？(娱乐喵喵星的回答)- 悟空问答"
		},
		"content_abstract": {
			"text": "这么高科技的手机真的搞不懂，科技水平太高了，我只知道苹果手机最好不要去更新系统！系统一更新几乎这部手机用起来就不爽了！接二连三问题就来了！只好重新再买一台新手机。苹果手机很多修手机的师傅也不懂维修，之前我有部苹果6就被师傅修坏了。无奈只好买oppo11.苹果8我们从来都没有想过去买，改天苹果9又出来了，我们跟不上时代！安卓全屏幕手机又将推出了！我们拭目以待！",
			"thumb_image_list": [{
				"height": 192,
				"width": 192,
				"uri": "3ea5000a6ba4b775d031",
				"url": "http://p3.pstatp.com/list/s192/3ea5000a6ba4b775d031",
				"type": 1,
				"url_list": [{
					"url": "http://p3.pstatp.com/list/s192/3ea5000a6ba4b775d031"
				}, {
					"url": "http://p3.pstatp.com/list/s192/3ea5000a6ba4b775d031"
				}, {
					"url": "http://p3.pstatp.com/list/s192/3ea5000a6ba4b775d031"
				}]
			}, {
				"height": 192,
				"width": 192,
				"uri": "3ea2000a67abc86dce61",
				"url": "http://p3.pstatp.com/list/s192/3ea2000a67abc86dce61",
				"type": 1,
				"url_list": [{
					"url": "http://p3.pstatp.com/list/s192/3ea2000a67abc86dce61"
				}, {
					"url": "http://p3.pstatp.com/list/s192/3ea2000a67abc86dce61"
				}, {
					"url": "http://p3.pstatp.com/list/s192/3ea2000a67abc86dce61"
				}]
			}],
			"large_image_list": [{
				"height": 1920,
				"width": 1080,
				"uri": "3ea5000a6ba4b775d031",
				"url": "http://p3.pstatp.com/large/3ea5000a6ba4b775d031",
				"type": 1,
				"url_list": [{
					"url": "http://p3.pstatp.com/large/3ea5000a6ba4b775d031"
				}, {
					"url": "http://p3.pstatp.com/large/3ea5000a6ba4b775d031"
				}, {
					"url": "http://p3.pstatp.com/large/3ea5000a6ba4b775d031"
				}]
			}, {
				"height": 957,
				"width": 640,
				"uri": "3ea2000a67abc86dce61",
				"url": "http://p3.pstatp.com/large/3ea2000a67abc86dce61",
				"type": 1,
				"url_list": [{
					"url": "http://p3.pstatp.com/large/3ea2000a67abc86dce61"
				}, {
					"url": "http://p3.pstatp.com/large/3ea2000a67abc86dce61"
				}, {
					"url": "http://p3.pstatp.com/large/3ea2000a67abc86dce61"
				}]
			}],
			"video_list": []
		}
	}, {
		"ansid": "6486586020044210446",
		"forward_count": 0,
		"comment_count": 0,
		"digg_count": 4,
		"brow_count": 6586,
		"bury_count": 0,
		"is_digg": false,
		"is_show_bury": true,
		"is_buryed": false,
		"title": "",
		"schema": "sslocal://wenda_detail?ansid=6486586020044210446\u0026api_param=%7B%22answer_list%22%3A%5B6485925565353165070%2C6486230099589857549%2C6493895549861757197%2C6491999154938577165%2C6485880399040872717%2C6485894590896275725%2C6486586020044210446%2C6492220515573301518%2C6485892319768740110%2C6485938674008588558%5D%2C%22answer_type%22%3A%22nice_answer%22%2C%22enter_ansid%22%3A%22%22%2C%22enter_from%22%3A%22question%22%2C%22in_offset%22%3A6%2C%22next_offset%22%3A10%7D\u0026gd_ext_json=%7B%22enter_from%22%3A%22click_answer%22%2C%22ansid%22%3A%226486586020044210446%22%2C%22enterfrom_answerid%22%3A%226485873422990573838%22%2C%22parent_enterfrom%22%3A%22dongtai%22%2C%22qid%22%3A%22%22%2C%22category_name%22%3A%22%22%2C%22author_id%22%3A%222940315047%22%2C%22article_type%22%3A%22wenda%22%2C%22log_pb%22%3Anull%7D",
		"comment_schema": "sslocal://wenda_detail?ansid=6486586020044210446\u0026api_param=%7B%22answer_list%22%3A%5B6485925565353165070%2C6486230099589857549%2C6493895549861757197%2C6491999154938577165%2C6485880399040872717%2C6485894590896275725%2C6486586020044210446%2C6492220515573301518%2C6485892319768740110%2C6485938674008588558%5D%2C%22answer_type%22%3A%22nice_answer%22%2C%22enter_ansid%22%3A%22%22%2C%22enter_from%22%3A%22question%22%2C%22in_offset%22%3A6%2C%22next_offset%22%3A10%7D\u0026gd_ext_json=%7B%22enter_from%22%3A%22click_answer%22%2C%22ansid%22%3A%226486586020044210446%22%2C%22enterfrom_answerid%22%3A%226485873422990573838%22%2C%22parent_enterfrom%22%3A%22dongtai%22%2C%22qid%22%3A%22%22%2C%22category_name%22%3A%22%22%2C%22author_id%22%3A%222940315047%22%2C%22article_type%22%3A%22wenda%22%2C%22log_pb%22%3Anull%7D\u0026is_jump_comment=1",
		"create_time": 1510275998,
		"ans_url": "https://ic.snssdk.com/wenda/v1/wapanswer/content/?ansid=6486586020044210446",
		"user": {
			"uname": "这位同学叫晓雨",
			"avatar_url": "http://p3.pstatp.com/thumb/400d000076e0442f2675",
			"user_id": "2940315047",
			"is_verify": 0,
			"create_time": 1387122650,
			"user_intro": "",
			"is_following": 0,
			"user_auth_info": "",
			"schema": "sslocal://profile?api_param=%7B%22enter_from%22%3A%22question%22%7D\u0026refer=wenda\u0026uid=2940315047",
			"total_digg": 34374,
			"total_answer": 975
		},
		"share_data": {
			"content": "9月13日苹果正式发布了IOS11，20日发布了正式版。相比只要能升级一般的小伙伴都会选择升级到最新的系统，虽然都知道升级到最新系统总会多多少少有\ufffd",
			"image_url": "http://p3.pstatp.com/list/300x196/3ea600005983f8037d47.webp",
			"share_url": "https://www.wukong.com/answer/6486586020044210446/?iid=20063010037\u0026app=news_article",
			"title": "为什么iOS11老是重启？(这位同学叫晓雨的回答)- 悟空问答"
		},
		"content_abstract": {
			"text": "9月13日苹果正式发布了IOS11，20日发布了正式版。相比只要能升级一般的小伙伴都会选择升级到最新的系统，虽然都知道升级到最新系统总会多多少少有些问题，特别是BUG。所以说一般小版本的更新都是在修复BUG的，苹果也是不断的在修复BUG。可是在各大苹果论坛里反应最多的依旧是手机死机无辜重启以及耗电快等问题。很多人都在吐槽苹果的系统越做越差了，和以前乔布斯时代的苹果相差太多了。其实我觉得并不是这样的，苹果初代的系统只有700M而且系统中集成的应用不多，使得BUG也不会太多。还有苹果的最初的系统是有问题的，但是都是小问题，而现在的系统出现的问题都很大。现在消费者都会觉得没了乔布斯的苹果问题很多，其实这些都是乔布斯被神化的结果，抛开乔布斯被神化系统重启死机以及耗电快，IOS还是现在最好的手机。",
			"thumb_image_list": [{
				"height": 192,
				"width": 192,
				"uri": "3ea600005983f8037d47",
				"url": "http://p3.pstatp.com/list/s192/3ea600005983f8037d47",
				"type": 1,
				"url_list": [{
					"url": "http://p3.pstatp.com/list/s192/3ea600005983f8037d47"
				}, {
					"url": "http://p3.pstatp.com/list/s192/3ea600005983f8037d47"
				}, {
					"url": "http://p3.pstatp.com/list/s192/3ea600005983f8037d47"
				}]
			}, {
				"height": 192,
				"width": 192,
				"uri": "dd50008767cf49f0346",
				"url": "http://p9.pstatp.com/list/s192/dd50008767cf49f0346",
				"type": 1,
				"url_list": [{
					"url": "http://p9.pstatp.com/list/s192/dd50008767cf49f0346"
				}, {
					"url": "http://p9.pstatp.com/list/s192/dd50008767cf49f0346"
				}, {
					"url": "http://p9.pstatp.com/list/s192/dd50008767cf49f0346"
				}]
			}, {
				"height": 192,
				"width": 192,
				"uri": "dd50008767e10b5d84d",
				"url": "http://p1.pstatp.com/list/s192/dd50008767e10b5d84d",
				"type": 1,
				"url_list": [{
					"url": "http://p1.pstatp.com/list/s192/dd50008767e10b5d84d"
				}, {
					"url": "http://p1.pstatp.com/list/s192/dd50008767e10b5d84d"
				}, {
					"url": "http://p1.pstatp.com/list/s192/dd50008767e10b5d84d"
				}]
			}],
			"large_image_list": [{
				"height": 191,
				"width": 340,
				"uri": "3ea600005983f8037d47",
				"url": "http://p3.pstatp.com/large/3ea600005983f8037d47",
				"type": 1,
				"url_list": [{
					"url": "http://p3.pstatp.com/large/3ea600005983f8037d47"
				}, {
					"url": "http://p3.pstatp.com/large/3ea600005983f8037d47"
				}, {
					"url": "http://p3.pstatp.com/large/3ea600005983f8037d47"
				}]
			}, {
				"height": 240,
				"width": 272,
				"uri": "dd50008767cf49f0346",
				"url": "http://p9.pstatp.com/large/dd50008767cf49f0346",
				"type": 1,
				"url_list": [{
					"url": "http://p9.pstatp.com/large/dd50008767cf49f0346"
				}, {
					"url": "http://p9.pstatp.com/large/dd50008767cf49f0346"
				}, {
					"url": "http://p9.pstatp.com/large/dd50008767cf49f0346"
				}]
			}, {
				"height": 202,
				"width": 323,
				"uri": "dd50008767e10b5d84d",
				"url": "http://p1.pstatp.com/large/dd50008767e10b5d84d",
				"type": 1,
				"url_list": [{
					"url": "http://p1.pstatp.com/large/dd50008767e10b5d84d"
				}, {
					"url": "http://p1.pstatp.com/large/dd50008767e10b5d84d"
				}, {
					"url": "http://p1.pstatp.com/large/dd50008767e10b5d84d"
				}]
			}],
			"video_list": []
		}
	}, {
		"ansid": "6492220515573301518",
		"forward_count": 0,
		"comment_count": 0,
		"digg_count": 21,
		"brow_count": 12881,
		"bury_count": 0,
		"is_digg": false,
		"is_show_bury": true,
		"is_buryed": false,
		"title": "",
		"schema": "sslocal://wenda_detail?ansid=6492220515573301518\u0026api_param=%7B%22answer_list%22%3A%5B6485925565353165070%2C6486230099589857549%2C6493895549861757197%2C6491999154938577165%2C6485880399040872717%2C6485894590896275725%2C6486586020044210446%2C6492220515573301518%2C6485892319768740110%2C6485938674008588558%5D%2C%22answer_type%22%3A%22nice_answer%22%2C%22enter_ansid%22%3A%22%22%2C%22enter_from%22%3A%22question%22%2C%22in_offset%22%3A7%2C%22next_offset%22%3A10%7D\u0026gd_ext_json=%7B%22enter_from%22%3A%22click_answer%22%2C%22ansid%22%3A%226492220515573301518%22%2C%22enterfrom_answerid%22%3A%226485873422990573838%22%2C%22parent_enterfrom%22%3A%22dongtai%22%2C%22qid%22%3A%22%22%2C%22category_name%22%3A%22%22%2C%22author_id%22%3A%225571228500%22%2C%22article_type%22%3A%22wenda%22%2C%22log_pb%22%3Anull%7D",
		"comment_schema": "sslocal://wenda_detail?ansid=6492220515573301518\u0026api_param=%7B%22answer_list%22%3A%5B6485925565353165070%2C6486230099589857549%2C6493895549861757197%2C6491999154938577165%2C6485880399040872717%2C6485894590896275725%2C6486586020044210446%2C6492220515573301518%2C6485892319768740110%2C6485938674008588558%5D%2C%22answer_type%22%3A%22nice_answer%22%2C%22enter_ansid%22%3A%22%22%2C%22enter_from%22%3A%22question%22%2C%22in_offset%22%3A7%2C%22next_offset%22%3A10%7D\u0026gd_ext_json=%7B%22enter_from%22%3A%22click_answer%22%2C%22ansid%22%3A%226492220515573301518%22%2C%22enterfrom_answerid%22%3A%226485873422990573838%22%2C%22parent_enterfrom%22%3A%22dongtai%22%2C%22qid%22%3A%22%22%2C%22category_name%22%3A%22%22%2C%22author_id%22%3A%225571228500%22%2C%22article_type%22%3A%22wenda%22%2C%22log_pb%22%3Anull%7D\u0026is_jump_comment=1",
		"create_time": 1511587881,
		"ans_url": "https://ic.snssdk.com/wenda/v1/wapanswer/content/?ansid=6492220515573301518",
		"user": {
			"uname": "老张60352092",
			"avatar_url": "http://p3.pstatp.com/thumb/97e000005ca34158045",
			"user_id": "5571228500",
			"is_verify": 0,
			"create_time": 1445735291,
			"user_intro": "",
			"is_following": 0,
			"user_auth_info": "",
			"schema": "sslocal://profile?api_param=%7B%22enter_from%22%3A%22question%22%7D\u0026refer=wenda\u0026uid=5571228500",
			"total_digg": 46,
			"total_answer": 5
		},
		"share_data": {
			"content": "我升级后手机死机并且无法开机，要求我接iTunes，打给苹果手机客服技术保障人员，他们建议重装系统，我问：如果重装，我没有云备份，那我手机里\ufffd\ufffd",
			"image_url": "http://p3.pstatp.com/origin/18a300102cab5d8d0e05",
			"share_url": "https://www.wukong.com/answer/6492220515573301518/?iid=20063010037\u0026app=news_article",
			"title": "为什么iOS11老是重启？(老张60352092的回答)- 悟空问答"
		},
		"content_abstract": {
			"text": "我升级后手机死机并且无法开机，要求我接iTunes，打给苹果手机客服技术保障人员，他们建议重装系统，我问：如果重装，我没有云备份，那我手机里的照片等消息是不是就没了？回答是肯定的。结果是：手机系统恢复后一切都在，只是照片是一部分一部分恢复的，相册删除过的照片有很多不能手动进一步删除，有时拍的照片不能很快在相册中找到。微信有时反应慢。唉！真希望没有升级过！",
			"thumb_image_list": [],
			"large_image_list": [],
			"video_list": []
		}
	}, {
		"ansid": "6485892319768740110",
		"forward_count": 0,
		"comment_count": 2,
		"digg_count": 2,
		"brow_count": 5261,
		"bury_count": 0,
		"is_digg": false,
		"is_show_bury": true,
		"is_buryed": false,
		"title": "",
		"schema": "sslocal://wenda_detail?ansid=6485892319768740110\u0026api_param=%7B%22answer_list%22%3A%5B6485925565353165070%2C6486230099589857549%2C6493895549861757197%2C6491999154938577165%2C6485880399040872717%2C6485894590896275725%2C6486586020044210446%2C6492220515573301518%2C6485892319768740110%2C6485938674008588558%5D%2C%22answer_type%22%3A%22nice_answer%22%2C%22enter_ansid%22%3A%22%22%2C%22enter_from%22%3A%22question%22%2C%22in_offset%22%3A8%2C%22next_offset%22%3A10%7D\u0026gd_ext_json=%7B%22enter_from%22%3A%22click_answer%22%2C%22ansid%22%3A%226485892319768740110%22%2C%22enterfrom_answerid%22%3A%226485873422990573838%22%2C%22parent_enterfrom%22%3A%22dongtai%22%2C%22qid%22%3A%22%22%2C%22category_name%22%3A%22%22%2C%22author_id%22%3A%2222345978323%22%2C%22article_type%22%3A%22wenda%22%2C%22log_pb%22%3Anull%7D",
		"comment_schema": "sslocal://wenda_detail?ansid=6485892319768740110\u0026api_param=%7B%22answer_list%22%3A%5B6485925565353165070%2C6486230099589857549%2C6493895549861757197%2C6491999154938577165%2C6485880399040872717%2C6485894590896275725%2C6486586020044210446%2C6492220515573301518%2C6485892319768740110%2C6485938674008588558%5D%2C%22answer_type%22%3A%22nice_answer%22%2C%22enter_ansid%22%3A%22%22%2C%22enter_from%22%3A%22question%22%2C%22in_offset%22%3A8%2C%22next_offset%22%3A10%7D\u0026gd_ext_json=%7B%22enter_from%22%3A%22click_answer%22%2C%22ansid%22%3A%226485892319768740110%22%2C%22enterfrom_answerid%22%3A%226485873422990573838%22%2C%22parent_enterfrom%22%3A%22dongtai%22%2C%22qid%22%3A%22%22%2C%22category_name%22%3A%22%22%2C%22author_id%22%3A%2222345978323%22%2C%22article_type%22%3A%22wenda%22%2C%22log_pb%22%3Anull%7D\u0026is_jump_comment=1",
		"create_time": 1510114483,
		"ans_url": "https://ic.snssdk.com/wenda/v1/wapanswer/content/?ansid=6485892319768740110",
		"user": {
			"uname": "三国曹阿瞒",
			"avatar_url": "http://p1.pstatp.com/thumb/18a500074118a967d426",
			"user_id": "22345978323",
			"is_verify": 0,
			"create_time": 1475918850,
			"user_intro": "",
			"is_following": 0,
			"user_auth_info": "",
			"schema": "sslocal://profile?api_param=%7B%22enter_from%22%3A%22question%22%7D\u0026refer=wenda\u0026uid=22345978323",
			"total_digg": 99,
			"total_answer": 10
		},
		"share_data": {
			"content": "老张，为何不用最新款的三防老年机，一月超长待机，不死机，不重启，防水，防摔，防小偷，对，就是他，你值得拥有！哈哈哈",
			"image_url": "http://p1.pstatp.com/list/300x196/3ea4000a644dffedd07b.webp",
			"share_url": "https://www.wukong.com/answer/6485892319768740110/?iid=20063010037\u0026app=news_article",
			"title": "为什么iOS11老是重启？(三国曹阿瞒的回答)- 悟空问答"
		},
		"content_abstract": {
			"text": "老张，为何不用最新款的三防老年机，一月超长待机，不死机，不重启，防水，防摔，防小偷，对，就是他，你值得拥有！哈哈哈",
			"thumb_image_list": [{
				"height": 1024,
				"width": 768,
				"uri": "3ea4000a644dffedd07b",
				"url": "http://p1.pstatp.com/list/r768/3ea4000a644dffedd07b",
				"type": 1,
				"url_list": [{
					"url": "http://p1.pstatp.com/list/r768/3ea4000a644dffedd07b"
				}, {
					"url": "http://p1.pstatp.com/list/r768/3ea4000a644dffedd07b"
				}, {
					"url": "http://p1.pstatp.com/list/r768/3ea4000a644dffedd07b"
				}]
			}],
			"large_image_list": [{
				"height": 1280,
				"width": 960,
				"uri": "3ea4000a644dffedd07b",
				"url": "http://p1.pstatp.com/large/3ea4000a644dffedd07b",
				"type": 1,
				"url_list": [{
					"url": "http://p1.pstatp.com/large/3ea4000a644dffedd07b"
				}, {
					"url": "http://p1.pstatp.com/large/3ea4000a644dffedd07b"
				}, {
					"url": "http://p1.pstatp.com/large/3ea4000a644dffedd07b"
				}]
			}],
			"video_list": []
		}
	}, {
		"ansid": "6485938674008588558",
		"forward_count": 0,
		"comment_count": 0,
		"digg_count": 1,
		"brow_count": 1361,
		"bury_count": 0,
		"is_digg": false,
		"is_show_bury": true,
		"is_buryed": false,
		"title": "",
		"schema": "sslocal://wenda_detail?ansid=6485938674008588558\u0026api_param=%7B%22answer_list%22%3A%5B6485925565353165070%2C6486230099589857549%2C6493895549861757197%2C6491999154938577165%2C6485880399040872717%2C6485894590896275725%2C6486586020044210446%2C6492220515573301518%2C6485892319768740110%2C6485938674008588558%5D%2C%22answer_type%22%3A%22nice_answer%22%2C%22enter_ansid%22%3A%22%22%2C%22enter_from%22%3A%22question%22%2C%22in_offset%22%3A9%2C%22next_offset%22%3A10%7D\u0026gd_ext_json=%7B%22enter_from%22%3A%22click_answer%22%2C%22ansid%22%3A%226485938674008588558%22%2C%22enterfrom_answerid%22%3A%226485873422990573838%22%2C%22parent_enterfrom%22%3A%22dongtai%22%2C%22qid%22%3A%22%22%2C%22category_name%22%3A%22%22%2C%22author_id%22%3A%2262107084582%22%2C%22article_type%22%3A%22wenda%22%2C%22log_pb%22%3Anull%7D",
		"comment_schema": "sslocal://wenda_detail?ansid=6485938674008588558\u0026api_param=%7B%22answer_list%22%3A%5B6485925565353165070%2C6486230099589857549%2C6493895549861757197%2C6491999154938577165%2C6485880399040872717%2C6485894590896275725%2C6486586020044210446%2C6492220515573301518%2C6485892319768740110%2C6485938674008588558%5D%2C%22answer_type%22%3A%22nice_answer%22%2C%22enter_ansid%22%3A%22%22%2C%22enter_from%22%3A%22question%22%2C%22in_offset%22%3A9%2C%22next_offset%22%3A10%7D\u0026gd_ext_json=%7B%22enter_from%22%3A%22click_answer%22%2C%22ansid%22%3A%226485938674008588558%22%2C%22enterfrom_answerid%22%3A%226485873422990573838%22%2C%22parent_enterfrom%22%3A%22dongtai%22%2C%22qid%22%3A%22%22%2C%22category_name%22%3A%22%22%2C%22author_id%22%3A%2262107084582%22%2C%22article_type%22%3A%22wenda%22%2C%22log_pb%22%3Anull%7D\u0026is_jump_comment=1",
		"create_time": 1510125276,
		"ans_url": "https://ic.snssdk.com/wenda/v1/wapanswer/content/?ansid=6485938674008588558",
		"user": {
			"uname": "电商闲谈",
			"avatar_url": "http://p3.pstatp.com/thumb/46c7000a0da96f9db669",
			"user_id": "62107084582",
			"is_verify": 0,
			"create_time": 1497653239,
			"user_intro": "",
			"is_following": 0,
			"user_auth_info": "",
			"schema": "sslocal://profile?api_param=%7B%22enter_from%22%3A%22question%22%7D\u0026refer=wenda\u0026uid=62107084582",
			"total_digg": 378,
			"total_answer": 31
		},
		"share_data": {
			"content": "有点奇怪的是并不是所有人都这样，我自己的6s手机升级以后感觉跟新手机似的变得好快，但我朋友的6sP升级以后变得好卡，真是不懂了。",
			"image_url": "http://p3.pstatp.com/origin/18a300102cab5d8d0e05",
			"share_url": "https://www.wukong.com/answer/6485938674008588558/?iid=20063010037\u0026app=news_article",
			"title": "为什么iOS11老是重启？(电商闲谈的回答)- 悟空问答"
		},
		"content_abstract": {
			"text": "有点奇怪的是并不是所有人都这样，我自己的6s手机升级以后感觉跟新手机似的变得好快，但我朋友的6sP升级以后变得好卡，真是不懂了。",
			"thumb_image_list": [],
			"large_image_list": [],
			"video_list": []
		}
	}],
	"has_more": true,
	"related_question_banner_type": 0,
	"related_question_reason_url": "sslocal://detail?groupid=6451733322926129422",
	"can_answer": true,
	"candidate_invite_user": [],
	"module_list": [{
		"day_icon_url": "http://p3.pstatp.com/origin/1bf50001abbc1c7f8dba",
		"night_icon_url": "http://p3.pstatp.com/origin/1bf40001abebc0717135",
		"text": "更多问答",
		"schema": "sslocal://feed?api_param=%7B%22enter_from%22%3A%22question%22%2C%22origin_from%22%3A%22%22%2C%22source%22%3A%22question_brow%22%7D\u0026category=question_and_answer\u0026concern_id=6260258266329123329\u0026name=%E5%9B%9E%E7%AD%94\u0026type=4",
		"icon_type": 2
	}, {
		"day_icon_url": "http://p.pstatp.com/origin/43d6001153a9909123ea",
		"night_icon_url": "http://p.pstatp.com/origin/3f040012bf0ccede7d24",
		"text": "提问",
		"schema": "sslocal://wenda_question_post?api_param=%7B%22enter_from%22%3A%22question%22%2C%22origin_from%22%3A%22%22%2C%22source%22%3A%22question_brow%22%7D\u0026gd_ext_json=%7B%22enter_from%22%3A%22dongtai%22%7D",
		"icon_type": 1
	}],
	"module_count": 2,
	"question_header_content_fold_max_count": 1,
	"show_format": {
		"font_size": "18",
		"show_module": 1,
		"answer_full_context_color": 0
	},
	"question": {
		"qid": "6485873422990573838",
		"post_answer_url": "sslocal://wenda_post?api_param=%7B%22enter_from%22%3A%22question%22%7D\u0026gd_ext_json=%7B%22enter_from%22%3A%22dongtai%22%7D\u0026qTitle=%E4%B8%BA%E4%BB%80%E4%B9%88iOS11%E8%80%81%E6%98%AF%E9%87%8D%E5%90%AF%EF%BC%9F\u0026qid=6485873422990573838",
		"is_follow": false,
		"nice_ans_count": 31,
		"normal_ans_count": 96,
		"follow_count": 42,
		"create_time": 1510110084,
		"can_edit": false,
		"show_edit": false,
		"can_delete": false,
		"show_delete": false,
		"title": "为什么iOS11老是重启？",
		"concern_tag_list": [{
			"concern_id": "6213176548640426497",
			"name": "苹果公司",
			"schema": "sslocal://concern?api_param=%7B%22wenda_api_param%22%3A%7B%22enter_from%22%3A%22question%22%7D%7D\u0026cid=6213176548640426497\u0026tab_sname=wenda"
		}, {
			"concern_id": "6215497897518041601",
			"name": "数码",
			"schema": "sslocal://concern?api_param=%7B%22wenda_api_param%22%3A%7B%22enter_from%22%3A%22question%22%7D%7D\u0026cid=6215497897518041601\u0026tab_sname=wenda"
		}],
		"user": {
			"uname": "张一鸣",
			"avatar_url": "http://p3.pstatp.com/thumb/db40005ee1157a3aeb0",
			"user_id": "8",
			"is_verify": 1,
			"user_intro": "今日头条创始人兼CEO",
			"user_auth_info": ""
		},
		"share_data": {
			"content": "不仅是我，很多朋友都是iPhone7 iPhone8 iOS11系统情况下老死机或重启，一天好多次，堪比windows98之前几个月才一次\n苹果公司怎么了",
			"image_url": "http://p3.pstatp.com/origin/18a300102cab5d8d0e05",
			"share_url": "https://www.wukong.com/question/6485873422990573838/?app=news_article\u0026iid=20063010037",
			"title": "为什么iOS11老是重启？(127个回答) - 悟空问答"
		},
		"content": {
			"text": "不仅是我，很多朋友都是iPhone7 iPhone8 iOS11系统情况下老死机或重启，一天好多次，堪比windows98之前几个月才一次\n苹果公司怎么了",
			"thumb_image_list": [],
			"large_image_list": []
		},
		"fold_reason": {
			"open_url": "sslocal://detail?groupid=6293724675596402946",
			"title": "为什么折叠?"
		}
	},
	"has_profit": false,
	"repost_params": {
		"repost_type": 218,
		"fw_id": 6485873422990573838,
		"fw_id_type": 1026,
		"fw_user_id": 8,
		"opt_id": 6485873422990573838,
		"opt_id_type": 1026,
		"schema": "",
		"title": "为什么iOS11老是重启？",
		"cover_url": "http://p3.pstatp.com/origin/18a300102cab5d8d0e05"
	}
}
```

## 首页推荐问答-提出了问题

- 请求方式：POST
- 请求地址：http://is.snssdk.com/wenda/v1/question/brow/
- 请求参数

| 参数          | 类型     | 是否必须 | 描述        | 示例                                       |
| ----------- | ------ | ---- | --------- | ---------------------------------------- |
| iid         | Int    | N    | 用户的 ID    | 18145386087                              |
| device_id   | Int    | N    | 设备 ID     | 8800803362                               |
| enter_from  | String | Y    | 从哪里进入问答详情 | click_headline                           |
| gd_ext_json | Int    | Y    |           | {"log_pb":{"impr_id":"201801081121110100080192133812B4"},"author_id":"50758206843","qid":"6487404190401298702","category_name":"__all__","ansid":"6487439111035552013","article_type":"wenda","enter_from":"click_headline"} |
| api_param   | Int    | Y    |           | {"from":"outer","enter_ansid":"6487439111035552013","has_more":true,"next_offset":1,"source":"question","origin_from":"click_headline","enter_from":"click_headline","answer_list":[6487439111035552013],"answer_type":"nice_answer","in_offset":0} |
| qid         | Int    | Y    | 问题 ID     | 6487404190401298702                      |

![首页推荐问答](img/wenda/wenda_headline.jpeg)

```
{
	"err_no": 0,
	"err_tips": "",
	"offset": 10,
	"api_param": "{\"enter_from\":\"question\",\"origin_from\":\"click_headline\"}",
	"ans_list": [{
		"ansid": "6487439111035552013",
		"forward_count": 15,
		"comment_count": 407,
		"digg_count": 687,
		"brow_count": 823465,
		"bury_count": 48,
		"is_digg": false,
		"is_show_bury": true,
		"is_buryed": false,
		"title": "",
		"schema": "sslocal://wenda_detail?ansid=6487439111035552013\u0026api_param=%7B%22answer_list%22%3A%5B6487439111035552013%2C6487832839575306510%2C6490399291209679118%2C6502178788405674253%2C6487883252815102221%2C6488096885272756493%2C6488271209497624846%2C6488474283713495310%2C6487703129067356430%2C6490295195001684237%5D%2C%22answer_type%22%3A%22nice_answer%22%2C%22enter_ansid%22%3A%226487439111035552013%22%2C%22enter_from%22%3A%22question%22%2C%22in_offset%22%3A0%2C%22next_offset%22%3A10%2C%22origin_from%22%3A%22click_headline%22%2C%22parent_enter_from%22%3A%22click_headline%22%7D\u0026gd_ext_json=%7B%22enter_from%22%3A%22click_answer%22%2C%22ansid%22%3A%226487439111035552013%22%2C%22enterfrom_answerid%22%3A%226487439111035552013%22%2C%22parent_enterfrom%22%3A%22click_headline%22%2C%22qid%22%3A%226487404190401298702%22%2C%22category_name%22%3A%22__all__%22%2C%22author_id%22%3A%2250758206843%22%2C%22article_type%22%3A%22wenda%22%2C%22log_pb%22%3A%7B%22impr_id%22%3A%22201801081121110100080192133812B4%22%7D%7D",
		"comment_schema": "sslocal://wenda_detail?ansid=6487439111035552013\u0026api_param=%7B%22answer_list%22%3A%5B6487439111035552013%2C6487832839575306510%2C6490399291209679118%2C6502178788405674253%2C6487883252815102221%2C6488096885272756493%2C6488271209497624846%2C6488474283713495310%2C6487703129067356430%2C6490295195001684237%5D%2C%22answer_type%22%3A%22nice_answer%22%2C%22enter_ansid%22%3A%226487439111035552013%22%2C%22enter_from%22%3A%22question%22%2C%22in_offset%22%3A0%2C%22next_offset%22%3A10%2C%22origin_from%22%3A%22click_headline%22%2C%22parent_enter_from%22%3A%22click_headline%22%7D\u0026gd_ext_json=%7B%22enter_from%22%3A%22click_answer%22%2C%22ansid%22%3A%226487439111035552013%22%2C%22enterfrom_answerid%22%3A%226487439111035552013%22%2C%22parent_enterfrom%22%3A%22click_headline%22%2C%22qid%22%3A%226487404190401298702%22%2C%22category_name%22%3A%22__all__%22%2C%22author_id%22%3A%2250758206843%22%2C%22article_type%22%3A%22wenda%22%2C%22log_pb%22%3A%7B%22impr_id%22%3A%22201801081121110100080192133812B4%22%7D%7D\u0026is_jump_comment=1",
		"create_time": 1510474624,
		"ans_url": "https://ic.snssdk.com/wenda/v1/wapanswer/content/?ansid=6487439111035552013",
		"user": {
			"uname": "秉烛读春秋",
			"avatar_url": "http://p1.pstatp.com/thumb/1dcf002a6f7b1c048b51",
			"user_id": "50758206843",
			"is_verify": 1,
			"create_time": 1473774763,
			"user_intro": "历史问答达人",
			"is_following": 0,
			"user_auth_info": "{\"auth_type\": \"0\", \"auth_info\": \"历史问答达人\"}",
			"schema": "sslocal://profile?api_param=%7B%22enter_from%22%3A%22question%22%2C%22origin_from%22%3A%22click_headline%22%2C%22parent_enter_from%22%3A%22click_headline%22%7D\u0026refer=wenda\u0026uid=50758206843",
			"total_digg": 70288,
			"total_answer": 564
		},
		"share_data": {
			"content": "刘备有四个儿子，大的叫刘封，是义子，也就是说不是亲生的。后来，由于刘备立太子时，关羽说刘封不是亲生的儿子，不适合继位太子。刘封因此嫉\ufffd\ufffd",
			"image_url": "http://p1.pstatp.com/thumb/1dcf002a6f7b1c048b51",
			"share_url": "https://www.wukong.com/answer/6487439111035552013/?iid=20063010037\u0026app=news_article\u0026share_ansid=6487439111035552013",
			"title": "秉烛读春秋回答了刘备有四个儿子，为何却让资质平平的刘禅继位？(687赞)- 悟空问答"
		},
		"content_abstract": {
			"text": "刘备有四个儿子，大的叫刘封，是义子，也就是说不是亲生的。后来，由于刘备立太子时，关羽说刘封不是亲生的儿子，不适合继位太子。刘封因此嫉恨关羽，当关羽走麦城时，关羽求援，刘封见死不救。后来关羽被杀，刘备也因此事，杀了义子刘封。刘禅是刘备亲生儿子，是长子，按照古代立太子的习惯是：立嫡不立长，立长不立幼的原则，也就是说刘禅符合立太子的要求。他的弟弟刘永，刘备次子。先为鲁王，后封为甘陵王，刘理，刘备三子。先为梁王 ，后封为安平王。这兄弟俩只能封王。说到为何让资质平平的刘禅继位，这是古代帝王家的老规矩，即便是傻子也得继位。如果没有特殊的情况。比如西晋的惠帝司马衷，他就是个傻子，不是一样接了班。这样的例子历史上有不少，比刘禅没能力或者资质平平的大有人在。其实我倒觉得刘禅不是那么的资历平平，反而觉得他有点大智若愚。一个人，判定他是否资历如何，还要看他的成绩。和他同时期的曹叡和曹芳。大兴土木，奢侈淫欲。使的魏国权奸横征暴敛，穷奢极欲。比如当时的大将军曹爽，丞相司马懿。为了争权夺势，互相争斗，互相拆台。置国家利益于不顾。再看同时期的吴主孙皓，残暴不仁，他发明了剥人脸皮的酷刑。在治理国家方面，刘禅比他俩做得好。刘禅没有实行酷吏的方法。在邓艾灭蜀时，成都百姓痛哭流泣所有这些，都说明刘禅并不是一个平庸之人。（文/秉烛读春秋，欢迎点评加关注）",
			"thumb_image_list": [{
				"height": 192,
				"width": 192,
				"uri": "475000004041c6c7d3bf",
				"url": "http://p3.pstatp.com/list/s192/475000004041c6c7d3bf",
				"type": 1,
				"url_list": [{
					"url": "http://p3.pstatp.com/list/s192/475000004041c6c7d3bf"
				}, {
					"url": "http://p3.pstatp.com/list/s192/475000004041c6c7d3bf"
				}, {
					"url": "http://p3.pstatp.com/list/s192/475000004041c6c7d3bf"
				}]
			}, {
				"height": 192,
				"width": 192,
				"uri": "dd50009d53ac52fe9df",
				"url": "http://p3.pstatp.com/list/s192/dd50009d53ac52fe9df",
				"type": 1,
				"url_list": [{
					"url": "http://p3.pstatp.com/list/s192/dd50009d53ac52fe9df"
				}, {
					"url": "http://p3.pstatp.com/list/s192/dd50009d53ac52fe9df"
				}, {
					"url": "http://p3.pstatp.com/list/s192/dd50009d53ac52fe9df"
				}]
			}, {
				"height": 192,
				"width": 192,
				"uri": "475000004047b85c53a2",
				"url": "http://p3.pstatp.com/list/s192/475000004047b85c53a2",
				"type": 1,
				"url_list": [{
					"url": "http://p3.pstatp.com/list/s192/475000004047b85c53a2"
				}, {
					"url": "http://p3.pstatp.com/list/s192/475000004047b85c53a2"
				}, {
					"url": "http://p3.pstatp.com/list/s192/475000004047b85c53a2"
				}]
			}],
			"large_image_list": [{
				"height": 868,
				"width": 1080,
				"uri": "475000004041c6c7d3bf",
				"url": "http://p3.pstatp.com/large/475000004041c6c7d3bf",
				"type": 1,
				"url_list": [{
					"url": "http://p3.pstatp.com/large/475000004041c6c7d3bf"
				}, {
					"url": "http://p3.pstatp.com/large/475000004041c6c7d3bf"
				}, {
					"url": "http://p3.pstatp.com/large/475000004041c6c7d3bf"
				}]
			}, {
				"height": 810,
				"width": 1080,
				"uri": "dd50009d53ac52fe9df",
				"url": "http://p3.pstatp.com/large/dd50009d53ac52fe9df",
				"type": 1,
				"url_list": [{
					"url": "http://p3.pstatp.com/large/dd50009d53ac52fe9df"
				}, {
					"url": "http://p3.pstatp.com/large/dd50009d53ac52fe9df"
				}, {
					"url": "http://p3.pstatp.com/large/dd50009d53ac52fe9df"
				}]
			}, {
				"height": 810,
				"width": 1080,
				"uri": "475000004047b85c53a2",
				"url": "http://p3.pstatp.com/large/475000004047b85c53a2",
				"type": 1,
				"url_list": [{
					"url": "http://p3.pstatp.com/large/475000004047b85c53a2"
				}, {
					"url": "http://p3.pstatp.com/large/475000004047b85c53a2"
				}, {
					"url": "http://p3.pstatp.com/large/475000004047b85c53a2"
				}]
			}],
			"video_list": []
		}
	}, {
		"ansid": "6487832839575306510",
		"forward_count": 0,
		"comment_count": 4,
		"digg_count": 37,
		"brow_count": 372722,
		"bury_count": 4,
		"is_digg": false,
		"is_show_bury": true,
		"is_buryed": false,
		"title": "",
		"schema": "sslocal://wenda_detail?ansid=6487832839575306510\u0026api_param=%7B%22answer_list%22%3A%5B6487439111035552013%2C6487832839575306510%2C6490399291209679118%2C6502178788405674253%2C6487883252815102221%2C6488096885272756493%2C6488271209497624846%2C6488474283713495310%2C6487703129067356430%2C6490295195001684237%5D%2C%22answer_type%22%3A%22nice_answer%22%2C%22enter_ansid%22%3A%226487439111035552013%22%2C%22enter_from%22%3A%22question%22%2C%22in_offset%22%3A1%2C%22next_offset%22%3A10%2C%22origin_from%22%3A%22click_headline%22%2C%22parent_enter_from%22%3A%22click_headline%22%7D\u0026gd_ext_json=%7B%22enter_from%22%3A%22click_answer%22%2C%22ansid%22%3A%226487832839575306510%22%2C%22enterfrom_answerid%22%3A%226487439111035552013%22%2C%22parent_enterfrom%22%3A%22click_headline%22%2C%22qid%22%3A%226487404190401298702%22%2C%22category_name%22%3A%22__all__%22%2C%22author_id%22%3A%226944422421%22%2C%22article_type%22%3A%22wenda%22%2C%22log_pb%22%3A%7B%22impr_id%22%3A%22201801081121110100080192133812B4%22%7D%7D",
		"comment_schema": "sslocal://wenda_detail?ansid=6487832839575306510\u0026api_param=%7B%22answer_list%22%3A%5B6487439111035552013%2C6487832839575306510%2C6490399291209679118%2C6502178788405674253%2C6487883252815102221%2C6488096885272756493%2C6488271209497624846%2C6488474283713495310%2C6487703129067356430%2C6490295195001684237%5D%2C%22answer_type%22%3A%22nice_answer%22%2C%22enter_ansid%22%3A%226487439111035552013%22%2C%22enter_from%22%3A%22question%22%2C%22in_offset%22%3A1%2C%22next_offset%22%3A10%2C%22origin_from%22%3A%22click_headline%22%2C%22parent_enter_from%22%3A%22click_headline%22%7D\u0026gd_ext_json=%7B%22enter_from%22%3A%22click_answer%22%2C%22ansid%22%3A%226487832839575306510%22%2C%22enterfrom_answerid%22%3A%226487439111035552013%22%2C%22parent_enterfrom%22%3A%22click_headline%22%2C%22qid%22%3A%226487404190401298702%22%2C%22category_name%22%3A%22__all__%22%2C%22author_id%22%3A%226944422421%22%2C%22article_type%22%3A%22wenda%22%2C%22log_pb%22%3A%7B%22impr_id%22%3A%22201801081121110100080192133812B4%22%7D%7D\u0026is_jump_comment=1",
		"create_time": 1510566296,
		"ans_url": "https://ic.snssdk.com/wenda/v1/wapanswer/content/?ansid=6487832839575306510",
		"user": {
			"uname": "live1222",
			"avatar_url": "http://p9.pstatp.com/thumb/249800032e2fd07536d6",
			"user_id": "6944422421",
			"is_verify": 1,
			"create_time": 1468676935,
			"user_intro": "历史问答达人",
			"is_following": 0,
			"user_auth_info": "{\"auth_type\": \"3\", \"auth_info\": \"历史问答达人\"}",
			"schema": "sslocal://profile?api_param=%7B%22enter_from%22%3A%22question%22%2C%22origin_from%22%3A%22click_headline%22%2C%22parent_enter_from%22%3A%22click_headline%22%7D\u0026refer=wenda\u0026uid=6944422421",
			"total_digg": 2390,
			"total_answer": 122
		},
		"share_data": {
			"content": "刘备有四个儿子。刘封，刘禅，刘永，刘理。刘封是罗侯寇氏子，长沙刘氏之甥。长沙刘氏应该也是汉室宗亲。公元200年刘备到荆州，还没有儿子收为\ufffd\ufffd",
			"image_url": "http://p9.pstatp.com/thumb/249800032e2fd07536d6",
			"share_url": "https://www.wukong.com/answer/6487832839575306510/?iid=20063010037\u0026app=news_article\u0026share_ansid=6487439111035552013",
			"title": "live1222回答了刘备有四个儿子，为何却让资质平平的刘禅继位？(37赞)- 悟空问答"
		},
		"content_abstract": {
			"text": "刘备有四个儿子。刘封，刘禅，刘永，刘理。刘封是罗侯寇氏子，长沙刘氏之甥。长沙刘氏应该也是汉室宗亲。公元200年刘备到荆州，还没有儿子收为养子。不孝有三无后为大。古代也好现代也一样。养子大多从血缘亲近过继。如司马师就过继弟弟司马昭的儿子。兄弟的儿子除了叫侄子也叫从子。我同学的二叔无子，他父亲儿子多。就把他过继到他二叔那边。阿斗出生前，刘备没有儿子。收刘封为养子。公元206年阿斗出生后，刘封地位有所改变。特别是公元219年刘备自立汉中王，立阿斗为太子。普通人家都是把家业传给亲子，何况帝王。刘封后来关羽攻襄樊呼刘封相助，刘封推，刘备恨之。孟达写信:足下与汉中王，道路人耳......自立阿斗为太子已来，有识之人相为寒心。刘备责刘封侵陵孟达，又不救关羽诸葛亮考虑到刘封刚猛，易世之后终难制御，劝刘备因此除之。于是赐刘封死。刘备为之流涕。必竟十余年，感情还是有点的。公元206年阿斗出世，公元211年刘备入蜀后生刘永刘理。具体那生不得而知。但肯定在公元211年后，刘永刘理比阿斗小六岁以上。也就是说公元219年刘备立阿斗为太子时，阿斗十二岁，刘永刘理也就六七岁左右。公元223年刘备驾崩，阿斗十七岁。刘永刘理十一二岁。关于刘永刘理的事，三国志记录非常少。也不知道他们才能如何。刘备称帝后封刘永为鲁王，刘理为梁王。临终时对鲁王讲:吾死后，你们兄弟对待丞相要像对待父亲那样，以后跟着丞相共同为国家效力。说明刘备对刘永期待很高。后来刘永看不过眼黄皓乱政，阿斗十余年不见刘永。刘备四个儿子选刘禅不选其他儿子原因:1刘封非亲生，排除在外。2古代立储有:立嫡立长立贤立爱。阿斗是长子，刘备没有嫡子(刘备数丧嫡室，甘皇后常摄内事。所以阿斗也相当是嫡子)。袁绍刘表废长立幼的事，以致内乱倾覆。刘备记忆犹新。特别荆州刘表，刘备在荆州待了七八年。对这事非常清楚。连曹操问部下立谁为世子，部下不说话。曹操再问，部下讲:在想袁绍刘表。曹操一下就明白了。刘备不改立别的儿子也是怕步袁绍刘表后尘。3刘永刘理年龄太小，刘备驾崩时也就十一二岁。像孙策死时不传给儿子传给弟弟孙权。刘备就是怕主少国疑。太平时还好，但这时是三天下分益州疲惫，诚急危亡之秋。蜀汉官员邓芝对诸葛亮讲:今主上幼弱，初在位。邓芝使东吴，孙权讲:我也愿与蜀和新，然恐蜀主幼弱。阿斗十七岁都让蜀汉东吴认为是幼弱。换了刘理刘永呢？",
			"thumb_image_list": [],
			"large_image_list": [],
			"video_list": []
		}
	}, {
		"ansid": "6490399291209679118",
		"forward_count": 0,
		"comment_count": 1,
		"digg_count": 24,
		"brow_count": 166291,
		"bury_count": 3,
		"is_digg": false,
		"is_show_bury": true,
		"is_buryed": false,
		"title": "",
		"schema": "sslocal://wenda_detail?ansid=6490399291209679118\u0026api_param=%7B%22answer_list%22%3A%5B6487439111035552013%2C6487832839575306510%2C6490399291209679118%2C6502178788405674253%2C6487883252815102221%2C6488096885272756493%2C6488271209497624846%2C6488474283713495310%2C6487703129067356430%2C6490295195001684237%5D%2C%22answer_type%22%3A%22nice_answer%22%2C%22enter_ansid%22%3A%226487439111035552013%22%2C%22enter_from%22%3A%22question%22%2C%22in_offset%22%3A2%2C%22next_offset%22%3A10%2C%22origin_from%22%3A%22click_headline%22%2C%22parent_enter_from%22%3A%22click_headline%22%7D\u0026gd_ext_json=%7B%22enter_from%22%3A%22click_answer%22%2C%22ansid%22%3A%226490399291209679118%22%2C%22enterfrom_answerid%22%3A%226487439111035552013%22%2C%22parent_enterfrom%22%3A%22click_headline%22%2C%22qid%22%3A%226487404190401298702%22%2C%22category_name%22%3A%22__all__%22%2C%22author_id%22%3A%2261477685919%22%2C%22article_type%22%3A%22wenda%22%2C%22log_pb%22%3A%7B%22impr_id%22%3A%22201801081121110100080192133812B4%22%7D%7D",
		"comment_schema": "sslocal://wenda_detail?ansid=6490399291209679118\u0026api_param=%7B%22answer_list%22%3A%5B6487439111035552013%2C6487832839575306510%2C6490399291209679118%2C6502178788405674253%2C6487883252815102221%2C6488096885272756493%2C6488271209497624846%2C6488474283713495310%2C6487703129067356430%2C6490295195001684237%5D%2C%22answer_type%22%3A%22nice_answer%22%2C%22enter_ansid%22%3A%226487439111035552013%22%2C%22enter_from%22%3A%22question%22%2C%22in_offset%22%3A2%2C%22next_offset%22%3A10%2C%22origin_from%22%3A%22click_headline%22%2C%22parent_enter_from%22%3A%22click_headline%22%7D\u0026gd_ext_json=%7B%22enter_from%22%3A%22click_answer%22%2C%22ansid%22%3A%226490399291209679118%22%2C%22enterfrom_answerid%22%3A%226487439111035552013%22%2C%22parent_enterfrom%22%3A%22click_headline%22%2C%22qid%22%3A%226487404190401298702%22%2C%22category_name%22%3A%22__all__%22%2C%22author_id%22%3A%2261477685919%22%2C%22article_type%22%3A%22wenda%22%2C%22log_pb%22%3A%7B%22impr_id%22%3A%22201801081121110100080192133812B4%22%7D%7D\u0026is_jump_comment=1",
		"create_time": 1511163845,
		"ans_url": "https://ic.snssdk.com/wenda/v1/wapanswer/content/?ansid=6490399291209679118",
		"user": {
			"uname": "三生有画",
			"avatar_url": "http://p3.pstatp.com/thumb/3a070004c43f094666d4",
			"user_id": "61477685919",
			"is_verify": 1,
			"create_time": 1496458234,
			"user_intro": "历史问答达人",
			"is_following": 0,
			"user_auth_info": "{\"auth_type\": \"3\", \"auth_info\": \"历史问答达人\"}",
			"schema": "sslocal://profile?api_param=%7B%22enter_from%22%3A%22question%22%2C%22origin_from%22%3A%22click_headline%22%2C%22parent_enter_from%22%3A%22click_headline%22%7D\u0026refer=wenda\u0026uid=61477685919",
			"total_digg": 11094,
			"total_answer": 756
		},
		"share_data": {
			"content": "刘备有好几个儿子，如刘封、刘禅，刘永，刘理。长子刘封，不是自己亲生的，是义子。当年刘备被曹操打的满地找牙，没地儿躲了，就归附了远亲老\ufffd\ufffd",
			"image_url": "http://p3.pstatp.com/thumb/3a070004c43f094666d4",
			"share_url": "https://www.wukong.com/answer/6490399291209679118/?iid=20063010037\u0026app=news_article\u0026share_ansid=6487439111035552013",
			"title": "三生有画回答了刘备有四个儿子，为何却让资质平平的刘禅继位？(24赞)- 悟空问答"
		},
		"content_abstract": {
			"text": "刘备有好几个儿子，如刘封、刘禅，刘永，刘理。长子刘封，不是自己亲生的，是义子。当年刘备被曹操打的满地找牙，没地儿躲了，就归附了远亲老表荆州刘表。遇到了刘封，看着顺眼，就把刘封收为义子，改姓刘，之前是姓罗的。当时关羽就不赞同，因为刘备注定是要封侯居王的，将来爵位是要传给子嗣的。现在刘备还没有儿子，收了刘封做义子，就等于是长子了。假如以后生了儿子，怕引起传位争议。当然了，刘备有了亲生儿子，刘封就出局了。刘封最后因为关羽兵败被杀，没有及时救援，遭到刘备猜疑，后来又丢失城池，被刘备杀了。按照宗教法理，刘禅才是刘备真正意义上的嫡长子。刘备的正房夫人甘夫人，是刘禅的生母，在长坂坡之战时死了。刘禅都是被赵云救出来的。后来孙权的妹妹嫁过来，是正房。可孙夫人是没有生儿子的，也就没有嫡长子。所以此时就只能由长子继承大统，刘禅当仁不让了。但是刘禅是个二傻子，怎么办？刘备不是没有考虑过。但是其他几个儿子，如刘永，刘理，年龄幼小。刘禅出生在公元207年，刘备223年死的时候，也不过16岁，其他两个儿子，刘永，刘理就更小了。若果立了少子，则主少国疑，在这个乱世之中，很难混得下去的。当年孙策被人刺杀，册立继承人时，也是传位给19岁的弟弟孙权，而不是自己幼小的儿子。因此东吴才可以稳住局面，三分天下。假如立的小屁孩，三国东吴就没什么事了。不立长而立幼子，则会引发夺嫡之争。当年刘表死前，更立世子，废掉了长子刘琦，改立幼子刘琮，导致内部分裂，最终荆州拱手让给了曹操。这是活生生的教训，刘备不得不考虑。此时的得力干将，诸葛亮等人，也是坚持拥立长子。诸葛亮此人大才，年纪尚轻，刘禅即使傻，如果由这个人来辅助，也定然可以稳坐江山。刘备把复兴大汉的希望，放在了诸葛亮等一班大臣，以及刘家的第三代人身上。希望刘家第三代君王，能够出现能君明君。所以，刘备综合考虑之后，还是把王位传给了刘禅。刘禅这个二傻子，当邓艾率领一支少的可怜的偏师兵临城下时，吓得腿一软，被奸臣谯周一劝导，就投降了。他却傻人有傻福，不仅寿命长，活到了灭国之战，最后还做了晋国的安乐公安享晚年，老死桃花下。而刘禅的儿子，确实很多，生了7个。尤其是第五子刘谌。一直坚持反对投降，在刘禅投降的那一天，带领全家跑到祖庙，自杀殉国。其刚烈志气，与他那个二傻子爹，截然不同。刘禅其他的儿子，则全部被钟会发动叛乱，攻打邓艾时，全部被乱兵杀死。从此刘备嫡系咨询，全部死了。刘璿，刘禅长子，十五岁被立为太子，蜀亡后，钟会在成都作乱，被乱兵杀害。刘瑶，刘禅二子，蜀亡后投降。死因同刘璿。刘琮，刘禅三子，蜀亡后投降。死因同刘璿。刘瓒，刘禅四子，蜀亡后投降。死因同刘璿。刘恂，刘禅六子，蜀亡后投降。死因同刘璿。刘璩，刘禅七子，蜀亡后投降。死因同刘璿。延伸阅读：《小龙死了》原创神雕后传，已经连载。1、小龙女死在了古墓？2、杨过和小龙女的儿子是阳顶天吗？3、黄衫女到底是谁的后人？关注本头条号，在动态子菜单，可阅读精彩内容哦！",
			"thumb_image_list": [{
				"height": 192,
				"width": 192,
				"uri": "4750000461259f85f53a",
				"url": "http://p3.pstatp.com/list/s192/4750000461259f85f53a",
				"type": 1,
				"url_list": [{
					"url": "http://p3.pstatp.com/list/s192/4750000461259f85f53a"
				}, {
					"url": "http://p3.pstatp.com/list/s192/4750000461259f85f53a"
				}, {
					"url": "http://p3.pstatp.com/list/s192/4750000461259f85f53a"
				}]
			}, {
				"height": 192,
				"width": 192,
				"uri": "475000046142314c8f2b",
				"url": "http://p3.pstatp.com/list/s192/475000046142314c8f2b",
				"type": 1,
				"url_list": [{
					"url": "http://p3.pstatp.com/list/s192/475000046142314c8f2b"
				}, {
					"url": "http://p3.pstatp.com/list/s192/475000046142314c8f2b"
				}, {
					"url": "http://p3.pstatp.com/list/s192/475000046142314c8f2b"
				}]
			}],
			"large_image_list": [{
				"height": 240,
				"width": 375,
				"uri": "4750000461259f85f53a",
				"url": "http://p3.pstatp.com/large/4750000461259f85f53a",
				"type": 1,
				"url_list": [{
					"url": "http://p3.pstatp.com/large/4750000461259f85f53a"
				}, {
					"url": "http://p3.pstatp.com/large/4750000461259f85f53a"
				}, {
					"url": "http://p3.pstatp.com/large/4750000461259f85f53a"
				}]
			}, {
				"height": 240,
				"width": 387,
				"uri": "475000046142314c8f2b",
				"url": "http://p3.pstatp.com/large/475000046142314c8f2b",
				"type": 1,
				"url_list": [{
					"url": "http://p3.pstatp.com/large/475000046142314c8f2b"
				}, {
					"url": "http://p3.pstatp.com/large/475000046142314c8f2b"
				}, {
					"url": "http://p3.pstatp.com/large/475000046142314c8f2b"
				}]
			}],
			"video_list": []
		}
	}, {
		"ansid": "6502178788405674253",
		"forward_count": 0,
		"comment_count": 0,
		"digg_count": 1,
		"brow_count": 3208,
		"bury_count": 0,
		"is_digg": false,
		"is_show_bury": true,
		"is_buryed": false,
		"title": "",
		"schema": "sslocal://wenda_detail?ansid=6502178788405674253\u0026api_param=%7B%22answer_list%22%3A%5B6487439111035552013%2C6487832839575306510%2C6490399291209679118%2C6502178788405674253%2C6487883252815102221%2C6488096885272756493%2C6488271209497624846%2C6488474283713495310%2C6487703129067356430%2C6490295195001684237%5D%2C%22answer_type%22%3A%22nice_answer%22%2C%22enter_ansid%22%3A%226487439111035552013%22%2C%22enter_from%22%3A%22question%22%2C%22in_offset%22%3A3%2C%22next_offset%22%3A10%2C%22origin_from%22%3A%22click_headline%22%2C%22parent_enter_from%22%3A%22click_headline%22%7D\u0026gd_ext_json=%7B%22enter_from%22%3A%22click_answer%22%2C%22ansid%22%3A%226502178788405674253%22%2C%22enterfrom_answerid%22%3A%226487439111035552013%22%2C%22parent_enterfrom%22%3A%22click_headline%22%2C%22qid%22%3A%226487404190401298702%22%2C%22category_name%22%3A%22__all__%22%2C%22author_id%22%3A%2272439102970%22%2C%22article_type%22%3A%22wenda%22%2C%22log_pb%22%3A%7B%22impr_id%22%3A%22201801081121110100080192133812B4%22%7D%7D",
		"comment_schema": "sslocal://wenda_detail?ansid=6502178788405674253\u0026api_param=%7B%22answer_list%22%3A%5B6487439111035552013%2C6487832839575306510%2C6490399291209679118%2C6502178788405674253%2C6487883252815102221%2C6488096885272756493%2C6488271209497624846%2C6488474283713495310%2C6487703129067356430%2C6490295195001684237%5D%2C%22answer_type%22%3A%22nice_answer%22%2C%22enter_ansid%22%3A%226487439111035552013%22%2C%22enter_from%22%3A%22question%22%2C%22in_offset%22%3A3%2C%22next_offset%22%3A10%2C%22origin_from%22%3A%22click_headline%22%2C%22parent_enter_from%22%3A%22click_headline%22%7D\u0026gd_ext_json=%7B%22enter_from%22%3A%22click_answer%22%2C%22ansid%22%3A%226502178788405674253%22%2C%22enterfrom_answerid%22%3A%226487439111035552013%22%2C%22parent_enterfrom%22%3A%22click_headline%22%2C%22qid%22%3A%226487404190401298702%22%2C%22category_name%22%3A%22__all__%22%2C%22author_id%22%3A%2272439102970%22%2C%22article_type%22%3A%22wenda%22%2C%22log_pb%22%3A%7B%22impr_id%22%3A%22201801081121110100080192133812B4%22%7D%7D\u0026is_jump_comment=1",
		"create_time": 1513906473,
		"ans_url": "https://ic.snssdk.com/wenda/v1/wapanswer/content/?ansid=6502178788405674253",
		"user": {
			"uname": "石头有话说",
			"avatar_url": "http://p3.pstatp.com/thumb/40110003a9913fce79a1",
			"user_id": "72439102970",
			"is_verify": 1,
			"create_time": 1508208536,
			"user_intro": "历史问答达人",
			"is_following": 0,
			"user_auth_info": "{\"auth_type\": \"3\", \"auth_info\": \"历史问答达人\"}",
			"schema": "sslocal://profile?api_param=%7B%22enter_from%22%3A%22question%22%2C%22origin_from%22%3A%22click_headline%22%2C%22parent_enter_from%22%3A%22click_headline%22%7D\u0026refer=wenda\u0026uid=72439102970",
			"total_digg": 2215,
			"total_answer": 58
		},
		"share_data": {
			"content": "《公羊传》中说过这样的话：“桓何以贵？母贵也。母贵则子何以贵？子以母贵，母以子贵。”说的是，为什么鲁桓公的地位要尊贵？因为他母亲尊贵\ufffd\ufffd",
			"image_url": "http://p3.pstatp.com/thumb/40110003a9913fce79a1",
			"share_url": "https://www.wukong.com/answer/6502178788405674253/?iid=20063010037\u0026app=news_article\u0026share_ansid=6487439111035552013",
			"title": "石头有话说回答了刘备有四个儿子，为何却让资质平平的刘禅继位？(1赞)- 悟空问答"
		},
		"content_abstract": {
			"text": "《公羊传》中说过这样的话：“桓何以贵？母贵也。母贵则子何以贵？子以母贵，母以子贵。”说的是，为什么鲁桓公的地位要尊贵？因为他母亲尊贵，儿子因母亲地位而尊贵，同时母亲也因为儿子而尊贵。简单的说，鲁桓公是正室所生，是嫡出。嫡长子继承制是周代宗法制的核心，这样可以在最大程度上确保政权的稳固和国王的权威，也为后世所延续。好了，闲话说的有点多，下面进入正题。刘备有四个儿子，刘封、刘禅、刘永、刘理。刘封是养子，干儿子，和刘备无任何血缘关系。刘备收养刘封的时候，刘备膝下无子，可惜不久阿斗就出生了。古代有个特有的名词称呼干儿子，就是“螟蛉之子”，关羽就曾称呼刘封为“螟蛉之子”，带有戏谑讽刺的意味。所以日后关羽兵败樊城，刘封见死不救，而刘备也因此杀掉了刘封，没办法，谁让他的地位这么尴尬呢？刘备如果没有儿子，或许会考虑将皇位传给刘封，但这种可能性真的是微乎其微。刘禅是刘备唯一的嫡子。嫡子是什么概念？阿斗打娘胎里的地位就比刘备其他老婆所生的儿子地位高，何况刘备就这么一个嫡子。嫡长子继承，在汉代是深人人心的观念，就算刘禅资质平庸那有如何？如果刘备公开表示你们这些儿子谁本事大，谁继承皇位，那还不乱套了？袁绍的悲剧、刘表的悲剧、曹丕和曹植的悲剧，孙和与孙霸的悲剧就是因为彼此不服，要一较长短。所以刘禅是幸运的，再说刘禅的资质也不至于愚笨，能够在位41年，这数据已经能排进中国帝王榜单的前十了。刘永和刘理就放在一起说吧。这兄弟俩是刘备的庶子，刘禅的弟弟。庶子在古代的地位无法和嫡子相比，就算是嫡幼子也能在地位上把庶长子压的死死的。以前看韩剧《明成皇后》中有一个片段让我印象深刻：大院君李昰应的庶长子李载先不小心叫了大院君一声“父亲大人”，大院君非常生气，拿起砚台就扔过去，说你这个不懂规矩的畜生，还敢叫我父亲？当然，韩国人这么演绎有些夸张，但不难看出，这庶出真是一点地位都没有。刘禅是刘备唯一的嫡子，而且年龄要长于那两个庶出的弟弟，所以刘备只能选择刘禅。而资质是否是三个儿子中最平庸的，这不好说，刘永和刘理在历史中也没什么记载，很难比较。所以刘禅是蜀汉“受命于天，既寿永昌”的真命天子，三国志11中给了他一个特技——强运，不是没有道理的。",
			"thumb_image_list": [{
				"height": 192,
				"width": 192,
				"uri": "4a320009d6a7b67ef7c0",
				"url": "http://p3.pstatp.com/list/s192/4a320009d6a7b67ef7c0",
				"type": 1,
				"url_list": [{
					"url": "http://p3.pstatp.com/list/s192/4a320009d6a7b67ef7c0"
				}, {
					"url": "http://p3.pstatp.com/list/s192/4a320009d6a7b67ef7c0"
				}, {
					"url": "http://p3.pstatp.com/list/s192/4a320009d6a7b67ef7c0"
				}]
			}, {
				"height": 192,
				"width": 192,
				"uri": "4a36000712ad045f2876",
				"url": "http://p1.pstatp.com/list/s192/4a36000712ad045f2876",
				"type": 1,
				"url_list": [{
					"url": "http://p1.pstatp.com/list/s192/4a36000712ad045f2876"
				}, {
					"url": "http://p1.pstatp.com/list/s192/4a36000712ad045f2876"
				}, {
					"url": "http://p1.pstatp.com/list/s192/4a36000712ad045f2876"
				}]
			}, {
				"height": 192,
				"width": 192,
				"uri": "4a340009d9e1aa56e6a1",
				"url": "http://p1.pstatp.com/list/s192/4a340009d9e1aa56e6a1",
				"type": 1,
				"url_list": [{
					"url": "http://p1.pstatp.com/list/s192/4a340009d9e1aa56e6a1"
				}, {
					"url": "http://p1.pstatp.com/list/s192/4a340009d9e1aa56e6a1"
				}, {
					"url": "http://p1.pstatp.com/list/s192/4a340009d9e1aa56e6a1"
				}]
			}],
			"large_image_list": [{
				"height": 131,
				"width": 459,
				"uri": "4a320009d6a7b67ef7c0",
				"url": "http://p3.pstatp.com/large/4a320009d6a7b67ef7c0",
				"type": 1,
				"url_list": [{
					"url": "http://p3.pstatp.com/large/4a320009d6a7b67ef7c0"
				}, {
					"url": "http://p3.pstatp.com/large/4a320009d6a7b67ef7c0"
				}, {
					"url": "http://p3.pstatp.com/large/4a320009d6a7b67ef7c0"
				}]
			}, {
				"height": 331,
				"width": 273,
				"uri": "4a36000712ad045f2876",
				"url": "http://p1.pstatp.com/large/4a36000712ad045f2876",
				"type": 1,
				"url_list": [{
					"url": "http://p1.pstatp.com/large/4a36000712ad045f2876"
				}, {
					"url": "http://p1.pstatp.com/large/4a36000712ad045f2876"
				}, {
					"url": "http://p1.pstatp.com/large/4a36000712ad045f2876"
				}]
			}, {
				"height": 450,
				"width": 600,
				"uri": "4a340009d9e1aa56e6a1",
				"url": "http://p1.pstatp.com/large/4a340009d9e1aa56e6a1",
				"type": 1,
				"url_list": [{
					"url": "http://p1.pstatp.com/large/4a340009d9e1aa56e6a1"
				}, {
					"url": "http://p1.pstatp.com/large/4a340009d9e1aa56e6a1"
				}, {
					"url": "http://p1.pstatp.com/large/4a340009d9e1aa56e6a1"
				}]
			}],
			"video_list": []
		}
	}, {
		"ansid": "6487883252815102221",
		"forward_count": 0,
		"comment_count": 4,
		"digg_count": 16,
		"brow_count": 364609,
		"bury_count": 0,
		"is_digg": false,
		"is_show_bury": true,
		"is_buryed": false,
		"title": "",
		"schema": "sslocal://wenda_detail?ansid=6487883252815102221\u0026api_param=%7B%22answer_list%22%3A%5B6487439111035552013%2C6487832839575306510%2C6490399291209679118%2C6502178788405674253%2C6487883252815102221%2C6488096885272756493%2C6488271209497624846%2C6488474283713495310%2C6487703129067356430%2C6490295195001684237%5D%2C%22answer_type%22%3A%22nice_answer%22%2C%22enter_ansid%22%3A%226487439111035552013%22%2C%22enter_from%22%3A%22question%22%2C%22in_offset%22%3A4%2C%22next_offset%22%3A10%2C%22origin_from%22%3A%22click_headline%22%2C%22parent_enter_from%22%3A%22click_headline%22%7D\u0026gd_ext_json=%7B%22enter_from%22%3A%22click_answer%22%2C%22ansid%22%3A%226487883252815102221%22%2C%22enterfrom_answerid%22%3A%226487439111035552013%22%2C%22parent_enterfrom%22%3A%22click_headline%22%2C%22qid%22%3A%226487404190401298702%22%2C%22category_name%22%3A%22__all__%22%2C%22author_id%22%3A%2272820739415%22%2C%22article_type%22%3A%22wenda%22%2C%22log_pb%22%3A%7B%22impr_id%22%3A%22201801081121110100080192133812B4%22%7D%7D",
		"comment_schema": "sslocal://wenda_detail?ansid=6487883252815102221\u0026api_param=%7B%22answer_list%22%3A%5B6487439111035552013%2C6487832839575306510%2C6490399291209679118%2C6502178788405674253%2C6487883252815102221%2C6488096885272756493%2C6488271209497624846%2C6488474283713495310%2C6487703129067356430%2C6490295195001684237%5D%2C%22answer_type%22%3A%22nice_answer%22%2C%22enter_ansid%22%3A%226487439111035552013%22%2C%22enter_from%22%3A%22question%22%2C%22in_offset%22%3A4%2C%22next_offset%22%3A10%2C%22origin_from%22%3A%22click_headline%22%2C%22parent_enter_from%22%3A%22click_headline%22%7D\u0026gd_ext_json=%7B%22enter_from%22%3A%22click_answer%22%2C%22ansid%22%3A%226487883252815102221%22%2C%22enterfrom_answerid%22%3A%226487439111035552013%22%2C%22parent_enterfrom%22%3A%22click_headline%22%2C%22qid%22%3A%226487404190401298702%22%2C%22category_name%22%3A%22__all__%22%2C%22author_id%22%3A%2272820739415%22%2C%22article_type%22%3A%22wenda%22%2C%22log_pb%22%3A%7B%22impr_id%22%3A%22201801081121110100080192133812B4%22%7D%7D\u0026is_jump_comment=1",
		"create_time": 1510578034,
		"ans_url": "https://ic.snssdk.com/wenda/v1/wapanswer/content/?ansid=6487883252815102221",
		"user": {
			"uname": "人龙天言",
			"avatar_url": "http://p3.pstatp.com/thumb/403f0000d0ebefcb3f3b",
			"user_id": "72820739415",
			"is_verify": 0,
			"create_time": 1508768397,
			"user_intro": "",
			"is_following": 0,
			"user_auth_info": "",
			"schema": "sslocal://profile?api_param=%7B%22enter_from%22%3A%22question%22%2C%22origin_from%22%3A%22click_headline%22%2C%22parent_enter_from%22%3A%22click_headline%22%7D\u0026refer=wenda\u0026uid=72820739415",
			"total_digg": 252,
			"total_answer": 36
		},
		"share_data": {
			"content": "首先我们看一下，刘备的四个儿子。一，刘封，这个是养子，虽说作战勇猛，但是毕竟是养子，在宗法制的年代，有嫡子或者亲子的情况下是绝对轮不\ufffd\ufffd",
			"image_url": "http://p3.pstatp.com/list/300x196/47500000c48e24562282.webp",
			"share_url": "https://www.wukong.com/answer/6487883252815102221/?iid=20063010037\u0026app=news_article\u0026share_ansid=6487439111035552013",
			"title": "刘备有四个儿子，为何却让资质平平的刘禅继位？(人龙天言的回答)- 悟空问答"
		},
		"content_abstract": {
			"text": "首先我们看一下，刘备的四个儿子。一，刘封，这个是养子，虽说作战勇猛，但是毕竟是养子，在宗法制的年代，有嫡子或者亲子的情况下是绝对轮不到他的。二、刘永，刘理。乃是庶出。不具备竞争资格。再者当时，两者年龄较小，在乱世之中，扶立幼子，易造成国家动乱，本来外患就严重，再有内乱的话，就危险了。最后，这两个幼子没有背景，容易被益州集团控制。威胁刘氏在蜀中统治。刘氏本来就是外来户，最忌讳这个。三、刘禅。首先，刘禅自己是嫡长子具备优先资格。其次，刘禅当时年龄最大，在乱世之中，刘备肯定是宁立长不立幼。再者，刘禅当时并非资质平庸，刘备在其给刘禅的遗诏中曾写道：“射君到，说丞相叹卿智量，过于所望，甚大增修，审能如此，吾复何忧？勉之，勉之。”。从中可是看出诸葛亮对刘禅的评价还是很中肯的，并不是平庸到一无是处。最后，刘禅背后是荆州势力，其生母是糜夫人。当时刘备着急伐吴，刘备带出伐吴的将领大多数是荆州将领。立刘禅为太子也是为了稳定荆州势力。荆州势力和刘备本身势力本来就是外来户，立刘禅可是更好的平衡各方势力，毕竟古代帝王玩的最好的就是平衡之术。立刘禅可以让荆州将领放心的去打仗，去除他们的后顾之忧。不然刘备带着荆州系远征，后方可能就乱了。而刘备远征留下诸葛亮也是为了防止这手。综上所述，当时刘禅绝对是最佳的太子人选，而刘禅不是平庸无奇，其能享国40余年，肯定有其有点所在。不过是后世忽略了而已。",
			"thumb_image_list": [{
				"height": 192,
				"width": 192,
				"uri": "47500000c48e24562282",
				"url": "http://p3.pstatp.com/list/s192/47500000c48e24562282",
				"type": 1,
				"url_list": [{
					"url": "http://p3.pstatp.com/list/s192/47500000c48e24562282"
				}, {
					"url": "http://p3.pstatp.com/list/s192/47500000c48e24562282"
				}, {
					"url": "http://p3.pstatp.com/list/s192/47500000c48e24562282"
				}]
			}, {
				"height": 192,
				"width": 192,
				"uri": "47500000c606531c6cca",
				"url": "http://p1.pstatp.com/list/s192/47500000c606531c6cca",
				"type": 1,
				"url_list": [{
					"url": "http://p1.pstatp.com/list/s192/47500000c606531c6cca"
				}, {
					"url": "http://p1.pstatp.com/list/s192/47500000c606531c6cca"
				}, {
					"url": "http://p1.pstatp.com/list/s192/47500000c606531c6cca"
				}]
			}, {
				"height": 192,
				"width": 192,
				"uri": "47500000c784c360a1d3",
				"url": "http://p9.pstatp.com/list/s192/47500000c784c360a1d3",
				"type": 1,
				"url_list": [{
					"url": "http://p9.pstatp.com/list/s192/47500000c784c360a1d3"
				}, {
					"url": "http://p9.pstatp.com/list/s192/47500000c784c360a1d3"
				}, {
					"url": "http://p9.pstatp.com/list/s192/47500000c784c360a1d3"
				}]
			}, {
				"height": 192,
				"width": 192,
				"uri": "475000039107ad010c9b",
				"url": "http://p1.pstatp.com/list/s192/475000039107ad010c9b",
				"type": 1,
				"url_list": [{
					"url": "http://p1.pstatp.com/list/s192/475000039107ad010c9b"
				}, {
					"url": "http://p1.pstatp.com/list/s192/475000039107ad010c9b"
				}, {
					"url": "http://p1.pstatp.com/list/s192/475000039107ad010c9b"
				}]
			}],
			"large_image_list": [{
				"height": 240,
				"width": 240,
				"uri": "47500000c48e24562282",
				"url": "http://p3.pstatp.com/large/47500000c48e24562282",
				"type": 1,
				"url_list": [{
					"url": "http://p3.pstatp.com/large/47500000c48e24562282"
				}, {
					"url": "http://p3.pstatp.com/large/47500000c48e24562282"
				}, {
					"url": "http://p3.pstatp.com/large/47500000c48e24562282"
				}]
			}, {
				"height": 240,
				"width": 195,
				"uri": "47500000c606531c6cca",
				"url": "http://p1.pstatp.com/large/47500000c606531c6cca",
				"type": 1,
				"url_list": [{
					"url": "http://p1.pstatp.com/large/47500000c606531c6cca"
				}, {
					"url": "http://p1.pstatp.com/large/47500000c606531c6cca"
				}, {
					"url": "http://p1.pstatp.com/large/47500000c606531c6cca"
				}]
			}, {
				"height": 354,
				"width": 543,
				"uri": "47500000c784c360a1d3",
				"url": "http://p9.pstatp.com/large/47500000c784c360a1d3",
				"type": 1,
				"url_list": [{
					"url": "http://p9.pstatp.com/large/47500000c784c360a1d3"
				}, {
					"url": "http://p9.pstatp.com/large/47500000c784c360a1d3"
				}, {
					"url": "http://p9.pstatp.com/large/47500000c784c360a1d3"
				}]
			}, {
				"height": 182,
				"width": 240,
				"uri": "475000039107ad010c9b",
				"url": "http://p1.pstatp.com/large/475000039107ad010c9b",
				"type": 1,
				"url_list": [{
					"url": "http://p1.pstatp.com/large/475000039107ad010c9b"
				}, {
					"url": "http://p1.pstatp.com/large/475000039107ad010c9b"
				}, {
					"url": "http://p1.pstatp.com/large/475000039107ad010c9b"
				}]
			}],
			"video_list": []
		}
	}, {
		"ansid": "6488096885272756493",
		"forward_count": 0,
		"comment_count": 1,
		"digg_count": 7,
		"brow_count": 360605,
		"bury_count": 1,
		"is_digg": false,
		"is_show_bury": true,
		"is_buryed": false,
		"title": "",
		"schema": "sslocal://wenda_detail?ansid=6488096885272756493\u0026api_param=%7B%22answer_list%22%3A%5B6487439111035552013%2C6487832839575306510%2C6490399291209679118%2C6502178788405674253%2C6487883252815102221%2C6488096885272756493%2C6488271209497624846%2C6488474283713495310%2C6487703129067356430%2C6490295195001684237%5D%2C%22answer_type%22%3A%22nice_answer%22%2C%22enter_ansid%22%3A%226487439111035552013%22%2C%22enter_from%22%3A%22question%22%2C%22in_offset%22%3A5%2C%22next_offset%22%3A10%2C%22origin_from%22%3A%22click_headline%22%2C%22parent_enter_from%22%3A%22click_headline%22%7D\u0026gd_ext_json=%7B%22enter_from%22%3A%22click_answer%22%2C%22ansid%22%3A%226488096885272756493%22%2C%22enterfrom_answerid%22%3A%226487439111035552013%22%2C%22parent_enterfrom%22%3A%22click_headline%22%2C%22qid%22%3A%226487404190401298702%22%2C%22category_name%22%3A%22__all__%22%2C%22author_id%22%3A%2255963793672%22%2C%22article_type%22%3A%22wenda%22%2C%22log_pb%22%3A%7B%22impr_id%22%3A%22201801081121110100080192133812B4%22%7D%7D",
		"comment_schema": "sslocal://wenda_detail?ansid=6488096885272756493\u0026api_param=%7B%22answer_list%22%3A%5B6487439111035552013%2C6487832839575306510%2C6490399291209679118%2C6502178788405674253%2C6487883252815102221%2C6488096885272756493%2C6488271209497624846%2C6488474283713495310%2C6487703129067356430%2C6490295195001684237%5D%2C%22answer_type%22%3A%22nice_answer%22%2C%22enter_ansid%22%3A%226487439111035552013%22%2C%22enter_from%22%3A%22question%22%2C%22in_offset%22%3A5%2C%22next_offset%22%3A10%2C%22origin_from%22%3A%22click_headline%22%2C%22parent_enter_from%22%3A%22click_headline%22%7D\u0026gd_ext_json=%7B%22enter_from%22%3A%22click_answer%22%2C%22ansid%22%3A%226488096885272756493%22%2C%22enterfrom_answerid%22%3A%226487439111035552013%22%2C%22parent_enterfrom%22%3A%22click_headline%22%2C%22qid%22%3A%226487404190401298702%22%2C%22category_name%22%3A%22__all__%22%2C%22author_id%22%3A%2255963793672%22%2C%22article_type%22%3A%22wenda%22%2C%22log_pb%22%3A%7B%22impr_id%22%3A%22201801081121110100080192133812B4%22%7D%7D\u0026is_jump_comment=1",
		"create_time": 1510627774,
		"ans_url": "https://ic.snssdk.com/wenda/v1/wapanswer/content/?ansid=6488096885272756493",
		"user": {
			"uname": "古剑堂",
			"avatar_url": "http://p1.pstatp.com/thumb/17820000949ece7c246c",
			"user_id": "55963793672",
			"is_verify": 0,
			"create_time": 1487421739,
			"user_intro": "",
			"is_following": 0,
			"user_auth_info": "",
			"schema": "sslocal://profile?api_param=%7B%22enter_from%22%3A%22question%22%2C%22origin_from%22%3A%22click_headline%22%2C%22parent_enter_from%22%3A%22click_headline%22%7D\u0026refer=wenda\u0026uid=55963793672",
			"total_digg": 62309,
			"total_answer": 576
		},
		"share_data": {
			"content": "首先，刘禅是亲生的而且是长子，那个时候，长幼尊卑是很关键，这是其一，世人的心目中，刘禅一定是庸昏之君！在大家的眼里，刘禅始终是个碌碌\ufffd\ufffd",
			"image_url": "http://p3.pstatp.com/list/300x196/46cf0005ac2189447054.webp",
			"share_url": "https://www.wukong.com/answer/6488096885272756493/?iid=20063010037\u0026app=news_article\u0026share_ansid=6487439111035552013",
			"title": "刘备有四个儿子，为何却让资质平平的刘禅继位？(古剑堂的回答)- 悟空问答"
		},
		"content_abstract": {
			"text": "首先，刘禅是亲生的而且是长子，那个时候，长幼尊卑是很关键，这是其一，世人的心目中，刘禅一定是庸昏之君！在大家的眼里，刘禅始终是个碌碌无为的的庸君一个；有的人甚至称刘禅为“亡国之昏君，丧邦之庸人”。因刘禅小名为阿斗，于是在我们的形容词中，又多了一个“扶不起的阿斗”；有人预言，这个形容词将会流传千年。 刘禅真的是个“扶不起的阿斗”么？他真的是个昏庸、愚钝、弱智的君主吗？ 《三国志》中有这么一段记载，说诸葛亮对射君称赞刘禅，射君又将这件事告诉了刘备，刘备很高兴。“说丞相叹卿智量，甚大增修，过于所望，审能如此，吾复何忧？勉之，勉之。”意思是连诸葛亮都称赞刘禅“智量甚大”，比想象中聪明，我还有啥担忧的？表示鼓励。诸葛亮不会阿谀奉承，刘备不会不识人，陈寿也不会弄虚作假。所以，刘禅绝不是我们想像中的，那么无能！刘禅能在诸葛亮把持朝政消耗蜀国的实力到后来的蜀国灭亡刘禅仍然能自保，并且知道蜀国必然灭亡，能避免自己的臣民生灵涂炭，足见这个人肯定还是有大智慧的！懂得，顺势而为，这点很关键！刘备有四个儿子，大的叫刘封，是义子，也就是说不是亲生的。后来，由于刘备立太子时，关羽说刘封不是亲生的儿子，不适合继位太子。刘封因此嫉恨关羽，当关羽走麦城时，关羽求援，刘封见死不救。后来关羽被杀，刘备也因此事，杀了义子刘封。刘禅是刘备亲生儿子，是长子，按照古代立太子的习惯是：立嫡不立长，立长不立幼的原则，也就是说刘禅符合立太子的要求。他的弟弟刘永，刘备次子。先为鲁王，后封为甘陵王，刘理，刘备三子。先为梁王 ，后封为安平王。这兄弟俩只能封王。说到为何让资质平平的刘禅继位，这是古代帝王家的老规矩，即便是傻子也得继位。如果没有特殊的情况。比如西晋的惠帝司马衷，他就是个傻子，不是一样接了班。这样的例子历史上有不少，比刘禅没能力或者资质平平的大有人在。其实我倒觉得刘禅不是那么的资历平平，反而觉得他有点大智若愚。一个人，判定他是否资历如何，还要看他的成绩。和他同时期的曹叡和曹芳。大兴土木，奢侈淫欲。使的魏国权奸横征暴敛，穷奢极欲。比如当时的大将军曹爽，丞相司马懿。为了争权夺势，互相争斗，互相拆台。置国家利益于不顾。再看同时期的吴主孙皓，残暴不仁，他发明了剥人脸皮的酷刑。在治理国家方面，刘禅比他俩做得好。刘禅没有实行酷吏的方法。在邓艾灭蜀时，成都百姓痛哭流泣所有这些，都说明刘禅并不是一个平庸之人。",
			"thumb_image_list": [{
				"height": 192,
				"width": 192,
				"uri": "46cf0005ac2189447054",
				"url": "http://p3.pstatp.com/list/s192/46cf0005ac2189447054",
				"type": 1,
				"url_list": [{
					"url": "http://p3.pstatp.com/list/s192/46cf0005ac2189447054"
				}, {
					"url": "http://p3.pstatp.com/list/s192/46cf0005ac2189447054"
				}, {
					"url": "http://p3.pstatp.com/list/s192/46cf0005ac2189447054"
				}]
			}, {
				"height": 192,
				"width": 192,
				"uri": "46d200055a3a3c32ce4c",
				"url": "http://p1.pstatp.com/list/s192/46d200055a3a3c32ce4c",
				"type": 1,
				"url_list": [{
					"url": "http://p1.pstatp.com/list/s192/46d200055a3a3c32ce4c"
				}, {
					"url": "http://p1.pstatp.com/list/s192/46d200055a3a3c32ce4c"
				}, {
					"url": "http://p1.pstatp.com/list/s192/46d200055a3a3c32ce4c"
				}]
			}, {
				"height": 192,
				"width": 192,
				"uri": "46d200055a3c6641db18",
				"url": "http://p9.pstatp.com/list/s192/46d200055a3c6641db18",
				"type": 1,
				"url_list": [{
					"url": "http://p9.pstatp.com/list/s192/46d200055a3c6641db18"
				}, {
					"url": "http://p9.pstatp.com/list/s192/46d200055a3c6641db18"
				}, {
					"url": "http://p9.pstatp.com/list/s192/46d200055a3c6641db18"
				}]
			}, {
				"height": 192,
				"width": 192,
				"uri": "46d200055a3b0710c069",
				"url": "http://p3.pstatp.com/list/s192/46d200055a3b0710c069",
				"type": 1,
				"url_list": [{
					"url": "http://p3.pstatp.com/list/s192/46d200055a3b0710c069"
				}, {
					"url": "http://p3.pstatp.com/list/s192/46d200055a3b0710c069"
				}, {
					"url": "http://p3.pstatp.com/list/s192/46d200055a3b0710c069"
				}]
			}, {
				"height": 192,
				"width": 192,
				"uri": "46d0000590d891f69cd8",
				"url": "http://p1.pstatp.com/list/s192/46d0000590d891f69cd8",
				"type": 1,
				"url_list": [{
					"url": "http://p1.pstatp.com/list/s192/46d0000590d891f69cd8"
				}, {
					"url": "http://p1.pstatp.com/list/s192/46d0000590d891f69cd8"
				}, {
					"url": "http://p1.pstatp.com/list/s192/46d0000590d891f69cd8"
				}]
			}, {
				"height": 192,
				"width": 192,
				"uri": "3ea600026513e1856acf",
				"url": "http://p3.pstatp.com/list/s192/3ea600026513e1856acf",
				"type": 1,
				"url_list": [{
					"url": "http://p3.pstatp.com/list/s192/3ea600026513e1856acf"
				}, {
					"url": "http://p3.pstatp.com/list/s192/3ea600026513e1856acf"
				}, {
					"url": "http://p3.pstatp.com/list/s192/3ea600026513e1856acf"
				}]
			}],
			"large_image_list": [{
				"height": 8,
				"width": 4,
				"uri": "46cf0005ac2189447054",
				"url": "http://p3.pstatp.com/large/46cf0005ac2189447054",
				"type": 1,
				"url_list": [{
					"url": "http://p3.pstatp.com/large/46cf0005ac2189447054"
				}, {
					"url": "http://p3.pstatp.com/large/46cf0005ac2189447054"
				}, {
					"url": "http://p3.pstatp.com/large/46cf0005ac2189447054"
				}]
			}, {
				"height": 686,
				"width": 500,
				"uri": "46d200055a3a3c32ce4c",
				"url": "http://p1.pstatp.com/large/46d200055a3a3c32ce4c",
				"type": 1,
				"url_list": [{
					"url": "http://p1.pstatp.com/large/46d200055a3a3c32ce4c"
				}, {
					"url": "http://p1.pstatp.com/large/46d200055a3a3c32ce4c"
				}, {
					"url": "http://p1.pstatp.com/large/46d200055a3a3c32ce4c"
				}]
			}, {
				"height": 514,
				"width": 640,
				"uri": "46d200055a3c6641db18",
				"url": "http://p9.pstatp.com/large/46d200055a3c6641db18",
				"type": 1,
				"url_list": [{
					"url": "http://p9.pstatp.com/large/46d200055a3c6641db18"
				}, {
					"url": "http://p9.pstatp.com/large/46d200055a3c6641db18"
				}, {
					"url": "http://p9.pstatp.com/large/46d200055a3c6641db18"
				}]
			}, {
				"height": 480,
				"width": 640,
				"uri": "46d200055a3b0710c069",
				"url": "http://p3.pstatp.com/large/46d200055a3b0710c069",
				"type": 1,
				"url_list": [{
					"url": "http://p3.pstatp.com/large/46d200055a3b0710c069"
				}, {
					"url": "http://p3.pstatp.com/large/46d200055a3b0710c069"
				}, {
					"url": "http://p3.pstatp.com/large/46d200055a3b0710c069"
				}]
			}, {
				"height": 480,
				"width": 640,
				"uri": "46d0000590d891f69cd8",
				"url": "http://p1.pstatp.com/large/46d0000590d891f69cd8",
				"type": 1,
				"url_list": [{
					"url": "http://p1.pstatp.com/large/46d0000590d891f69cd8"
				}, {
					"url": "http://p1.pstatp.com/large/46d0000590d891f69cd8"
				}, {
					"url": "http://p1.pstatp.com/large/46d0000590d891f69cd8"
				}]
			}, {
				"height": 369,
				"width": 639,
				"uri": "3ea600026513e1856acf",
				"url": "http://p3.pstatp.com/large/3ea600026513e1856acf",
				"type": 1,
				"url_list": [{
					"url": "http://p3.pstatp.com/large/3ea600026513e1856acf"
				}, {
					"url": "http://p3.pstatp.com/large/3ea600026513e1856acf"
				}, {
					"url": "http://p3.pstatp.com/large/3ea600026513e1856acf"
				}]
			}],
			"video_list": []
		}
	}, {
		"ansid": "6488271209497624846",
		"forward_count": 0,
		"comment_count": 10,
		"digg_count": 9,
		"brow_count": 365945,
		"bury_count": 2,
		"is_digg": false,
		"is_show_bury": true,
		"is_buryed": false,
		"title": "",
		"schema": "sslocal://wenda_detail?ansid=6488271209497624846\u0026api_param=%7B%22answer_list%22%3A%5B6487439111035552013%2C6487832839575306510%2C6490399291209679118%2C6502178788405674253%2C6487883252815102221%2C6488096885272756493%2C6488271209497624846%2C6488474283713495310%2C6487703129067356430%2C6490295195001684237%5D%2C%22answer_type%22%3A%22nice_answer%22%2C%22enter_ansid%22%3A%226487439111035552013%22%2C%22enter_from%22%3A%22question%22%2C%22in_offset%22%3A6%2C%22next_offset%22%3A10%2C%22origin_from%22%3A%22click_headline%22%2C%22parent_enter_from%22%3A%22click_headline%22%7D\u0026gd_ext_json=%7B%22enter_from%22%3A%22click_answer%22%2C%22ansid%22%3A%226488271209497624846%22%2C%22enterfrom_answerid%22%3A%226487439111035552013%22%2C%22parent_enterfrom%22%3A%22click_headline%22%2C%22qid%22%3A%226487404190401298702%22%2C%22category_name%22%3A%22__all__%22%2C%22author_id%22%3A%225482921508%22%2C%22article_type%22%3A%22wenda%22%2C%22log_pb%22%3A%7B%22impr_id%22%3A%22201801081121110100080192133812B4%22%7D%7D",
		"comment_schema": "sslocal://wenda_detail?ansid=6488271209497624846\u0026api_param=%7B%22answer_list%22%3A%5B6487439111035552013%2C6487832839575306510%2C6490399291209679118%2C6502178788405674253%2C6487883252815102221%2C6488096885272756493%2C6488271209497624846%2C6488474283713495310%2C6487703129067356430%2C6490295195001684237%5D%2C%22answer_type%22%3A%22nice_answer%22%2C%22enter_ansid%22%3A%226487439111035552013%22%2C%22enter_from%22%3A%22question%22%2C%22in_offset%22%3A6%2C%22next_offset%22%3A10%2C%22origin_from%22%3A%22click_headline%22%2C%22parent_enter_from%22%3A%22click_headline%22%7D\u0026gd_ext_json=%7B%22enter_from%22%3A%22click_answer%22%2C%22ansid%22%3A%226488271209497624846%22%2C%22enterfrom_answerid%22%3A%226487439111035552013%22%2C%22parent_enterfrom%22%3A%22click_headline%22%2C%22qid%22%3A%226487404190401298702%22%2C%22category_name%22%3A%22__all__%22%2C%22author_id%22%3A%225482921508%22%2C%22article_type%22%3A%22wenda%22%2C%22log_pb%22%3A%7B%22impr_id%22%3A%22201801081121110100080192133812B4%22%7D%7D\u0026is_jump_comment=1",
		"create_time": 1510668362,
		"ans_url": "https://ic.snssdk.com/wenda/v1/wapanswer/content/?ansid=6488271209497624846",
		"user": {
			"uname": "一个凡凡呀",
			"avatar_url": "http://p3.pstatp.com/thumb/40190000ed7d2367a754",
			"user_id": "5482921508",
			"is_verify": 0,
			"create_time": 1442329385,
			"user_intro": "",
			"is_following": 0,
			"user_auth_info": "",
			"schema": "sslocal://profile?api_param=%7B%22enter_from%22%3A%22question%22%2C%22origin_from%22%3A%22click_headline%22%2C%22parent_enter_from%22%3A%22click_headline%22%7D\u0026refer=wenda\u0026uid=5482921508",
			"total_digg": 5069,
			"total_answer": 801
		},
		"share_data": {
			"content": "关于刘禅这个刘备刘备的儿子并且是刘备的继承者，西蜀的后来的皇帝，但是大家对于他的了解就是‘乐不思蜀’，扶不起来的阿斗了，但是要知道刘\ufffd\ufffd",
			"image_url": "http://p9.pstatp.com/list/300x196/4750000136ba77937e89.webp",
			"share_url": "https://www.wukong.com/answer/6488271209497624846/?iid=20063010037\u0026app=news_article\u0026share_ansid=6487439111035552013",
			"title": "刘备有四个儿子，为何却让资质平平的刘禅继位？(一个凡凡呀的回答)- 悟空问答"
		},
		"content_abstract": {
			"text": "关于刘禅这个刘备刘备的儿子并且是刘备的继承者，西蜀的后来的皇帝，但是大家对于他的了解就是‘乐不思蜀’，扶不起来的阿斗了，但是要知道刘备并不是只有这个儿子，还有其他几个，但是为什么要选择他呢。首先为什么不选择资质最高的刘封，因为这个刘封是刘备的养子，虽然资质和资历都是最好的，但是就是不能给他封皇帝，甚至王都不能封，为了防止他对皇室有所顾忌直接借关羽之死来将他赐死了。其他的呢，刘永这个人比较怂，比刘禅还不行，资历极差甚至在刘禅心里根本不及刘禅的宠臣，他也没有任何资料来说他有所作为，最后和他哥哥刘禅一起去投靠敌国了，完全没有刘家的血性。还有一个死的太早了，更加没有机会当皇帝了。所以说这个刘备不是不想立其他人而是他实在没得选，只能选择刘禅了，不过这里有一件有趣的事情，你看看刘备的儿子干儿子这些人的名字，刘封，刘禅。就是封禅之意，可见这个刘备早就已经预谋很久，早已经自己有称帝之意不过嘴里却说慢了仁义道德。而且这个刘禅也不是什么所谓的无能之辈，只是相比于刘备，诸葛亮，姜维等人来说，还有对于曹丕之类的皇帝来说他还是有点文弱而已，特别是他的宠信宦官这个庸君之举是他洗不掉的黑点了。而且我一直觉得在白帝城这个刘备说了一句“君可自取”，这个意思恐怕不是让诸葛亮自己来做皇帝，是让他在其他几个儿子中选一个当皇帝，你这个诸葛只是我帝国的旗子，怎么能让你当皇帝。",
			"thumb_image_list": [{
				"height": 192,
				"width": 192,
				"uri": "4750000136ba77937e89",
				"url": "http://p9.pstatp.com/list/s192/4750000136ba77937e89",
				"type": 1,
				"url_list": [{
					"url": "http://p9.pstatp.com/list/s192/4750000136ba77937e89"
				}, {
					"url": "http://p9.pstatp.com/list/s192/4750000136ba77937e89"
				}, {
					"url": "http://p9.pstatp.com/list/s192/4750000136ba77937e89"
				}]
			}, {
				"height": 192,
				"width": 192,
				"uri": "4750000136b942e4add8",
				"url": "http://p1.pstatp.com/list/s192/4750000136b942e4add8",
				"type": 1,
				"url_list": [{
					"url": "http://p1.pstatp.com/list/s192/4750000136b942e4add8"
				}, {
					"url": "http://p1.pstatp.com/list/s192/4750000136b942e4add8"
				}, {
					"url": "http://p1.pstatp.com/list/s192/4750000136b942e4add8"
				}]
			}, {
				"height": 192,
				"width": 192,
				"uri": "474f00013784cddaabcf",
				"url": "http://p3.pstatp.com/list/s192/474f00013784cddaabcf",
				"type": 1,
				"url_list": [{
					"url": "http://p3.pstatp.com/list/s192/474f00013784cddaabcf"
				}, {
					"url": "http://p3.pstatp.com/list/s192/474f00013784cddaabcf"
				}, {
					"url": "http://p3.pstatp.com/list/s192/474f00013784cddaabcf"
				}]
			}, {
				"height": 192,
				"width": 192,
				"uri": "4750000136bb7760a02f",
				"url": "http://p1.pstatp.com/list/s192/4750000136bb7760a02f",
				"type": 1,
				"url_list": [{
					"url": "http://p1.pstatp.com/list/s192/4750000136bb7760a02f"
				}, {
					"url": "http://p1.pstatp.com/list/s192/4750000136bb7760a02f"
				}, {
					"url": "http://p1.pstatp.com/list/s192/4750000136bb7760a02f"
				}]
			}],
			"large_image_list": [{
				"height": 434,
				"width": 388,
				"uri": "4750000136ba77937e89",
				"url": "http://p9.pstatp.com/large/4750000136ba77937e89",
				"type": 1,
				"url_list": [{
					"url": "http://p9.pstatp.com/large/4750000136ba77937e89"
				}, {
					"url": "http://p9.pstatp.com/large/4750000136ba77937e89"
				}, {
					"url": "http://p9.pstatp.com/large/4750000136ba77937e89"
				}]
			}, {
				"height": 502,
				"width": 474,
				"uri": "4750000136b942e4add8",
				"url": "http://p1.pstatp.com/large/4750000136b942e4add8",
				"type": 1,
				"url_list": [{
					"url": "http://p1.pstatp.com/large/4750000136b942e4add8"
				}, {
					"url": "http://p1.pstatp.com/large/4750000136b942e4add8"
				}, {
					"url": "http://p1.pstatp.com/large/4750000136b942e4add8"
				}]
			}, {
				"height": 207,
				"width": 450,
				"uri": "474f00013784cddaabcf",
				"url": "http://p3.pstatp.com/large/474f00013784cddaabcf",
				"type": 1,
				"url_list": [{
					"url": "http://p3.pstatp.com/large/474f00013784cddaabcf"
				}, {
					"url": "http://p3.pstatp.com/large/474f00013784cddaabcf"
				}, {
					"url": "http://p3.pstatp.com/large/474f00013784cddaabcf"
				}]
			}, {
				"height": 283,
				"width": 400,
				"uri": "4750000136bb7760a02f",
				"url": "http://p1.pstatp.com/large/4750000136bb7760a02f",
				"type": 1,
				"url_list": [{
					"url": "http://p1.pstatp.com/large/4750000136bb7760a02f"
				}, {
					"url": "http://p1.pstatp.com/large/4750000136bb7760a02f"
				}, {
					"url": "http://p1.pstatp.com/large/4750000136bb7760a02f"
				}]
			}],
			"video_list": []
		}
	}, {
		"ansid": "6488474283713495310",
		"forward_count": 0,
		"comment_count": 1,
		"digg_count": 3,
		"brow_count": 358261,
		"bury_count": 1,
		"is_digg": false,
		"is_show_bury": true,
		"is_buryed": false,
		"title": "",
		"schema": "sslocal://wenda_detail?ansid=6488474283713495310\u0026api_param=%7B%22answer_list%22%3A%5B6487439111035552013%2C6487832839575306510%2C6490399291209679118%2C6502178788405674253%2C6487883252815102221%2C6488096885272756493%2C6488271209497624846%2C6488474283713495310%2C6487703129067356430%2C6490295195001684237%5D%2C%22answer_type%22%3A%22nice_answer%22%2C%22enter_ansid%22%3A%226487439111035552013%22%2C%22enter_from%22%3A%22question%22%2C%22in_offset%22%3A7%2C%22next_offset%22%3A10%2C%22origin_from%22%3A%22click_headline%22%2C%22parent_enter_from%22%3A%22click_headline%22%7D\u0026gd_ext_json=%7B%22enter_from%22%3A%22click_answer%22%2C%22ansid%22%3A%226488474283713495310%22%2C%22enterfrom_answerid%22%3A%226487439111035552013%22%2C%22parent_enterfrom%22%3A%22click_headline%22%2C%22qid%22%3A%226487404190401298702%22%2C%22category_name%22%3A%22__all__%22%2C%22author_id%22%3A%2254239373113%22%2C%22article_type%22%3A%22wenda%22%2C%22log_pb%22%3A%7B%22impr_id%22%3A%22201801081121110100080192133812B4%22%7D%7D",
		"comment_schema": "sslocal://wenda_detail?ansid=6488474283713495310\u0026api_param=%7B%22answer_list%22%3A%5B6487439111035552013%2C6487832839575306510%2C6490399291209679118%2C6502178788405674253%2C6487883252815102221%2C6488096885272756493%2C6488271209497624846%2C6488474283713495310%2C6487703129067356430%2C6490295195001684237%5D%2C%22answer_type%22%3A%22nice_answer%22%2C%22enter_ansid%22%3A%226487439111035552013%22%2C%22enter_from%22%3A%22question%22%2C%22in_offset%22%3A7%2C%22next_offset%22%3A10%2C%22origin_from%22%3A%22click_headline%22%2C%22parent_enter_from%22%3A%22click_headline%22%7D\u0026gd_ext_json=%7B%22enter_from%22%3A%22click_answer%22%2C%22ansid%22%3A%226488474283713495310%22%2C%22enterfrom_answerid%22%3A%226487439111035552013%22%2C%22parent_enterfrom%22%3A%22click_headline%22%2C%22qid%22%3A%226487404190401298702%22%2C%22category_name%22%3A%22__all__%22%2C%22author_id%22%3A%2254239373113%22%2C%22article_type%22%3A%22wenda%22%2C%22log_pb%22%3A%7B%22impr_id%22%3A%22201801081121110100080192133812B4%22%7D%7D\u0026is_jump_comment=1",
		"create_time": 1510715644,
		"ans_url": "https://ic.snssdk.com/wenda/v1/wapanswer/content/?ansid=6488474283713495310",
		"user": {
			"uname": "航拍中华",
			"avatar_url": "http://p3.pstatp.com/thumb/382c000aed330258a4dd",
			"user_id": "54239373113",
			"is_verify": 0,
			"create_time": 1496914119,
			"user_intro": "",
			"is_following": 0,
			"user_auth_info": "",
			"schema": "sslocal://profile?api_param=%7B%22enter_from%22%3A%22question%22%2C%22origin_from%22%3A%22click_headline%22%2C%22parent_enter_from%22%3A%22click_headline%22%7D\u0026refer=wenda\u0026uid=54239373113",
			"total_digg": 10236,
			"total_answer": 630
		},
		"share_data": {
			"content": "在我国，对于帝王来说，征战天下打下地盘固然重要，可是选接班人也是一个大问题，这是一个决定未来的事，马虎不得。话说刘备戎马一生，眼光老\ufffd\ufffd",
			"image_url": "http://p1.pstatp.com/list/300x196/475000015e5fc643bdba.webp",
			"share_url": "https://www.wukong.com/answer/6488474283713495310/?iid=20063010037\u0026app=news_article\u0026share_ansid=6487439111035552013",
			"title": "刘备有四个儿子，为何却让资质平平的刘禅继位？(航拍中华的回答)- 悟空问答"
		},
		"content_abstract": {
			"text": "在我国，对于帝王来说，征战天下打下地盘固然重要，可是选接班人也是一个大问题，这是一个决定未来的事，马虎不得。话说刘备戎马一生，眼光老道，识人用人自有一番眼光，他有四个儿子，刘封，刘禅，刘永，刘理。四个儿子里，为何刘备却让资质平平的刘禅继位呢？刘封虽然是刘备的儿子，但是是养子。虽然他很有能力，但是他继承的机会很小，不论刘备怎么想，刘备的兄弟关羽就对此事很有意见，刘封自己也不可能有机会，刘备占据益州后，就派刘封和孟达去驻守东三郡，这样就基本上排除了刘封未来上位的可能性。从封建时代继承制度看，刘禅有很大的优势，他是嫡长子。嫡长子继承制是宗法制度最基本的一项原则，即王位和财产必须由嫡长子继承，嫡长子是嫡妻(正妻)所生的长子。具体规定为\"立嫡以长不以贤，立子以贵不以长\"。然而除了这之外，刘禅能继位还有背后一群人的推动。《三国志》记载:刘备给刘禅的遗诏中有这么一段话：“射君到，说丞相叹卿智量，甚大增修，过于所望，审能如此，吾复何忧?勉之，勉之。”意思是说：诸葛亮对射援称赞刘禅的智慧，射援又将这赞辞告诉了刘备，刘备很高兴，予以勉励。诸葛亮不会阿谀奉承，刘备也相信诸葛亮，因此也认同刘禅非鲁钝之人，所以立刘禅。刘备一生有几位妻子:妻子甘夫人，未庶出；次妻糜夫人，糜竺之妹，生儿子刘禅，即阿斗；刘封是义子；三夫人孙尚香，未生子；刘备立汉中王后，在法正的劝说下，把吴氏纳入宫中，吴氏原是刘焉之子刘瑁之妻，因刘瑁早夭，美丽贤惠的吴氏一直寡居，生二子：长子刘永，字公寿；次子刘理，字奉孝。事实上刘禅作为糜夫人之子，代表的是荆州派系的势力，他被推上前台也是必然的，刘禅继位可以称之为水到渠成。刘备让刘禅继位，这本是刘备的无奈之举。皇权的世袭制，使刘备只能把皇位传给儿子。刘备有三个儿子，刘禅最大，刘禅即位时只有十七岁，另外二个儿子还是小孩呢，把皇位传给一个不谙世事的小孩，后患是可想而知的。刘备在刘表、袁绍那里都呆过，刘表、袁绍废长立幼所带来的后果，刘备心里不能不清楚。所以刘备选择刘禅继位既是必然也是无奈。如果你喜欢这篇文章，请订阅“源稚生”。本文系作者原创，不尽之处请指正，欢迎大家多多点赞和评论。",
			"thumb_image_list": [{
				"height": 192,
				"width": 192,
				"uri": "475000015e5fc643bdba",
				"url": "http://p1.pstatp.com/list/s192/475000015e5fc643bdba",
				"type": 1,
				"url_list": [{
					"url": "http://p1.pstatp.com/list/s192/475000015e5fc643bdba"
				}, {
					"url": "http://p1.pstatp.com/list/s192/475000015e5fc643bdba"
				}, {
					"url": "http://p1.pstatp.com/list/s192/475000015e5fc643bdba"
				}]
			}, {
				"height": 192,
				"width": 192,
				"uri": "3ea60002d415fbd82260",
				"url": "http://p9.pstatp.com/list/s192/3ea60002d415fbd82260",
				"type": 1,
				"url_list": [{
					"url": "http://p9.pstatp.com/list/s192/3ea60002d415fbd82260"
				}, {
					"url": "http://p9.pstatp.com/list/s192/3ea60002d415fbd82260"
				}, {
					"url": "http://p9.pstatp.com/list/s192/3ea60002d415fbd82260"
				}]
			}, {
				"height": 192,
				"width": 192,
				"uri": "475000015e60a37641e4",
				"url": "http://p1.pstatp.com/list/s192/475000015e60a37641e4",
				"type": 1,
				"url_list": [{
					"url": "http://p1.pstatp.com/list/s192/475000015e60a37641e4"
				}, {
					"url": "http://p1.pstatp.com/list/s192/475000015e60a37641e4"
				}, {
					"url": "http://p1.pstatp.com/list/s192/475000015e60a37641e4"
				}]
			}, {
				"height": 192,
				"width": 192,
				"uri": "475000015e5ed2361c06",
				"url": "http://p9.pstatp.com/list/s192/475000015e5ed2361c06",
				"type": 1,
				"url_list": [{
					"url": "http://p9.pstatp.com/list/s192/475000015e5ed2361c06"
				}, {
					"url": "http://p9.pstatp.com/list/s192/475000015e5ed2361c06"
				}, {
					"url": "http://p9.pstatp.com/list/s192/475000015e5ed2361c06"
				}]
			}],
			"large_image_list": [{
				"height": 322,
				"width": 500,
				"uri": "475000015e5fc643bdba",
				"url": "http://p1.pstatp.com/large/475000015e5fc643bdba",
				"type": 1,
				"url_list": [{
					"url": "http://p1.pstatp.com/large/475000015e5fc643bdba"
				}, {
					"url": "http://p1.pstatp.com/large/475000015e5fc643bdba"
				}, {
					"url": "http://p1.pstatp.com/large/475000015e5fc643bdba"
				}]
			}, {
				"height": 354,
				"width": 543,
				"uri": "3ea60002d415fbd82260",
				"url": "http://p9.pstatp.com/large/3ea60002d415fbd82260",
				"type": 1,
				"url_list": [{
					"url": "http://p9.pstatp.com/large/3ea60002d415fbd82260"
				}, {
					"url": "http://p9.pstatp.com/large/3ea60002d415fbd82260"
				}, {
					"url": "http://p9.pstatp.com/large/3ea60002d415fbd82260"
				}]
			}, {
				"height": 488,
				"width": 640,
				"uri": "475000015e60a37641e4",
				"url": "http://p1.pstatp.com/large/475000015e60a37641e4",
				"type": 1,
				"url_list": [{
					"url": "http://p1.pstatp.com/large/475000015e60a37641e4"
				}, {
					"url": "http://p1.pstatp.com/large/475000015e60a37641e4"
				}, {
					"url": "http://p1.pstatp.com/large/475000015e60a37641e4"
				}]
			}, {
				"height": 266,
				"width": 400,
				"uri": "475000015e5ed2361c06",
				"url": "http://p9.pstatp.com/large/475000015e5ed2361c06",
				"type": 1,
				"url_list": [{
					"url": "http://p9.pstatp.com/large/475000015e5ed2361c06"
				}, {
					"url": "http://p9.pstatp.com/large/475000015e5ed2361c06"
				}, {
					"url": "http://p9.pstatp.com/large/475000015e5ed2361c06"
				}]
			}],
			"video_list": []
		}
	}, {
		"ansid": "6487703129067356430",
		"forward_count": 0,
		"comment_count": 0,
		"digg_count": 3,
		"brow_count": 256920,
		"bury_count": 1,
		"is_digg": false,
		"is_show_bury": true,
		"is_buryed": false,
		"title": "",
		"schema": "sslocal://wenda_detail?ansid=6487703129067356430\u0026api_param=%7B%22answer_list%22%3A%5B6487439111035552013%2C6487832839575306510%2C6490399291209679118%2C6502178788405674253%2C6487883252815102221%2C6488096885272756493%2C6488271209497624846%2C6488474283713495310%2C6487703129067356430%2C6490295195001684237%5D%2C%22answer_type%22%3A%22nice_answer%22%2C%22enter_ansid%22%3A%226487439111035552013%22%2C%22enter_from%22%3A%22question%22%2C%22in_offset%22%3A8%2C%22next_offset%22%3A10%2C%22origin_from%22%3A%22click_headline%22%2C%22parent_enter_from%22%3A%22click_headline%22%7D\u0026gd_ext_json=%7B%22enter_from%22%3A%22click_answer%22%2C%22ansid%22%3A%226487703129067356430%22%2C%22enterfrom_answerid%22%3A%226487439111035552013%22%2C%22parent_enterfrom%22%3A%22click_headline%22%2C%22qid%22%3A%226487404190401298702%22%2C%22category_name%22%3A%22__all__%22%2C%22author_id%22%3A%2264419379570%22%2C%22article_type%22%3A%22wenda%22%2C%22log_pb%22%3A%7B%22impr_id%22%3A%22201801081121110100080192133812B4%22%7D%7D",
		"comment_schema": "sslocal://wenda_detail?ansid=6487703129067356430\u0026api_param=%7B%22answer_list%22%3A%5B6487439111035552013%2C6487832839575306510%2C6490399291209679118%2C6502178788405674253%2C6487883252815102221%2C6488096885272756493%2C6488271209497624846%2C6488474283713495310%2C6487703129067356430%2C6490295195001684237%5D%2C%22answer_type%22%3A%22nice_answer%22%2C%22enter_ansid%22%3A%226487439111035552013%22%2C%22enter_from%22%3A%22question%22%2C%22in_offset%22%3A8%2C%22next_offset%22%3A10%2C%22origin_from%22%3A%22click_headline%22%2C%22parent_enter_from%22%3A%22click_headline%22%7D\u0026gd_ext_json=%7B%22enter_from%22%3A%22click_answer%22%2C%22ansid%22%3A%226487703129067356430%22%2C%22enterfrom_answerid%22%3A%226487439111035552013%22%2C%22parent_enterfrom%22%3A%22click_headline%22%2C%22qid%22%3A%226487404190401298702%22%2C%22category_name%22%3A%22__all__%22%2C%22author_id%22%3A%2264419379570%22%2C%22article_type%22%3A%22wenda%22%2C%22log_pb%22%3A%7B%22impr_id%22%3A%22201801081121110100080192133812B4%22%7D%7D\u0026is_jump_comment=1",
		"create_time": 1510536095,
		"ans_url": "https://ic.snssdk.com/wenda/v1/wapanswer/content/?ansid=6487703129067356430",
		"user": {
			"uname": "先启历史",
			"avatar_url": "http://p3.pstatp.com/thumb/3830000a1546c2d9a893",
			"user_id": "64419379570",
			"is_verify": 1,
			"create_time": 1501161463,
			"user_intro": "历史问答达人",
			"is_following": 0,
			"user_auth_info": "{\"auth_type\": \"3\", \"auth_info\": \"历史问答达人\"}",
			"schema": "sslocal://profile?api_param=%7B%22enter_from%22%3A%22question%22%2C%22origin_from%22%3A%22click_headline%22%2C%22parent_enter_from%22%3A%22click_headline%22%7D\u0026refer=wenda\u0026uid=64419379570",
			"total_digg": 965,
			"total_answer": 95
		},
		"share_data": {
			"content": "废长立幼历来是王朝取乱之道。刘备深受传统礼教影响自然不会轻易更改。长子刘封仅仅为养子，且因关羽事件被刘备赐死。次子刘禅在刘备逝世时仅\ufffd\ufffd",
			"image_url": "http://p3.pstatp.com/thumb/3830000a1546c2d9a893",
			"share_url": "https://www.wukong.com/answer/6487703129067356430/?iid=20063010037\u0026app=news_article\u0026share_ansid=6487439111035552013",
			"title": "先启历史回答了刘备有四个儿子，为何却让资质平平的刘禅继位？(3赞)- 悟空问答"
		},
		"content_abstract": {
			"text": "废长立幼历来是王朝取乱之道。刘备深受传统礼教影响自然不会轻易更改。长子刘封仅仅为养子，且因关羽事件被刘备赐死。次子刘禅在刘备逝世时仅仅十七岁，幼子刘永刘理则更小了。按长幼有序的原则也应是刘禅继位。至于本题说到资质的问题，各位想想，家里十七岁的少年，您能看的出他今后的发展吗？影视剧刻意渲染的刘禅呆傻形象多半有夸张的成分。个人觉得起码当时的刘禅应该显得贤良敦厚。",
			"thumb_image_list": [{
				"height": 1280,
				"width": 734,
				"uri": "474f000070a3bc0e2504",
				"url": "http://p1.pstatp.com/list/r734/474f000070a3bc0e2504",
				"type": 1,
				"url_list": [{
					"url": "http://p1.pstatp.com/list/r734/474f000070a3bc0e2504"
				}, {
					"url": "http://p1.pstatp.com/list/r734/474f000070a3bc0e2504"
				}, {
					"url": "http://p1.pstatp.com/list/r734/474f000070a3bc0e2504"
				}]
			}],
			"large_image_list": [{
				"height": 1280,
				"width": 734,
				"uri": "474f000070a3bc0e2504",
				"url": "http://p1.pstatp.com/large/474f000070a3bc0e2504",
				"type": 1,
				"url_list": [{
					"url": "http://p1.pstatp.com/large/474f000070a3bc0e2504"
				}, {
					"url": "http://p1.pstatp.com/large/474f000070a3bc0e2504"
				}, {
					"url": "http://p1.pstatp.com/large/474f000070a3bc0e2504"
				}]
			}],
			"video_list": []
		}
	}, {
		"ansid": "6490295195001684237",
		"forward_count": 0,
		"comment_count": 0,
		"digg_count": 0,
		"brow_count": 148275,
		"bury_count": 0,
		"is_digg": false,
		"is_show_bury": true,
		"is_buryed": false,
		"title": "",
		"schema": "sslocal://wenda_detail?ansid=6490295195001684237\u0026api_param=%7B%22answer_list%22%3A%5B6487439111035552013%2C6487832839575306510%2C6490399291209679118%2C6502178788405674253%2C6487883252815102221%2C6488096885272756493%2C6488271209497624846%2C6488474283713495310%2C6487703129067356430%2C6490295195001684237%5D%2C%22answer_type%22%3A%22nice_answer%22%2C%22enter_ansid%22%3A%226487439111035552013%22%2C%22enter_from%22%3A%22question%22%2C%22in_offset%22%3A9%2C%22next_offset%22%3A10%2C%22origin_from%22%3A%22click_headline%22%2C%22parent_enter_from%22%3A%22click_headline%22%7D\u0026gd_ext_json=%7B%22enter_from%22%3A%22click_answer%22%2C%22ansid%22%3A%226490295195001684237%22%2C%22enterfrom_answerid%22%3A%226487439111035552013%22%2C%22parent_enterfrom%22%3A%22click_headline%22%2C%22qid%22%3A%226487404190401298702%22%2C%22category_name%22%3A%22__all__%22%2C%22author_id%22%3A%2261189146266%22%2C%22article_type%22%3A%22wenda%22%2C%22log_pb%22%3A%7B%22impr_id%22%3A%22201801081121110100080192133812B4%22%7D%7D",
		"comment_schema": "sslocal://wenda_detail?ansid=6490295195001684237\u0026api_param=%7B%22answer_list%22%3A%5B6487439111035552013%2C6487832839575306510%2C6490399291209679118%2C6502178788405674253%2C6487883252815102221%2C6488096885272756493%2C6488271209497624846%2C6488474283713495310%2C6487703129067356430%2C6490295195001684237%5D%2C%22answer_type%22%3A%22nice_answer%22%2C%22enter_ansid%22%3A%226487439111035552013%22%2C%22enter_from%22%3A%22question%22%2C%22in_offset%22%3A9%2C%22next_offset%22%3A10%2C%22origin_from%22%3A%22click_headline%22%2C%22parent_enter_from%22%3A%22click_headline%22%7D\u0026gd_ext_json=%7B%22enter_from%22%3A%22click_answer%22%2C%22ansid%22%3A%226490295195001684237%22%2C%22enterfrom_answerid%22%3A%226487439111035552013%22%2C%22parent_enterfrom%22%3A%22click_headline%22%2C%22qid%22%3A%226487404190401298702%22%2C%22category_name%22%3A%22__all__%22%2C%22author_id%22%3A%2261189146266%22%2C%22article_type%22%3A%22wenda%22%2C%22log_pb%22%3A%7B%22impr_id%22%3A%22201801081121110100080192133812B4%22%7D%7D\u0026is_jump_comment=1",
		"create_time": 1511139608,
		"ans_url": "https://ic.snssdk.com/wenda/v1/wapanswer/content/?ansid=6490295195001684237",
		"user": {
			"uname": "喵喵历史君",
			"avatar_url": "http://p9.pstatp.com/thumb/2c6d000f4c5d2277229f",
			"user_id": "61189146266",
			"is_verify": 0,
			"create_time": 1495959301,
			"user_intro": "",
			"is_following": 0,
			"user_auth_info": "",
			"schema": "sslocal://profile?api_param=%7B%22enter_from%22%3A%22question%22%2C%22origin_from%22%3A%22click_headline%22%2C%22parent_enter_from%22%3A%22click_headline%22%7D\u0026refer=wenda\u0026uid=61189146266",
			"total_digg": 264,
			"total_answer": 175
		},
		"share_data": {
			"content": "关注刘备有4个儿子，4个儿子分别是，刘封、刘禅、刘永、刘理。而刘封又不是刘备的亲生儿子，刘封本姓窦，所以按照长幼的次序，也是应该选择刘禅",
			"image_url": "http://p3.pstatp.com/origin/18a300102cab5d8d0e05",
			"share_url": "https://www.wukong.com/answer/6490295195001684237/?iid=20063010037\u0026app=news_article\u0026share_ansid=6487439111035552013",
			"title": "刘备有四个儿子，为何却让资质平平的刘禅继位？(喵喵历史君的回答)- 悟空问答"
		},
		"content_abstract": {
			"text": "关注刘备有4个儿子，4个儿子分别是，刘封、刘禅、刘永、刘理。而刘封又不是刘备的亲生儿子，刘封本姓窦，所以按照长幼的次序，也是应该选择刘禅的！而且，废长立幼历来是王朝取乱之道。刘备深受传统礼教影响自然不会轻易更改。长子刘封仅仅为养子，且因关羽事件被刘备赐死。次子刘禅在刘备逝世时仅仅十七岁，幼子刘永刘理则更小了。按长幼有序的原则也应是刘禅继位。《三国志》中有这么一段记载，说诸葛亮对射君称赞刘禅，射君又将这件事告诉了刘备，刘备很高兴。“说丞相叹卿智量，甚大增修，过于所望，审能如此，吾复何忧？勉之，勉之。”意思是连诸葛亮都称赞刘禅“智量甚大”，比想象中聪明，我还有啥担忧的？表示鼓励。诸葛亮不会阿谀奉承，刘备不会不识人，陈寿也不会弄虚作假。所以，刘禅绝不是我们想像中的，那么无能！刘禅能在诸葛亮把持朝政消耗蜀国的实力到后来的蜀国灭亡刘禅仍然能自保，并且知道蜀国必然灭亡，能避免自己的臣民生灵涂炭，足见这个人肯定还是有大智慧的！懂得，顺势而为，这点很关键！所以你还认为刘禅真的是资质平平吗？",
			"thumb_image_list": [],
			"large_image_list": [],
			"video_list": []
		}
	}],
	"has_more": true,
	"related_question_banner_type": 0,
	"related_question_reason_url": "sslocal://detail?groupid=6451733322926129422",
	"can_answer": true,
	"candidate_invite_user": [],
	"module_list": [{
		"day_icon_url": "http://p3.pstatp.com/origin/1bf50001abbc1c7f8dba",
		"night_icon_url": "http://p3.pstatp.com/origin/1bf40001abebc0717135",
		"text": "更多问答",
		"schema": "sslocal://feed?api_param=%7B%22enter_from%22%3A%22question%22%2C%22origin_from%22%3A%22click_headline%22%2C%22parent_enter_from%22%3A%22click_headline%22%2C%22source%22%3A%22question_brow%22%7D\u0026category=question_and_answer\u0026concern_id=6260258266329123329\u0026name=%E5%9B%9E%E7%AD%94\u0026type=4",
		"icon_type": 2
	}, {
		"day_icon_url": "http://p.pstatp.com/origin/43d6001153a9909123ea",
		"night_icon_url": "http://p.pstatp.com/origin/3f040012bf0ccede7d24",
		"text": "提问",
		"schema": "sslocal://wenda_question_post?api_param=%7B%22enter_from%22%3A%22question%22%2C%22origin_from%22%3A%22click_headline%22%2C%22parent_enter_from%22%3A%22click_headline%22%2C%22source%22%3A%22question_brow%22%7D\u0026gd_ext_json=%7B%22log_pb%22%3A%7B%22impr_id%22%3A%22201801081121110100080192133812B4%22%7D%2C%22author_id%22%3A%2250758206843%22%2C%22qid%22%3A%226487404190401298702%22%2C%22category_name%22%3A%22__all__%22%2C%22ansid%22%3A%226487439111035552013%22%2C%22article_type%22%3A%22wenda%22%2C%22enter_from%22%3A%22click_headline%22%7D",
		"icon_type": 1
	}],
	"module_count": 2,
	"question_header_content_fold_max_count": 1,
	"show_format": {
		"font_size": "18",
		"show_module": 1,
		"answer_full_context_color": 0
	},
	"question": {
		"qid": "6487404190401298702",
		"post_answer_url": "sslocal://wenda_post?api_param=%7B%22enter_from%22%3A%22question%22%2C%22origin_from%22%3A%22click_headline%22%2C%22parent_enter_from%22%3A%22click_headline%22%7D\u0026gd_ext_json=%7B%22log_pb%22%3A%7B%22impr_id%22%3A%22201801081121110100080192133812B4%22%7D%2C%22author_id%22%3A%2250758206843%22%2C%22qid%22%3A%226487404190401298702%22%2C%22category_name%22%3A%22__all__%22%2C%22ansid%22%3A%226487439111035552013%22%2C%22article_type%22%3A%22wenda%22%2C%22enter_from%22%3A%22click_headline%22%7D\u0026qTitle=%E5%88%98%E5%A4%87%E6%9C%89%E5%9B%9B%E4%B8%AA%E5%84%BF%E5%AD%90%EF%BC%8C%E4%B8%BA%E4%BD%95%E5%8D%B4%E8%AE%A9%E8%B5%84%E8%B4%A8%E5%B9%B3%E5%B9%B3%E7%9A%84%E5%88%98%E7%A6%85%E7%BB%A7%E4%BD%8D%EF%BC%9F\u0026qid=6487404190401298702",
		"is_follow": false,
		"nice_ans_count": 26,
		"normal_ans_count": 75,
		"follow_count": 329,
		"create_time": 1510466493,
		"can_edit": false,
		"show_edit": false,
		"can_delete": false,
		"show_delete": false,
		"title": "刘备有四个儿子，为何却让资质平平的刘禅继位？",
		"concern_tag_list": [{
			"concern_id": "6213176638612441602",
			"name": "刘备",
			"schema": "sslocal://concern?api_param=%7B%22wenda_api_param%22%3A%7B%22enter_from%22%3A%22question%22%2C%22origin_from%22%3A%22click_headline%22%2C%22parent_enter_from%22%3A%22click_headline%22%7D%7D\u0026cid=6213176638612441602\u0026tab_sname=wenda"
		}, {
			"concern_id": "6215497897710979586",
			"name": "文化",
			"schema": "sslocal://concern?api_param=%7B%22wenda_api_param%22%3A%7B%22enter_from%22%3A%22question%22%2C%22origin_from%22%3A%22click_headline%22%2C%22parent_enter_from%22%3A%22click_headline%22%7D%7D\u0026cid=6215497897710979586\u0026tab_sname=wenda"
		}, {
			"concern_id": "6215497901590710786",
			"name": "历史",
			"schema": "sslocal://concern?api_param=%7B%22wenda_api_param%22%3A%7B%22enter_from%22%3A%22question%22%2C%22origin_from%22%3A%22click_headline%22%2C%22parent_enter_from%22%3A%22click_headline%22%7D%7D\u0026cid=6215497901590710786\u0026tab_sname=wenda"
		}],
		"user": {
			"uname": "王乾",
			"avatar_url": "http://p3.pstatp.com/thumb/8610/3623369505",
			"user_id": "5547760144",
			"is_verify": 0,
			"user_intro": "",
			"user_auth_info": ""
		},
		"share_data": {
			"content": "101个回答，329人收藏",
			"image_url": "http://p3.pstatp.com/list/300x196/43d80015e720a2d13dbc.webp",
			"share_url": "https://www.wukong.com/question/6487404190401298702/?app=news_article\u0026share_ansid=6487439111035552013\u0026iid=20063010037",
			"title": "刘备有四个儿子，为何却让资质平平的刘禅继位？(101个回答) - 悟空问答"
		},
		"content": {
			"text": "",
			"thumb_image_list": [{
				"height": 400,
				"width": 603,
				"uri": "43d80015e720a2d13dbc",
				"url": "http://p3.pstatp.com/list/r603/43d80015e720a2d13dbc",
				"type": 1,
				"url_list": [{
					"url": "http://p3.pstatp.com/list/r603/43d80015e720a2d13dbc"
				}, {
					"url": "http://p3.pstatp.com/list/r603/43d80015e720a2d13dbc"
				}, {
					"url": "http://p3.pstatp.com/list/r603/43d80015e720a2d13dbc"
				}]
			}],
			"large_image_list": [{
				"height": 400,
				"width": 603,
				"uri": "43d80015e720a2d13dbc",
				"url": "http://p3.pstatp.com/large/43d80015e720a2d13dbc",
				"type": 1,
				"url_list": [{
					"url": "http://p3.pstatp.com/large/43d80015e720a2d13dbc"
				}, {
					"url": "http://p3.pstatp.com/large/43d80015e720a2d13dbc"
				}, {
					"url": "http://p3.pstatp.com/large/43d80015e720a2d13dbc"
				}]
			}]
		},
		"fold_reason": {
			"open_url": "sslocal://detail?groupid=6293724675596402946",
			"title": "为什么折叠?"
		}
	},
	"has_profit": false,
	"repost_params": {
		"repost_type": 218,
		"fw_id": 6487404190401298702,
		"fw_id_type": 1026,
		"fw_user_id": 5547760144,
		"opt_id": 6487404190401298702,
		"opt_id_type": 1026,
		"schema": "",
		"title": "刘备有四个儿子，为何却让资质平平的刘禅继位？",
		"cover_url": "http://p3.pstatp.com/list/300x196/43d80015e720a2d13dbc.webp"
	}
}
```

## 首页问答分类-提出了问题

- 请求方式：POST
- 请求地址：http://is.snssdk.com/wenda/v1/question/brow/
- 请求参数

| 参数          | 类型     | 是否必须 | 描述        | 示例                                       |
| ----------- | ------ | ---- | --------- | ---------------------------------------- |
| iid         | Int    | N    | 用户的 ID    | 18145386087                              |
| device_id   | Int    | N    | 设备 ID     | 8800803362                               |
| enter_from  | String | Y    | 从哪里进入问答详情 | click_category                           |
| gd_ext_json | Int    | Y    |           | {"log_pb":{"impr_id":"20180108112136010008019154970796"},"qid":"6418445196307988737","author_id":"3545884073","category_name":"answer_hot","ansid":"6426983034901233921","enter_from":"click_category","article_type":"wenda"} |
| api_param   | Int    | Y    |           | {"enter_ansid":"6426983034901233921","scope":"toutiao_wenda","enter_from":"answer_hot","origin_from":"native_wenda_home","source":"question","parent_enter_from":"wenda_home"} |
| qid         | Int    | Y    | 问题 ID     | 6418445196307988737                      |

![首页问答分类](img/wenda/wenda_category.jpeg)

```
{
	"err_no": 0,
	"err_tips": "",
	"offset": 10,
	"api_param": "{\"enter_from\":\"question\",\"origin_from\":\"native_wenda_home\"}",
	"ans_list": [{
		"ansid": "6426983034901233921",
		"forward_count": 2,
		"comment_count": 51,
		"digg_count": 797,
		"brow_count": 1922734,
		"bury_count": 72,
		"is_digg": false,
		"is_show_bury": true,
		"is_buryed": false,
		"title": "",
		"schema": "sslocal://wenda_detail?ansid=6426983034901233921\u0026api_param=%7B%22answer_list%22%3A%5B6426983034901233921%2C6484952246101475597%2C6479715514183581965%2C6492890567976943886%2C6484365603896295693%2C6502034851862937870%2C6483417137170874638%2C6419169762600812801%2C6487481808857334030%2C6419100187444117761%5D%2C%22answer_type%22%3A%22nice_answer%22%2C%22enter_ansid%22%3A%226426983034901233921%22%2C%22enter_from%22%3A%22question%22%2C%22in_offset%22%3A0%2C%22next_offset%22%3A10%2C%22origin_from%22%3A%22native_wenda_home%22%2C%22parent_enter_from%22%3A%22answer_hot%22%2C%22scope%22%3A%22toutiao_wenda%22%7D\u0026gd_ext_json=%7B%22enter_from%22%3A%22click_answer%22%2C%22ansid%22%3A%226426983034901233921%22%2C%22enterfrom_answerid%22%3A%226426983034901233921%22%2C%22parent_enterfrom%22%3A%22click_category%22%2C%22qid%22%3A%226418445196307988737%22%2C%22category_name%22%3A%22answer_hot%22%2C%22author_id%22%3A%223545884073%22%2C%22article_type%22%3A%22wenda%22%2C%22log_pb%22%3A%7B%22impr_id%22%3A%2220180108112136010008019154970796%22%7D%7D",
		"comment_schema": "sslocal://wenda_detail?ansid=6426983034901233921\u0026api_param=%7B%22answer_list%22%3A%5B6426983034901233921%2C6484952246101475597%2C6479715514183581965%2C6492890567976943886%2C6484365603896295693%2C6502034851862937870%2C6483417137170874638%2C6419169762600812801%2C6487481808857334030%2C6419100187444117761%5D%2C%22answer_type%22%3A%22nice_answer%22%2C%22enter_ansid%22%3A%226426983034901233921%22%2C%22enter_from%22%3A%22question%22%2C%22in_offset%22%3A0%2C%22next_offset%22%3A10%2C%22origin_from%22%3A%22native_wenda_home%22%2C%22parent_enter_from%22%3A%22answer_hot%22%2C%22scope%22%3A%22toutiao_wenda%22%7D\u0026gd_ext_json=%7B%22enter_from%22%3A%22click_answer%22%2C%22ansid%22%3A%226426983034901233921%22%2C%22enterfrom_answerid%22%3A%226426983034901233921%22%2C%22parent_enterfrom%22%3A%22click_category%22%2C%22qid%22%3A%226418445196307988737%22%2C%22category_name%22%3A%22answer_hot%22%2C%22author_id%22%3A%223545884073%22%2C%22article_type%22%3A%22wenda%22%2C%22log_pb%22%3A%7B%22impr_id%22%3A%2220180108112136010008019154970796%22%7D%7D\u0026is_jump_comment=1",
		"create_time": 1496398597,
		"ans_url": "https://ic.snssdk.com/wenda/v1/wapanswer/content/?ansid=6426983034901233921",
		"user": {
			"uname": "揭宻",
			"avatar_url": "http://p1.pstatp.com/thumb/3a210000facd37b87660",
			"user_id": "3545884073",
			"is_verify": 0,
			"create_time": 1411122317,
			"user_intro": "",
			"is_following": 0,
			"user_auth_info": "",
			"schema": "sslocal://profile?api_param=%7B%22enter_from%22%3A%22question%22%2C%22origin_from%22%3A%22native_wenda_home%22%2C%22parent_enter_from%22%3A%22answer_hot%22%2C%22scope%22%3A%22toutiao_wenda%22%7D\u0026refer=wenda\u0026uid=3545884073",
			"total_digg": 993,
			"total_answer": 13
		},
		"share_data": {
			"content": "要说这句话真还是假，我认为需要分析现在的大环境以及未来的趋势才可辨明。中国的住房经济跟其他国家不一样。比如欧美日本，住房的概念，是有\ufffd\ufffd",
			"image_url": "http://p3.pstatp.com/origin/18a300102cab5d8d0e05",
			"share_url": "https://www.wukong.com/answer/6426983034901233921/?iid=20063010037\u0026app=news_article\u0026share_ansid=6426983034901233921",
			"title": "马云又出惊人言论，8年后房子最不值钱，他的话可信吗？(揭宻的回答)- 悟空问答"
		},
		"content_abstract": {
			"text": "要说这句话真还是假，我认为需要分析现在的大环境以及未来的趋势才可辨明。中国的住房经济跟其他国家不一样。比如欧美日本，住房的概念，是有得住。美国绝大部分购房者都是30岁以上、以家庭为单位的人士。在此之前，美国人以租房为主。一般子女踏入社会之后，就不会在父母家居住，必须要租房子。所以美国的住房经济，实际上是相对稳定的购房群体和相对稳定的租房群体组成，这两部分人随着时间的推移，租房群体不断补充到购房群体中，逐渐推高了局部地区的房价，比如纽约、洛杉矶。但是美国大部分地区的购房成本都仍比较低，这主要也是其土地使用政策的特点决定的。日本则是因为80年代后期经济泡沫崩溃造成的日元暴跌，导致房地产几乎成为负资产，因此购房群体大大减少，年轻人普遍以租房为主。日本的家庭观念并不弱于我们，在子女成婚前，大多数也与父母居住，其房产主要来源于七八十年代的购房潮。现在的日本青年即便是结婚，很大一部分也仍是在租房。我们国家的民族文化，决定了“居者有其房”的理念，导致了在人口膨胀期，每一个单独的居民人口都应该有一套房的理念风靡全国。这也是中国房地产能够爆发的基础条件。条件归条件，如果脱离了两个政策，房地产依旧没有暴涨的空间。假设，如果中国的居民住房仍处在80、90年代以企业、单位分配为主的时代，那么即便是刚需再猛烈，房价也很难有上涨的理由。所以，商品房的市场化政策，使得房地产得到了空前高的上涨空间。既然房地产市场化，就要遵循市场规律。市场规律简单的说就是买多涨，卖多跌。所以，第二个假设又出现了。假设，北上广深没有获得特殊的经济区域地位，那么房地产会不会仍旧上涨？大概会，但绝不会像现在这样快，或者说它被分摊到了全国各个城市的涨幅中，就不会出现急剧暴涨的局面。北上广深的特殊经济区域地位，导致了大量人潮涌向这些城市。原本应该在全国各地购房的消费需求，被集中到了北上广深，导致这些特殊经济地位的区域，房价暴涨。这实际上是这些地区“买多”造成的。但并不意味着全国其他所有地方都在“买多”，因为其可以称为“人才”的人口，大部分被北上广深抢夺，而这些“人才”则是当地原本应有的住房消费人群。但局部地区房价的暴涨，加上部分炒房客的恶意抬价，加上地方政府为了GDP而大肆卖地，使得北上广深以外的地区，都认同了一种假象：我们这个地方的房子仍然会被抢购，于是导致了部分二线城市的房价也“暴涨”，但很明显的是，这种“暴涨”无以为继，因为大多数二线以下的城市，有价但无市，有房但没人买，空有高价也没什么用。于是后来出现了一系列的调控政策。这些调控政策，从我的角度解读，只有一个目的：稳定国家经济和政治，从而保证社会稳定。为什么这样说呢？因为无论房价上涨，还是下跌，对于国家来说，都是灾难性的系统风险。这个系统风险甚至有可能让我们成为第二个日本，那时大衰退将无可挽救地到来。住房，已经将中国人口划分为两个“阶级”，我之所以称之为“阶级”，而不是“阶层”，是因为这两部分人是处于利益对立面的。改革开放以来，国家几乎不再公开使用“阶级”这个词，而开始使用“阶层”，是因为从国家的角度来看，全国人民都是利益大同的，只是局部利益有所冲突，但并不是敌我关系，所以不称“阶级”。然而今天的房地产，已经使得“有房者”和“无房者”站在了不同的利益立场上。所谓屁股决定脑袋，“有房者”有2个期望，一是自己的房价越来越高，房子越来越值钱，二是自己的房子越来越大。总体来说，房价上涨是其基本利益出发点。而“无房者”则希望房价暴跌，一部分人认为自己将买得起房，而另一部分人由于完全买不起，可能更倾向于幸灾乐祸。由于住房问题，在中国是刚需，有深厚的文化支撑，所以“不买房也没什么”的中间立场，几乎没有立足之地。每个人都无法回避自己的住房问题，所以这二者开始对立起来。房价上涨和下跌，损害的都是其中一边的利益，尤其是下跌更可怕，那将意味着中国历经二十多年改革开放所积累的一大部分财富灰飞烟灭。而房价的上涨，则会带来两方面的损伤。其一是杠杆进一步加剧，普通人购房，首付30%，借了70%，这就相当于2倍多的杠杆。杠杆会带来什么样的问题，在2015年的股灾中已经被很好的诠释，并不是10倍杠杆才是风险，主要看杠杆的基数有多大。全民2倍杠杆，其危害性一点也不比10倍杠杆低。国家未来的财富提前消费，就会遭遇严重疲软。其二是民众基础不稳。近期中央座谈时，提到了巡视地方的问题。“政治优先”成为核心，这或许释放了一些信号。国家或许已经感受到了在经济多方面疲软的现状下，各种思潮正在潜伏。前苏的前车之鉴，仅仅过去了三十多年。政府执政一向追求“民心所向”，所以，不让房价无节制的持续走高，才是维持这部分民心的基础。而实际上现在房地产市场，从国家层面，面临解决三大问题：核心问题是去库存，二三线以下的城市还存在着大量的空置房，卖不出去。房地产商造房子通常都是找银行借钱的，房子卖不出去，除了万达万科这种一流房企，大多数房企可能都会资金周转困难。而库存量巨大是现实问题，如果不解决这个问题，即便是控制了房价，也只是无根之木，无法缓解房地产市场的资金流动性问题，从而会发生系统性风险。第二个问题则是，在去库存的大目标下，控制房价则是一个辅助手段。这个辅助手段，以前主要表现在不让房价增长过快，彼时国家也解释了“不增长过快”的意思，并不是不增长。而现阶段，流动性问题日益突出，控制房价的目标就变成了“不准涨”。尽管公喉单位从来没有宣传过“不准涨”的理念，但实际上各地方政府已经开始执行落实。例如天津市政府对于新开盘的房地产，要求涨幅不得超过周边二手房价格的5%，甚至不准涨。房企如敢涨价卖，政府是不批的。为什么要严格到这种程度？我猜测很大一部分原因就是国家要尽快解决去库存的问题。新房价格不涨，二手房也就失去了上涨空间。再配合地方政府史上最严厉的限购政策，异地买房人群大大减少，使得房地产交易市场的价格波动趋于缓和，甚至俨然有下降趋势。但真正会降吗？目前恐怕也不会下降太多，主要原因是能买的人少了很多，观望的人多了很多，卖方市场也缺少大幅下调价格倾销的理由。我认为这才是国家想要的局面，使热门城市的房地产市场进入僵持状态，不涨也不大跌，维持各方民意基础。房地产市场并不是一个孤立的市场，中国的房市跟金融市场几乎算是直接挂钩的，当房市里的投机资金无法快速撤出时，也避免了这些热钱涌向其他领域，造成多边震荡的局面。可以说，现在的房市，已经处于被锁定状态。对于利益各方而言，能够接受，对于国家而言，眼下的局面有利于放手去解决其他的关键问题。第三个问题，则是人们对于“房子”的价值观。其实这才是底层问题，但这是个认知层面的问题，并不直接牵扯或影响国家经济现阶段的各方面，所以需要从长计议。我党的“千年大计”，有一部分原因很可能是为顺带解决这个关键问题。雄安计划出台的前后，政府说了：“房子是用来住的，不是用来炒的。”这充分说明了国家已经察觉到解决“房价居高不下”的关键核心在于扭转认知。我们应该严肃谨慎的解读政治语言，因为这是政治领域一个很常见的基本要求：“房子是用来住的。”需要注意的是，这句话并没有说：“房子是买来住的。”用和买看似一字之差，实际运作则截然不同。这或许意味着，国家希望借助包括“千年大计”在内的一系列政策手段，传递一种认知：未来你并不一定需要买房住。现实状况告诉我们，买房固然天经地义，但是全民热衷买房带来的后果，就是严重透支未来。那么如何扭转这种“不买一套房就不行”的价值观，则要看能拿出什么样的解决方案。雄安的功能定位，其经济地位绝不会低于北上广深。而在这样一个未来的新城市里，国家首先做的就是严控房地产，可能意味着未来这个地区大部分的房子，都将是“公租房”。当在这个地区工作、生活的人们，逐渐习惯了“租”这种形式，并且，“租”相关的政策逐步完善之后（近期已经出台了一些关于租房的新法规，请自行检索），“买房刚需”的观念，会不会逐渐淡出我们的社会文化呢？当强烈买房意愿被扭转成“少数因为需要才买房”的观念时，房地产还会不会被“炒”呢？如果不被炒，房价还会不会居高不下呢？当时间跨度足够长时，比如十年，房地产市场即便回归理性，房价有所下降并开始波动，但社会、经济所遭受的影响或许也已经降到最低了。这或许才是长期解决房地产问题的根本之道。所以，雄安称之为千年大计一点也不为过，它承载的使命不仅仅是开辟一个新的经济区域，而是包含了环保、住房等一系列文化理念修正在内的一系列任务。我相信马云作出这个判断，绝对不是分析数字得出来的结论。第一，这并不完全符合他的气质，第二，现在的数字即便再齐全，对未来也缺乏足够的说服力，否则政府早就分析透了才对。这个结论，只能靠推理。而推理是建立在什么基础上的呢？足够的信息。这足够的信息从哪儿来呢？马云同志在国内掌管着一家千亿价值的公司，在国内的政治参与程度也一定不低，这个级别的民营企业家由于掌握了大量离老百姓近的资源、渠道，也势必成为国家倚重的力量之一。因此，马云对于国家政策的解读，一定比我们具有高得多的信息优势。8年后房子不值钱的论调，第一透露了这个期限可能是八年，在八年左右的时间里，国家一方面会去库存，解决资金流动性的问题，另一方面会大力提倡公租房，八年后房地产解绑，回归市场自然运作，房价会一定程度的下跌。但彼时，要么你已经买了房，要么你还租着房，即便房价下跌，在“房子是用来住的”共识基础上，社会各方都只能接受这样一个结果，而不会产生崩盘式的动荡。第二，说明8年后的房地产市场，不一定是“房子多如葱”，而是“公租房”多如葱。房子多如葱只能说明其投机性还存在，房价依旧可能是个大问题，因为议价权永远不会掌握在刚需手里。而“公租房多如葱”，则彻底打破了房地产市场投机的可能性——买不起，我总租得起吧？公租房多如葱的时候，价格也一定非常便宜，结合认知观念的灌输，有可能大大抑制所谓的“刚需”。一大部分人也就没了买房的必要，商品房的价格自然也就降下来。公租房制度，现阶段很明显还是非常不完善的，主要是在管理方面，仍然欠缺，欠缺的核心原因依然是资源稀缺。但在未来，公租房很可能成为更完善、更健康、更舒适的居住环境的代名词。如果能够到这一天，买房还真的会是“刚需”吗？",
			"thumb_image_list": [],
			"large_image_list": [],
			"video_list": []
		}
	}, {
		"ansid": "6484952246101475597",
		"forward_count": 5,
		"comment_count": 407,
		"digg_count": 1206,
		"brow_count": 1846626,
		"bury_count": 127,
		"is_digg": false,
		"is_show_bury": true,
		"is_buryed": false,
		"title": "",
		"schema": "sslocal://wenda_detail?ansid=6484952246101475597\u0026api_param=%7B%22answer_list%22%3A%5B6426983034901233921%2C6484952246101475597%2C6479715514183581965%2C6492890567976943886%2C6484365603896295693%2C6502034851862937870%2C6483417137170874638%2C6419169762600812801%2C6487481808857334030%2C6419100187444117761%5D%2C%22answer_type%22%3A%22nice_answer%22%2C%22enter_ansid%22%3A%226426983034901233921%22%2C%22enter_from%22%3A%22question%22%2C%22in_offset%22%3A1%2C%22next_offset%22%3A10%2C%22origin_from%22%3A%22native_wenda_home%22%2C%22parent_enter_from%22%3A%22answer_hot%22%2C%22scope%22%3A%22toutiao_wenda%22%7D\u0026gd_ext_json=%7B%22enter_from%22%3A%22click_answer%22%2C%22ansid%22%3A%226484952246101475597%22%2C%22enterfrom_answerid%22%3A%226426983034901233921%22%2C%22parent_enterfrom%22%3A%22click_category%22%2C%22qid%22%3A%226418445196307988737%22%2C%22category_name%22%3A%22answer_hot%22%2C%22author_id%22%3A%226284964709%22%2C%22article_type%22%3A%22wenda%22%2C%22log_pb%22%3A%7B%22impr_id%22%3A%2220180108112136010008019154970796%22%7D%7D",
		"comment_schema": "sslocal://wenda_detail?ansid=6484952246101475597\u0026api_param=%7B%22answer_list%22%3A%5B6426983034901233921%2C6484952246101475597%2C6479715514183581965%2C6492890567976943886%2C6484365603896295693%2C6502034851862937870%2C6483417137170874638%2C6419169762600812801%2C6487481808857334030%2C6419100187444117761%5D%2C%22answer_type%22%3A%22nice_answer%22%2C%22enter_ansid%22%3A%226426983034901233921%22%2C%22enter_from%22%3A%22question%22%2C%22in_offset%22%3A1%2C%22next_offset%22%3A10%2C%22origin_from%22%3A%22native_wenda_home%22%2C%22parent_enter_from%22%3A%22answer_hot%22%2C%22scope%22%3A%22toutiao_wenda%22%7D\u0026gd_ext_json=%7B%22enter_from%22%3A%22click_answer%22%2C%22ansid%22%3A%226484952246101475597%22%2C%22enterfrom_answerid%22%3A%226426983034901233921%22%2C%22parent_enterfrom%22%3A%22click_category%22%2C%22qid%22%3A%226418445196307988737%22%2C%22category_name%22%3A%22answer_hot%22%2C%22author_id%22%3A%226284964709%22%2C%22article_type%22%3A%22wenda%22%2C%22log_pb%22%3A%7B%22impr_id%22%3A%2220180108112136010008019154970796%22%7D%7D\u0026is_jump_comment=1",
		"create_time": 1509895606,
		"ans_url": "https://ic.snssdk.com/wenda/v1/wapanswer/content/?ansid=6484952246101475597",
		"user": {
			"uname": "任易",
			"avatar_url": "http://p3.pstatp.com/thumb/2b600252ee80170bfbf",
			"user_id": "6284964709",
			"is_verify": 1,
			"create_time": 1460337644,
			"user_intro": "资深财经作者",
			"is_following": 0,
			"user_auth_info": "{\"auth_type\": \"0\", \"auth_info\": \"资深财经作者\"}",
			"schema": "sslocal://profile?api_param=%7B%22enter_from%22%3A%22question%22%2C%22origin_from%22%3A%22native_wenda_home%22%2C%22parent_enter_from%22%3A%22answer_hot%22%2C%22scope%22%3A%22toutiao_wenda%22%7D\u0026refer=wenda\u0026uid=6284964709",
			"total_digg": 11969,
			"total_answer": 77
		},
		"share_data": {
			"content": "大家可以先去搜一下那篇《远离你终将衰落的家乡》，大意就是在出生率下降，大量年轻人口向大型城市群，换句话说，只有大型城市群（京津、上海\ufffd\ufffd",
			"image_url": "http://p3.pstatp.com/thumb/2b600252ee80170bfbf",
			"share_url": "https://www.wukong.com/answer/6484952246101475597/?iid=20063010037\u0026app=news_article\u0026share_ansid=6426983034901233921",
			"title": "任易回答了马云又出惊人言论，8年后房子最不值钱，他的话可信吗？(1206赞)- 悟空问答"
		},
		"content_abstract": {
			"text": "大家可以先去搜一下那篇《远离你终将衰落的家乡》，大意就是在出生率下降，大量年轻人口向大型城市群，换句话说，只有大型城市群（京津、上海、广东、浙江、江苏、福建）才具备从其他省份吸收劳动人口（即抽水机）的能力；但是这些大型城市群本身的生育率又一路走低；这会导致什么结果？在可以预见的20-25年后，在中国开始全面建设小康社会的时候，中国人口（劳动力）的短缺将成为极大的问题。如果说东南六省加北京天津还能依靠从其他省份抽水来维持自身的竞争力的话，内陆省份怎么办？内陆省份也会活得很好，因为省会城市可以从周边城市抽水，其他经济教育强市也能从周边城市抽水；但是那些在人口竞争中失败的城市，终将衰落。图片引自 @城市数据团 的《远离你终将衰落的家乡》那些已露颓势的城市黑龙江省双鸭山市，以前的大型煤矿，现在资源枯竭，天气寒冷，又没有边境贸易，所以人口在不断流出——双鸭山市的房子，又有谁会买呢？可能只有周边等待城市化的农民。辽宁省阜新市，以前的大型煤矿，现在只留下几十万年龄较大、教育不高、难以掌握新技能又疾病缠身的煤矿工人，幸好还有辽宁工程技术大学留在这里，多少还能带来一些新生血液，但又有多少人能留下来呢？——阜新的房子，值钱么？内蒙古鄂尔多斯的康巴什当年曾有「鬼城」的称号，虽然现在总有传言说鬼城不鬼，但我没有亲历，不敢妄言。就连北京这样的核心城市，在石景山区王平村有个王平煤矿，矿区和家属区已经彻底荒废了。这是我亲自去探险得到的照片。——这里的房子，你买么？俄罗斯远东极东地区楚科奇州的小城共青城（Комсомольский），尽管他的房屋还很“完整”，街道还很齐整，但街道上空无一人，房屋里也人去楼空，整座城市死一般沉寂。已如同鬼城，于1998年废弃。——这些房子值钱么？俄罗斯摩尔曼斯克州的海港城市格列米哈（Гремиха），这里曾经是俄罗斯的核潜艇基地，但是现在人迹罕至，狗熊可以在城市里穿行。再过十年，大部分地区的房子都不值钱就以我的老家为例，一个精装修的高档高层住宅小区，小区里有人工湖、有海景、有车位，每平方米只要4500，也就是说200平的房子只要90万，但是这个城市在过去20年里，大部分居民都有两套房（有一套是交了几万换的单位分房），需求已经被消灭；又没有足够年轻人购房；农民进城也不会买这么高端的房子；最后卖了两年还没有全部卖出，开发商应该是亏了。所以，马云说的最不值钱的就是房子这话是面对全中国700个城市（含台湾地区31个）来说，房子是下跌的；但是对有北上广深宁杭苏锡常通等五十多个有竞争力、有从周围区域抽水能力的城市来说，房产仍然是最好的资产。请牢记，房子的价格，是由其公允价值决定的；即熟悉市场情况的买卖双方在公平交易的条件下和自愿的情况下所确定的价格。说白了就是别人愿意出多少钱买你的房子，没人买的话，你要二十万一平也没用，要两千一平也没用。人气越旺，年轻人越多，房子越有价值什么地方年轻人多？当然是经济好、机会多、收入高、生活丰富、交通便利的地方。那么，在哪里才能找得到呢 ？这种问题，要从国家的政策文件中寻找答案。我写过一篇「《开年首季问大势》后续：全国推进交通基础设施建设」的文章，里面分析了国务院下发的《交通基础设施重大工程建设三年行动计划》。重点看这一段：建成京津冀、长三角、珠三角三大城市群城际铁路网，推进长江中游、中原地区、成渝地区、山东半岛等城市群城际铁路建设。大家求职或者找工作的话，排除京津冀、长三角、珠三角这种竞争激烈地区，长江中游武汉一带、中原地区郑州一带、成渝地区、山东半岛沿海一带都可以考虑。其他没有地铁和高铁的城市，在这场比赛中已经先落后了。吾国与吾民中国人民还有一个非常可爱的习惯——告老还乡，叶落归根。今天的60后、70后等到退休的时候，还是会选择回到故乡养老，所以核心城市的房产需求也不是百分之百的有增无减的 。",
			"thumb_image_list": [{
				"height": 192,
				"width": 192,
				"uri": "dd50006f2723a450c91",
				"url": "http://p3.pstatp.com/list/s192/dd50006f2723a450c91",
				"type": 1,
				"url_list": [{
					"url": "http://p3.pstatp.com/list/s192/dd50006f2723a450c91"
				}, {
					"url": "http://p3.pstatp.com/list/s192/dd50006f2723a450c91"
				}, {
					"url": "http://p3.pstatp.com/list/s192/dd50006f2723a450c91"
				}]
			}, {
				"height": 192,
				"width": 192,
				"uri": "dd50006f426fcfdb6f9",
				"url": "http://p1.pstatp.com/list/s192/dd50006f426fcfdb6f9",
				"type": 1,
				"url_list": [{
					"url": "http://p1.pstatp.com/list/s192/dd50006f426fcfdb6f9"
				}, {
					"url": "http://p1.pstatp.com/list/s192/dd50006f426fcfdb6f9"
				}, {
					"url": "http://p1.pstatp.com/list/s192/dd50006f426fcfdb6f9"
				}]
			}, {
				"height": 192,
				"width": 192,
				"uri": "3ea20009a5ee6b1f3ec2",
				"url": "http://p1.pstatp.com/list/s192/3ea20009a5ee6b1f3ec2",
				"type": 1,
				"url_list": [{
					"url": "http://p1.pstatp.com/list/s192/3ea20009a5ee6b1f3ec2"
				}, {
					"url": "http://p1.pstatp.com/list/s192/3ea20009a5ee6b1f3ec2"
				}, {
					"url": "http://p1.pstatp.com/list/s192/3ea20009a5ee6b1f3ec2"
				}]
			}, {
				"height": 192,
				"width": 192,
				"uri": "dd50006f3de114a782b",
				"url": "http://p3.pstatp.com/list/s192/dd50006f3de114a782b",
				"type": 1,
				"url_list": [{
					"url": "http://p3.pstatp.com/list/s192/dd50006f3de114a782b"
				}, {
					"url": "http://p3.pstatp.com/list/s192/dd50006f3de114a782b"
				}, {
					"url": "http://p3.pstatp.com/list/s192/dd50006f3de114a782b"
				}]
			}, {
				"height": 192,
				"width": 192,
				"uri": "3ea30009a674089aaacf",
				"url": "http://p1.pstatp.com/list/s192/3ea30009a674089aaacf",
				"type": 1,
				"url_list": [{
					"url": "http://p1.pstatp.com/list/s192/3ea30009a674089aaacf"
				}, {
					"url": "http://p1.pstatp.com/list/s192/3ea30009a674089aaacf"
				}, {
					"url": "http://p1.pstatp.com/list/s192/3ea30009a674089aaacf"
				}]
			}],
			"large_image_list": [{
				"height": 459,
				"width": 640,
				"uri": "dd50006f2723a450c91",
				"url": "http://p3.pstatp.com/large/dd50006f2723a450c91",
				"type": 1,
				"url_list": [{
					"url": "http://p3.pstatp.com/large/dd50006f2723a450c91"
				}, {
					"url": "http://p3.pstatp.com/large/dd50006f2723a450c91"
				}, {
					"url": "http://p3.pstatp.com/large/dd50006f2723a450c91"
				}]
			}, {
				"height": 1732,
				"width": 2309,
				"uri": "dd50006f426fcfdb6f9",
				"url": "http://p1.pstatp.com/large/dd50006f426fcfdb6f9",
				"type": 1,
				"url_list": [{
					"url": "http://p1.pstatp.com/large/dd50006f426fcfdb6f9"
				}, {
					"url": "http://p1.pstatp.com/large/dd50006f426fcfdb6f9"
				}, {
					"url": "http://p1.pstatp.com/large/dd50006f426fcfdb6f9"
				}]
			}, {
				"height": 431,
				"width": 750,
				"uri": "3ea20009a5ee6b1f3ec2",
				"url": "http://p1.pstatp.com/large/3ea20009a5ee6b1f3ec2",
				"type": 1,
				"url_list": [{
					"url": "http://p1.pstatp.com/large/3ea20009a5ee6b1f3ec2"
				}, {
					"url": "http://p1.pstatp.com/large/3ea20009a5ee6b1f3ec2"
				}, {
					"url": "http://p1.pstatp.com/large/3ea20009a5ee6b1f3ec2"
				}]
			}, {
				"height": 526,
				"width": 750,
				"uri": "dd50006f3de114a782b",
				"url": "http://p3.pstatp.com/large/dd50006f3de114a782b",
				"type": 1,
				"url_list": [{
					"url": "http://p3.pstatp.com/large/dd50006f3de114a782b"
				}, {
					"url": "http://p3.pstatp.com/large/dd50006f3de114a782b"
				}, {
					"url": "http://p3.pstatp.com/large/dd50006f3de114a782b"
				}]
			}, {
				"height": 224,
				"width": 479,
				"uri": "3ea30009a674089aaacf",
				"url": "http://p1.pstatp.com/large/3ea30009a674089aaacf",
				"type": 1,
				"url_list": [{
					"url": "http://p1.pstatp.com/large/3ea30009a674089aaacf"
				}, {
					"url": "http://p1.pstatp.com/large/3ea30009a674089aaacf"
				}, {
					"url": "http://p1.pstatp.com/large/3ea30009a674089aaacf"
				}]
			}],
			"video_list": []
		}
	}, {
		"ansid": "6479715514183581965",
		"forward_count": 12,
		"comment_count": 316,
		"digg_count": 1742,
		"brow_count": 2218418,
		"bury_count": 346,
		"is_digg": false,
		"is_show_bury": true,
		"is_buryed": false,
		"title": "",
		"schema": "sslocal://wenda_detail?ansid=6479715514183581965\u0026api_param=%7B%22answer_list%22%3A%5B6426983034901233921%2C6484952246101475597%2C6479715514183581965%2C6492890567976943886%2C6484365603896295693%2C6502034851862937870%2C6483417137170874638%2C6419169762600812801%2C6487481808857334030%2C6419100187444117761%5D%2C%22answer_type%22%3A%22nice_answer%22%2C%22enter_ansid%22%3A%226426983034901233921%22%2C%22enter_from%22%3A%22question%22%2C%22in_offset%22%3A2%2C%22next_offset%22%3A10%2C%22origin_from%22%3A%22native_wenda_home%22%2C%22parent_enter_from%22%3A%22answer_hot%22%2C%22scope%22%3A%22toutiao_wenda%22%7D\u0026gd_ext_json=%7B%22enter_from%22%3A%22click_answer%22%2C%22ansid%22%3A%226479715514183581965%22%2C%22enterfrom_answerid%22%3A%226426983034901233921%22%2C%22parent_enterfrom%22%3A%22click_category%22%2C%22qid%22%3A%226418445196307988737%22%2C%22category_name%22%3A%22answer_hot%22%2C%22author_id%22%3A%2265102735418%22%2C%22article_type%22%3A%22wenda%22%2C%22log_pb%22%3A%7B%22impr_id%22%3A%2220180108112136010008019154970796%22%7D%7D",
		"comment_schema": "sslocal://wenda_detail?ansid=6479715514183581965\u0026api_param=%7B%22answer_list%22%3A%5B6426983034901233921%2C6484952246101475597%2C6479715514183581965%2C6492890567976943886%2C6484365603896295693%2C6502034851862937870%2C6483417137170874638%2C6419169762600812801%2C6487481808857334030%2C6419100187444117761%5D%2C%22answer_type%22%3A%22nice_answer%22%2C%22enter_ansid%22%3A%226426983034901233921%22%2C%22enter_from%22%3A%22question%22%2C%22in_offset%22%3A2%2C%22next_offset%22%3A10%2C%22origin_from%22%3A%22native_wenda_home%22%2C%22parent_enter_from%22%3A%22answer_hot%22%2C%22scope%22%3A%22toutiao_wenda%22%7D\u0026gd_ext_json=%7B%22enter_from%22%3A%22click_answer%22%2C%22ansid%22%3A%226479715514183581965%22%2C%22enterfrom_answerid%22%3A%226426983034901233921%22%2C%22parent_enterfrom%22%3A%22click_category%22%2C%22qid%22%3A%226418445196307988737%22%2C%22category_name%22%3A%22answer_hot%22%2C%22author_id%22%3A%2265102735418%22%2C%22article_type%22%3A%22wenda%22%2C%22log_pb%22%3A%7B%22impr_id%22%3A%2220180108112136010008019154970796%22%7D%7D\u0026is_jump_comment=1",
		"create_time": 1508676334,
		"ans_url": "https://ic.snssdk.com/wenda/v1/wapanswer/content/?ansid=6479715514183581965",
		"user": {
			"uname": "WiFi已连接",
			"avatar_url": "http://p3.pstatp.com/thumb/2c6c0007e5e69448fc6e",
			"user_id": "65102735418",
			"is_verify": 1,
			"create_time": 1501825846,
			"user_intro": "互联网问答专家",
			"is_following": 0,
			"user_auth_info": "{\"auth_type\": \"0\", \"auth_info\": \"互联网问答专家\"}",
			"schema": "sslocal://profile?api_param=%7B%22enter_from%22%3A%22question%22%2C%22origin_from%22%3A%22native_wenda_home%22%2C%22parent_enter_from%22%3A%22answer_hot%22%2C%22scope%22%3A%22toutiao_wenda%22%7D\u0026refer=wenda\u0026uid=65102735418",
			"total_digg": 16068,
			"total_answer": 577
		},
		"share_data": {
			"content": "这次终于是马云本人说的话了。马云一边说着说的未来最便宜的是房子，一边在香港花15亿港币买的房子，15亿算不算贵，未来如果房子不值钱，他这钱\ufffd",
			"image_url": "http://p3.pstatp.com/thumb/2c6c0007e5e69448fc6e",
			"share_url": "https://www.wukong.com/answer/6479715514183581965/?iid=20063010037\u0026app=news_article\u0026share_ansid=6426983034901233921",
			"title": "WiFi已连接回答了马云又出惊人言论，8年后房子最不值钱，他的话可信吗？(1742赞)- 悟空问答"
		},
		"content_abstract": {
			"text": "这次终于是马云本人说的话了。马云一边说着说的未来最便宜的是房子，一边在香港花15亿港币买的房子，15亿算不算贵，未来如果房子不值钱，他这钱打水漂吗？马云当然不会说，但是明眼人还是能看出来的。楼市未来的可能性无法判断，就像股票一样，我们都无法判断大盘如何，所有的暴涨暴跌几乎都在意料之外，情况出现之后很多马后炮分析得很有道理，旦未发生之前谁知道。中国楼市暴涨还是暴跌都来去匆匆，吗我们都没有上帝之眼。只能尽量多提供些信息给大家吧。“房子是用来住的，不是用来炒的。”这个概念迅速被普及了。楼市价格平缓基本可以预见，但谁能猜到会不会出现什么奇怪的突变。但是既然有居住的需要，还是得买，当刚需购买就别想那么多，永远摸不到底也不知道顶峰在哪里。另外我觉得生活本质始终是最重要的，水、空气、土壤、食物还有完善的医疗体系才是最重要的，如果这几样都具备，我愿意一辈子租房子生活。在那里生活都不影响我生活质量。马云说过更可怕的一句话：10年后，癌症将困扰每一个家庭。如果我们居住在这样的环境中，身体将受到非常大的侵害。即使在今天，医院里也是人满为患，一床难求。更不要说10年后了。房子会不会不值钱我不清楚，旦未来大家的重点真的聚焦在癌症、医疗等问题上。",
			"thumb_image_list": [],
			"large_image_list": [],
			"video_list": []
		}
	}, {
		"ansid": "6492890567976943886",
		"forward_count": 2,
		"comment_count": 225,
		"digg_count": 512,
		"brow_count": 668686,
		"bury_count": 110,
		"is_digg": false,
		"is_show_bury": true,
		"is_buryed": false,
		"title": "",
		"schema": "sslocal://wenda_detail?ansid=6492890567976943886\u0026api_param=%7B%22answer_list%22%3A%5B6426983034901233921%2C6484952246101475597%2C6479715514183581965%2C6492890567976943886%2C6484365603896295693%2C6502034851862937870%2C6483417137170874638%2C6419169762600812801%2C6487481808857334030%2C6419100187444117761%5D%2C%22answer_type%22%3A%22nice_answer%22%2C%22enter_ansid%22%3A%226426983034901233921%22%2C%22enter_from%22%3A%22question%22%2C%22in_offset%22%3A3%2C%22next_offset%22%3A10%2C%22origin_from%22%3A%22native_wenda_home%22%2C%22parent_enter_from%22%3A%22answer_hot%22%2C%22scope%22%3A%22toutiao_wenda%22%7D\u0026gd_ext_json=%7B%22enter_from%22%3A%22click_answer%22%2C%22ansid%22%3A%226492890567976943886%22%2C%22enterfrom_answerid%22%3A%226426983034901233921%22%2C%22parent_enterfrom%22%3A%22click_category%22%2C%22qid%22%3A%226418445196307988737%22%2C%22category_name%22%3A%22answer_hot%22%2C%22author_id%22%3A%224082103071%22%2C%22article_type%22%3A%22wenda%22%2C%22log_pb%22%3A%7B%22impr_id%22%3A%2220180108112136010008019154970796%22%7D%7D",
		"comment_schema": "sslocal://wenda_detail?ansid=6492890567976943886\u0026api_param=%7B%22answer_list%22%3A%5B6426983034901233921%2C6484952246101475597%2C6479715514183581965%2C6492890567976943886%2C6484365603896295693%2C6502034851862937870%2C6483417137170874638%2C6419169762600812801%2C6487481808857334030%2C6419100187444117761%5D%2C%22answer_type%22%3A%22nice_answer%22%2C%22enter_ansid%22%3A%226426983034901233921%22%2C%22enter_from%22%3A%22question%22%2C%22in_offset%22%3A3%2C%22next_offset%22%3A10%2C%22origin_from%22%3A%22native_wenda_home%22%2C%22parent_enter_from%22%3A%22answer_hot%22%2C%22scope%22%3A%22toutiao_wenda%22%7D\u0026gd_ext_json=%7B%22enter_from%22%3A%22click_answer%22%2C%22ansid%22%3A%226492890567976943886%22%2C%22enterfrom_answerid%22%3A%226426983034901233921%22%2C%22parent_enterfrom%22%3A%22click_category%22%2C%22qid%22%3A%226418445196307988737%22%2C%22category_name%22%3A%22answer_hot%22%2C%22author_id%22%3A%224082103071%22%2C%22article_type%22%3A%22wenda%22%2C%22log_pb%22%3A%7B%22impr_id%22%3A%2220180108112136010008019154970796%22%7D%7D\u0026is_jump_comment=1",
		"create_time": 1511743890,
		"ans_url": "https://ic.snssdk.com/wenda/v1/wapanswer/content/?ansid=6492890567976943886",
		"user": {
			"uname": "林海",
			"avatar_url": "http://p3.pstatp.com/thumb/2485/441815287",
			"user_id": "4082103071",
			"is_verify": 1,
			"create_time": 1426493856,
			"user_intro": "北京大学金融学博士后  专栏作家 ",
			"is_following": 0,
			"user_auth_info": "{\"auth_type\": \"0\", \"auth_info\": \"北京大学金融学博士后  专栏作家 \"}",
			"schema": "sslocal://profile?api_param=%7B%22enter_from%22%3A%22question%22%2C%22origin_from%22%3A%22native_wenda_home%22%2C%22parent_enter_from%22%3A%22answer_hot%22%2C%22scope%22%3A%22toutiao_wenda%22%7D\u0026refer=wenda\u0026uid=4082103071",
			"total_digg": 6161,
			"total_answer": 105
		},
		"share_data": {
			"content": "不可信。分四点来分析原因：第一，货币会持续超发。无论经济下行还是向好，M2都会不断增加。下行时需要注水刺激，向好时人们会借钱投资加杠杆，",
			"image_url": "http://p3.pstatp.com/thumb/2485/441815287",
			"share_url": "https://www.wukong.com/answer/6492890567976943886/?iid=20063010037\u0026app=news_article\u0026share_ansid=6426983034901233921",
			"title": "林海回答了马云又出惊人言论，8年后房子最不值钱，他的话可信吗？(512赞)- 悟空问答"
		},
		"content_abstract": {
			"text": "不可信。分四点来分析原因：第一，货币会持续超发。无论经济下行还是向好，M2都会不断增加。下行时需要注水刺激，向好时人们会借钱投资加杠杆，央行的钱只会越印越多。货币多了，会自己选择能吸收的每一块资产。而以人的居住为基础需求予以支撑的房子，能沉淀最多的资金，也会吸引最多的资金。从过去十年情况看，投到房产是对抗保值的唯一手段。未来只要持续通胀，这个需求就会一直在。通俗地说，未来吃喝拉撒所有的成本都会上升，工资上升，严重通胀，房价能不涨？怎么可能呢？第二，城镇化的趋势不可逆转。目前中国仍然有巨大的城乡差异，城市的医疗教育卫生福利文化水平，仍然远高于农村。因此向城市流动，到城市生活和工作，仍然是潮流。而农村会怎么样呢？会成为只需要少量劳动力的现代大型农场，成为城市周边的别墅区度假区，成为自然环境保护区。人们将涌入城市，在城市工作，结婚生子，租房买房，这个趋势将不可逆转。第三，房地产已成为巨大产业链的核心，并支撑国家经济的发展。房地产不是孤立的行业，和一系列综合的产业密切相关。如果房地产行业停滞，其他的产业都会受到制约，比如水泥钢铁，比如城市的基础设施开发，甚至为房地产提供金融服务和物业服务的产业，都会因此而枯竭。因此，谁都不会看着经济出现大滑坡，而放之不理。最后，是计划调控的方向，并不总是在打压。有些朋友说，房价不会再涨了，因为国家会采取计划配给的方法提供房源，会采取公租房，保障房等方式，来增加房子的供给。但是大家别忘了，历史早已证明，计划的手大多数时候，是敌不过市场规律的。从长期看，行政介入只能起有限作用，而且方向难以判断。最终会对资源的配置起到关键作用和基础性作用，还是市场——我们刚刚说了，市场规律推动它涨，而计划的手有时助涨有时打压，而打压也总是暂时，且从根本上不可能对抗市场规律。因此我们认为，八年后，只要中国经济的大趋势和运行模式还不会根本改变，房价就仍然会一直高居不下。",
			"thumb_image_list": [{
				"height": 192,
				"width": 192,
				"uri": "47500007d237c04a24e7",
				"url": "http://p3.pstatp.com/list/s192/47500007d237c04a24e7",
				"type": 1,
				"url_list": [{
					"url": "http://p3.pstatp.com/list/s192/47500007d237c04a24e7"
				}, {
					"url": "http://p3.pstatp.com/list/s192/47500007d237c04a24e7"
				}, {
					"url": "http://p3.pstatp.com/list/s192/47500007d237c04a24e7"
				}]
			}, {
				"height": 192,
				"width": 192,
				"uri": "4a3500010d0dea97c138",
				"url": "http://p9.pstatp.com/list/s192/4a3500010d0dea97c138",
				"type": 1,
				"url_list": [{
					"url": "http://p9.pstatp.com/list/s192/4a3500010d0dea97c138"
				}, {
					"url": "http://p9.pstatp.com/list/s192/4a3500010d0dea97c138"
				}, {
					"url": "http://p9.pstatp.com/list/s192/4a3500010d0dea97c138"
				}]
			}, {
				"height": 192,
				"width": 192,
				"uri": "4a3500010d34e40abf0a",
				"url": "http://p3.pstatp.com/list/s192/4a3500010d34e40abf0a",
				"type": 1,
				"url_list": [{
					"url": "http://p3.pstatp.com/list/s192/4a3500010d34e40abf0a"
				}, {
					"url": "http://p3.pstatp.com/list/s192/4a3500010d34e40abf0a"
				}, {
					"url": "http://p3.pstatp.com/list/s192/4a3500010d34e40abf0a"
				}]
			}],
			"large_image_list": [{
				"height": 640,
				"width": 710,
				"uri": "47500007d237c04a24e7",
				"url": "http://p3.pstatp.com/large/47500007d237c04a24e7",
				"type": 1,
				"url_list": [{
					"url": "http://p3.pstatp.com/large/47500007d237c04a24e7"
				}, {
					"url": "http://p3.pstatp.com/large/47500007d237c04a24e7"
				}, {
					"url": "http://p3.pstatp.com/large/47500007d237c04a24e7"
				}]
			}, {
				"height": 300,
				"width": 500,
				"uri": "4a3500010d0dea97c138",
				"url": "http://p9.pstatp.com/large/4a3500010d0dea97c138",
				"type": 1,
				"url_list": [{
					"url": "http://p9.pstatp.com/large/4a3500010d0dea97c138"
				}, {
					"url": "http://p9.pstatp.com/large/4a3500010d0dea97c138"
				}, {
					"url": "http://p9.pstatp.com/large/4a3500010d0dea97c138"
				}]
			}, {
				"height": 292,
				"width": 388,
				"uri": "4a3500010d34e40abf0a",
				"url": "http://p3.pstatp.com/large/4a3500010d34e40abf0a",
				"type": 1,
				"url_list": [{
					"url": "http://p3.pstatp.com/large/4a3500010d34e40abf0a"
				}, {
					"url": "http://p3.pstatp.com/large/4a3500010d34e40abf0a"
				}, {
					"url": "http://p3.pstatp.com/large/4a3500010d34e40abf0a"
				}]
			}],
			"video_list": []
		}
	}, {
		"ansid": "6484365603896295693",
		"forward_count": 10,
		"comment_count": 483,
		"digg_count": 934,
		"brow_count": 1892574,
		"bury_count": 221,
		"is_digg": false,
		"is_show_bury": true,
		"is_buryed": false,
		"title": "",
		"schema": "sslocal://wenda_detail?ansid=6484365603896295693\u0026api_param=%7B%22answer_list%22%3A%5B6426983034901233921%2C6484952246101475597%2C6479715514183581965%2C6492890567976943886%2C6484365603896295693%2C6502034851862937870%2C6483417137170874638%2C6419169762600812801%2C6487481808857334030%2C6419100187444117761%5D%2C%22answer_type%22%3A%22nice_answer%22%2C%22enter_ansid%22%3A%226426983034901233921%22%2C%22enter_from%22%3A%22question%22%2C%22in_offset%22%3A4%2C%22next_offset%22%3A10%2C%22origin_from%22%3A%22native_wenda_home%22%2C%22parent_enter_from%22%3A%22answer_hot%22%2C%22scope%22%3A%22toutiao_wenda%22%7D\u0026gd_ext_json=%7B%22enter_from%22%3A%22click_answer%22%2C%22ansid%22%3A%226484365603896295693%22%2C%22enterfrom_answerid%22%3A%226426983034901233921%22%2C%22parent_enterfrom%22%3A%22click_category%22%2C%22qid%22%3A%226418445196307988737%22%2C%22category_name%22%3A%22answer_hot%22%2C%22author_id%22%3A%222862075489%22%2C%22article_type%22%3A%22wenda%22%2C%22log_pb%22%3A%7B%22impr_id%22%3A%2220180108112136010008019154970796%22%7D%7D",
		"comment_schema": "sslocal://wenda_detail?ansid=6484365603896295693\u0026api_param=%7B%22answer_list%22%3A%5B6426983034901233921%2C6484952246101475597%2C6479715514183581965%2C6492890567976943886%2C6484365603896295693%2C6502034851862937870%2C6483417137170874638%2C6419169762600812801%2C6487481808857334030%2C6419100187444117761%5D%2C%22answer_type%22%3A%22nice_answer%22%2C%22enter_ansid%22%3A%226426983034901233921%22%2C%22enter_from%22%3A%22question%22%2C%22in_offset%22%3A4%2C%22next_offset%22%3A10%2C%22origin_from%22%3A%22native_wenda_home%22%2C%22parent_enter_from%22%3A%22answer_hot%22%2C%22scope%22%3A%22toutiao_wenda%22%7D\u0026gd_ext_json=%7B%22enter_from%22%3A%22click_answer%22%2C%22ansid%22%3A%226484365603896295693%22%2C%22enterfrom_answerid%22%3A%226426983034901233921%22%2C%22parent_enterfrom%22%3A%22click_category%22%2C%22qid%22%3A%226418445196307988737%22%2C%22category_name%22%3A%22answer_hot%22%2C%22author_id%22%3A%222862075489%22%2C%22article_type%22%3A%22wenda%22%2C%22log_pb%22%3A%7B%22impr_id%22%3A%2220180108112136010008019154970796%22%7D%7D\u0026is_jump_comment=1",
		"create_time": 1509759017,
		"ans_url": "https://ic.snssdk.com/wenda/v1/wapanswer/content/?ansid=6484365603896295693",
		"user": {
			"uname": "独角兽工场",
			"avatar_url": "http://p3.pstatp.com/thumb/53ea000023a31759fb65",
			"user_id": "2862075489",
			"is_verify": 1,
			"create_time": 1383814469,
			"user_intro": "资深媒体人 科技问答专家",
			"is_following": 0,
			"user_auth_info": "{\"auth_type\": \"0\", \"auth_info\": \"资深媒体人 科技问答专家\"}",
			"schema": "sslocal://profile?api_param=%7B%22enter_from%22%3A%22question%22%2C%22origin_from%22%3A%22native_wenda_home%22%2C%22parent_enter_from%22%3A%22answer_hot%22%2C%22scope%22%3A%22toutiao_wenda%22%7D\u0026refer=wenda\u0026uid=2862075489",
			"total_digg": 18410,
			"total_answer": 694
		},
		"share_data": {
			"content": "近日，马云又语出惊人。他在杭州举行的全球峰会上发表主题演讲说到:未来房子如葱。过去8年内，中国的房子整体上处于大幅度上升的状态，8年后中\ufffd\ufffd",
			"image_url": "http://p3.pstatp.com/thumb/53ea000023a31759fb65",
			"share_url": "https://www.wukong.com/answer/6484365603896295693/?iid=20063010037\u0026app=news_article\u0026share_ansid=6426983034901233921",
			"title": "独角兽工场回答了马云又出惊人言论，8年后房子最不值钱，他的话可信吗？(934赞)- 悟空问答"
		},
		"content_abstract": {
			"text": "近日，马云又语出惊人。他在杭州举行的全球峰会上发表主题演讲说到:未来房子如葱。过去8年内，中国的房子整体上处于大幅度上升的状态，8年后中国最便宜的可能就是房子。大部分人一笑而过，还有一部分人说他站着说话不腰疼。马云早已经是金字塔顶端的人物了，他买套房子就和买根大葱没什么区别。但是对于刚需一族来说，买房无疑是“伤筋动骨了。”曾经看到过一个新闻，32岁的杨某因为抢劫银行，一审被判处10年有期徒刑。让人没有想到的是，这位北京的软件设计师抢钱的目的竟然是为了买房。杨某后来供述说:“我买房首付差17万，抢劫时要30万元是怕他们讨价还价。”杨某抢劫银行的事件让大家唏嘘不已。用理性的角度去看，他抢劫银行和买房之间并没有必然的因果关系。但是，房子却成功的压垮了杨某，导致他走上了犯罪的道路。著名企业家柳传志先生曾经劝导年轻人先不要着急买房，他说:“如果现在买房压力太大，不如调整好心态，先安心工作，等自己的薪酬高了再去追求属于自己的房产。”有一些人表示支持，觉得他说的很有道理，有一些人则嗤之以鼻。近年来，随着房价的突飞猛涨，年轻人也大呼伤不起。买房难，难于上青天这样的话也不绝于耳。无论是中国还是发达国家，年轻人买不起房的情况都是普遍存在的现象。有的年轻人买了房子，也是掏空父母多年的积蓄得来的。“两代人为了一套房子”敲打着多少年轻人的心。其中的各种心酸和无奈也只有当事人知道。房子让无数人成为“房奴”，每个月都要想着还房贷，有这个牵绊，也没有足够的魄力和勇气改变当前的工作现状，比如跳槽，创业等。即使这样，很多人也争相买房，因为安居才能乐业是很多人的想法。在国家一系列的调控政策出台后，房价并没有因此而回落很多。所以，马云说8年后房子如葱并不现实。",
			"thumb_image_list": [],
			"large_image_list": [],
			"video_list": []
		}
	}, {
		"ansid": "6502034851862937870",
		"forward_count": 0,
		"comment_count": 3,
		"digg_count": 12,
		"brow_count": 152961,
		"bury_count": 4,
		"is_digg": false,
		"is_show_bury": true,
		"is_buryed": false,
		"title": "",
		"schema": "sslocal://wenda_detail?ansid=6502034851862937870\u0026api_param=%7B%22answer_list%22%3A%5B6426983034901233921%2C6484952246101475597%2C6479715514183581965%2C6492890567976943886%2C6484365603896295693%2C6502034851862937870%2C6483417137170874638%2C6419169762600812801%2C6487481808857334030%2C6419100187444117761%5D%2C%22answer_type%22%3A%22nice_answer%22%2C%22enter_ansid%22%3A%226426983034901233921%22%2C%22enter_from%22%3A%22question%22%2C%22in_offset%22%3A5%2C%22next_offset%22%3A10%2C%22origin_from%22%3A%22native_wenda_home%22%2C%22parent_enter_from%22%3A%22answer_hot%22%2C%22scope%22%3A%22toutiao_wenda%22%7D\u0026gd_ext_json=%7B%22enter_from%22%3A%22click_answer%22%2C%22ansid%22%3A%226502034851862937870%22%2C%22enterfrom_answerid%22%3A%226426983034901233921%22%2C%22parent_enterfrom%22%3A%22click_category%22%2C%22qid%22%3A%226418445196307988737%22%2C%22category_name%22%3A%22answer_hot%22%2C%22author_id%22%3A%225965411544%22%2C%22article_type%22%3A%22wenda%22%2C%22log_pb%22%3A%7B%22impr_id%22%3A%2220180108112136010008019154970796%22%7D%7D",
		"comment_schema": "sslocal://wenda_detail?ansid=6502034851862937870\u0026api_param=%7B%22answer_list%22%3A%5B6426983034901233921%2C6484952246101475597%2C6479715514183581965%2C6492890567976943886%2C6484365603896295693%2C6502034851862937870%2C6483417137170874638%2C6419169762600812801%2C6487481808857334030%2C6419100187444117761%5D%2C%22answer_type%22%3A%22nice_answer%22%2C%22enter_ansid%22%3A%226426983034901233921%22%2C%22enter_from%22%3A%22question%22%2C%22in_offset%22%3A5%2C%22next_offset%22%3A10%2C%22origin_from%22%3A%22native_wenda_home%22%2C%22parent_enter_from%22%3A%22answer_hot%22%2C%22scope%22%3A%22toutiao_wenda%22%7D\u0026gd_ext_json=%7B%22enter_from%22%3A%22click_answer%22%2C%22ansid%22%3A%226502034851862937870%22%2C%22enterfrom_answerid%22%3A%226426983034901233921%22%2C%22parent_enterfrom%22%3A%22click_category%22%2C%22qid%22%3A%226418445196307988737%22%2C%22category_name%22%3A%22answer_hot%22%2C%22author_id%22%3A%225965411544%22%2C%22article_type%22%3A%22wenda%22%2C%22log_pb%22%3A%7B%22impr_id%22%3A%2220180108112136010008019154970796%22%7D%7D\u0026is_jump_comment=1",
		"create_time": 1513872960,
		"ans_url": "https://ic.snssdk.com/wenda/v1/wapanswer/content/?ansid=6502034851862937870",
		"user": {
			"uname": "政商内参",
			"avatar_url": "http://p3.pstatp.com/thumb/4d0007d2e5baf73806",
			"user_id": "5965411544",
			"is_verify": 1,
			"create_time": 1454206630,
			"user_intro": "政商内参官方帐号 财经问答专家",
			"is_following": 0,
			"user_auth_info": "{\"auth_type\": \"0\", \"auth_info\": \"政商内参官方帐号 财经问答专家\"}",
			"schema": "sslocal://profile?api_param=%7B%22enter_from%22%3A%22question%22%2C%22origin_from%22%3A%22native_wenda_home%22%2C%22parent_enter_from%22%3A%22answer_hot%22%2C%22scope%22%3A%22toutiao_wenda%22%7D\u0026refer=wenda\u0026uid=5965411544",
			"total_digg": 2679,
			"total_answer": 107
		},
		"share_data": {
			"content": "要相信首富的话。不要只看当下，要看大趋势。中国的房价确实是十几年一直在涨，但并不是说会一直要涨下去。现在最大的变化是，政府在告别GDP思\ufffd\ufffd",
			"image_url": "http://p3.pstatp.com/thumb/4d0007d2e5baf73806",
			"share_url": "https://www.wukong.com/answer/6502034851862937870/?iid=20063010037\u0026app=news_article\u0026share_ansid=6426983034901233921",
			"title": "政商内参回答了马云又出惊人言论，8年后房子最不值钱，他的话可信吗？(12赞)- 悟空问答"
		},
		"content_abstract": {
			"text": "要相信首富的话。不要只看当下，要看大趋势。中国的房价确实是十几年一直在涨，但并不是说会一直要涨下去。现在最大的变化是，政府在告别GDP思维。如果今年的限购是做戏，那么大会开完之后就该收手了，但你可以看到，新的措施一直在出台。中国地产市场最大点变数是模式的变化，即从香港日本模式向德国新加坡模式转变，房子是用来住的，不是用来炒的。我们相信，本届政府已经意识到高房价的危害，并且正在努力与高房价切割。当然，如果是刚需，其实都无所谓了。但是如果把房地产作为一种投资，那一定要小心！数据显示，2010年的数据是城镇居民人均可支配收入是19109.4元，农村居民人均可支配收入是5919.0元。当年的住宅平均4725元/平，城镇居民一年的收入仅相当4平米的房子，农村居民则仅相当于1.25平米的房子。现在为什么强调要租房，就是因为已经欠太多，很难追得上。",
			"thumb_image_list": [],
			"large_image_list": [],
			"video_list": []
		}
	}, {
		"ansid": "6483417137170874638",
		"forward_count": 0,
		"comment_count": 104,
		"digg_count": 1407,
		"brow_count": 1099256,
		"bury_count": 178,
		"is_digg": false,
		"is_show_bury": true,
		"is_buryed": false,
		"title": "",
		"schema": "sslocal://wenda_detail?ansid=6483417137170874638\u0026api_param=%7B%22answer_list%22%3A%5B6426983034901233921%2C6484952246101475597%2C6479715514183581965%2C6492890567976943886%2C6484365603896295693%2C6502034851862937870%2C6483417137170874638%2C6419169762600812801%2C6487481808857334030%2C6419100187444117761%5D%2C%22answer_type%22%3A%22nice_answer%22%2C%22enter_ansid%22%3A%226426983034901233921%22%2C%22enter_from%22%3A%22question%22%2C%22in_offset%22%3A6%2C%22next_offset%22%3A10%2C%22origin_from%22%3A%22native_wenda_home%22%2C%22parent_enter_from%22%3A%22answer_hot%22%2C%22scope%22%3A%22toutiao_wenda%22%7D\u0026gd_ext_json=%7B%22enter_from%22%3A%22click_answer%22%2C%22ansid%22%3A%226483417137170874638%22%2C%22enterfrom_answerid%22%3A%226426983034901233921%22%2C%22parent_enterfrom%22%3A%22click_category%22%2C%22qid%22%3A%226418445196307988737%22%2C%22category_name%22%3A%22answer_hot%22%2C%22author_id%22%3A%2267676457909%22%2C%22article_type%22%3A%22wenda%22%2C%22log_pb%22%3A%7B%22impr_id%22%3A%2220180108112136010008019154970796%22%7D%7D",
		"comment_schema": "sslocal://wenda_detail?ansid=6483417137170874638\u0026api_param=%7B%22answer_list%22%3A%5B6426983034901233921%2C6484952246101475597%2C6479715514183581965%2C6492890567976943886%2C6484365603896295693%2C6502034851862937870%2C6483417137170874638%2C6419169762600812801%2C6487481808857334030%2C6419100187444117761%5D%2C%22answer_type%22%3A%22nice_answer%22%2C%22enter_ansid%22%3A%226426983034901233921%22%2C%22enter_from%22%3A%22question%22%2C%22in_offset%22%3A6%2C%22next_offset%22%3A10%2C%22origin_from%22%3A%22native_wenda_home%22%2C%22parent_enter_from%22%3A%22answer_hot%22%2C%22scope%22%3A%22toutiao_wenda%22%7D\u0026gd_ext_json=%7B%22enter_from%22%3A%22click_answer%22%2C%22ansid%22%3A%226483417137170874638%22%2C%22enterfrom_answerid%22%3A%226426983034901233921%22%2C%22parent_enterfrom%22%3A%22click_category%22%2C%22qid%22%3A%226418445196307988737%22%2C%22category_name%22%3A%22answer_hot%22%2C%22author_id%22%3A%2267676457909%22%2C%22article_type%22%3A%22wenda%22%2C%22log_pb%22%3A%7B%22impr_id%22%3A%2220180108112136010008019154970796%22%7D%7D\u0026is_jump_comment=1",
		"create_time": 1509538185,
		"ans_url": "https://ic.snssdk.com/wenda/v1/wapanswer/content/?ansid=6483417137170874638",
		"user": {
			"uname": "陈思进",
			"avatar_url": "http://p3.pstatp.com/thumb/38300006a2ee68bee7a7",
			"user_id": "67676457909",
			"is_verify": 1,
			"create_time": 1504059020,
			"user_intro": "财经专栏作家 加拿大皇家银行风险管理资深顾问",
			"is_following": 0,
			"user_auth_info": "{\"auth_type\": \"1\", \"auth_info\": \"财经专栏作家 加拿大皇家银行风险管理资深顾问\"}",
			"schema": "sslocal://profile?api_param=%7B%22enter_from%22%3A%22question%22%2C%22origin_from%22%3A%22native_wenda_home%22%2C%22parent_enter_from%22%3A%22answer_hot%22%2C%22scope%22%3A%22toutiao_wenda%22%7D\u0026refer=wenda\u0026uid=67676457909",
			"total_digg": 4262,
			"total_answer": 64
		},
		"share_data": {
			"content": "这轮调控已过去一年多了，全国上百城市发布收紧政策，调控次数累计超过200次！在多个调控政策压制下，部分城市房价已经出现了跌幅相对较高的局\ufffd\ufffd",
			"image_url": "http://p3.pstatp.com/thumb/38300006a2ee68bee7a7",
			"share_url": "https://www.wukong.com/answer/6483417137170874638/?iid=20063010037\u0026app=news_article\u0026share_ansid=6426983034901233921",
			"title": "陈思进回答了马云又出惊人言论，8年后房子最不值钱，他的话可信吗？(1407赞)- 悟空问答"
		},
		"content_abstract": {
			"text": "这轮调控已过去一年多了，全国上百城市发布收紧政策，调控次数累计超过200次！在多个调控政策压制下，部分城市房价已经出现了跌幅相对较高的局面。而且，总体来看，四季度新建商品房销售预期并不被市场看好。这次调控的目标非常明确：房子是用来住的、不是用来炒的，加快建立多主体供给、多渠道保障、租购并举的住房制度，让全体人民住有所居。马云的 “8年后中国最便宜的东西可能就是房子” 这句话的背后肯定还有其他的思维逻辑，而单仅从上述这点上来看，马云这句话并非空穴来风，是有背景、有基础的，有极大的可信度。不过，过去近20年来，中国房价一路上涨为主流，在几乎所有国人的心中，房价，特别是中国房价，只涨不跌已然成为思维定势。由于惯性使然，我认为，只有当“中国房价永远只涨不跌”的预期在绝大多数国人心中破灭时，中国房价的真正拐点才可能真正来临。举另外两大国楼市走过之路为例吧：三、四十年前的日本楼市从起泡沫到泡沫巨大到破灭，全日本跌去70%，东京跌去90%，直到现在日本房价还不到当年最高时的一半；美国过去的20年，2001年出现了点COM泡沫，破灭后美联储大幅货币宽松，鼓励全民举债买房，结果次贷危机引爆金融危机，房价跌去30%，迄今其实还没有完全走出来，更大金融危机可能不久会再次来临。中国的情况和上述两例相比，中国在2011年人口红利出现拐点，随着人口老龄化时代的到来，推动房价上涨最主要的刚需力量已然衰退，再加上各种措施遏制炒房，一线楼市进入冰封期，三四五线城市去库存也已经基本完成，除了少数几个二线城市房价还在上涨以外，基本上已经到头了。总之，可以这样说，此一时彼一时，这次调控和以往真的不同了，已然时过境迁了。待到“中国房价永远只涨不跌”的预期在绝大多数国人心中破灭时，马云的话就可成真了，拭目以待吧。",
			"thumb_image_list": [{
				"height": 374,
				"width": 590,
				"uri": "3ea200087d6bd460588c",
				"url": "http://p3.pstatp.com/list/r590/3ea200087d6bd460588c",
				"type": 1,
				"url_list": [{
					"url": "http://p3.pstatp.com/list/r590/3ea200087d6bd460588c"
				}, {
					"url": "http://p3.pstatp.com/list/r590/3ea200087d6bd460588c"
				}, {
					"url": "http://p3.pstatp.com/list/r590/3ea200087d6bd460588c"
				}]
			}],
			"large_image_list": [{
				"height": 374,
				"width": 590,
				"uri": "3ea200087d6bd460588c",
				"url": "http://p3.pstatp.com/large/3ea200087d6bd460588c",
				"type": 1,
				"url_list": [{
					"url": "http://p3.pstatp.com/large/3ea200087d6bd460588c"
				}, {
					"url": "http://p3.pstatp.com/large/3ea200087d6bd460588c"
				}, {
					"url": "http://p3.pstatp.com/large/3ea200087d6bd460588c"
				}]
			}],
			"video_list": []
		}
	}, {
		"ansid": "6419169762600812801",
		"forward_count": 0,
		"comment_count": 415,
		"digg_count": 1407,
		"brow_count": 2425286,
		"bury_count": 233,
		"is_digg": false,
		"is_show_bury": true,
		"is_buryed": false,
		"title": "",
		"schema": "sslocal://wenda_detail?ansid=6419169762600812801\u0026api_param=%7B%22answer_list%22%3A%5B6426983034901233921%2C6484952246101475597%2C6479715514183581965%2C6492890567976943886%2C6484365603896295693%2C6502034851862937870%2C6483417137170874638%2C6419169762600812801%2C6487481808857334030%2C6419100187444117761%5D%2C%22answer_type%22%3A%22nice_answer%22%2C%22enter_ansid%22%3A%226426983034901233921%22%2C%22enter_from%22%3A%22question%22%2C%22in_offset%22%3A7%2C%22next_offset%22%3A10%2C%22origin_from%22%3A%22native_wenda_home%22%2C%22parent_enter_from%22%3A%22answer_hot%22%2C%22scope%22%3A%22toutiao_wenda%22%7D\u0026gd_ext_json=%7B%22enter_from%22%3A%22click_answer%22%2C%22ansid%22%3A%226419169762600812801%22%2C%22enterfrom_answerid%22%3A%226426983034901233921%22%2C%22parent_enterfrom%22%3A%22click_category%22%2C%22qid%22%3A%226418445196307988737%22%2C%22category_name%22%3A%22answer_hot%22%2C%22author_id%22%3A%2252543297745%22%2C%22article_type%22%3A%22wenda%22%2C%22log_pb%22%3A%7B%22impr_id%22%3A%2220180108112136010008019154970796%22%7D%7D",
		"comment_schema": "sslocal://wenda_detail?ansid=6419169762600812801\u0026api_param=%7B%22answer_list%22%3A%5B6426983034901233921%2C6484952246101475597%2C6479715514183581965%2C6492890567976943886%2C6484365603896295693%2C6502034851862937870%2C6483417137170874638%2C6419169762600812801%2C6487481808857334030%2C6419100187444117761%5D%2C%22answer_type%22%3A%22nice_answer%22%2C%22enter_ansid%22%3A%226426983034901233921%22%2C%22enter_from%22%3A%22question%22%2C%22in_offset%22%3A7%2C%22next_offset%22%3A10%2C%22origin_from%22%3A%22native_wenda_home%22%2C%22parent_enter_from%22%3A%22answer_hot%22%2C%22scope%22%3A%22toutiao_wenda%22%7D\u0026gd_ext_json=%7B%22enter_from%22%3A%22click_answer%22%2C%22ansid%22%3A%226419169762600812801%22%2C%22enterfrom_answerid%22%3A%226426983034901233921%22%2C%22parent_enterfrom%22%3A%22click_category%22%2C%22qid%22%3A%226418445196307988737%22%2C%22category_name%22%3A%22answer_hot%22%2C%22author_id%22%3A%2252543297745%22%2C%22article_type%22%3A%22wenda%22%2C%22log_pb%22%3A%7B%22impr_id%22%3A%2220180108112136010008019154970796%22%7D%7D\u0026is_jump_comment=1",
		"create_time": 1494579428,
		"ans_url": "https://ic.snssdk.com/wenda/v1/wapanswer/content/?ansid=6419169762600812801",
		"user": {
			"uname": "云掌财经",
			"avatar_url": "http://p3.pstatp.com/thumb/4e7e0002d7ad1e6e7fcc",
			"user_id": "52543297745",
			"is_verify": 1,
			"create_time": 1480469447,
			"user_intro": "云掌财经官方帐号",
			"is_following": 0,
			"user_auth_info": "{\"auth_type\": \"0\", \"auth_info\": \"云掌财经官方帐号\"}",
			"schema": "sslocal://profile?api_param=%7B%22enter_from%22%3A%22question%22%2C%22origin_from%22%3A%22native_wenda_home%22%2C%22parent_enter_from%22%3A%22answer_hot%22%2C%22scope%22%3A%22toutiao_wenda%22%7D\u0026refer=wenda\u0026uid=52543297745",
			"total_digg": 106916,
			"total_answer": 336
		},
		"share_data": {
			"content": "近日，马云在杭州举行的全球峰会上发表主题演讲说到：未来房子如葱。他说，过去8年内，中国的房子整体上处于大幅上升的状态。8年后，中国最便宜",
			"image_url": "http://p3.pstatp.com/thumb/4e7e0002d7ad1e6e7fcc",
			"share_url": "https://www.wukong.com/answer/6419169762600812801/?iid=20063010037\u0026app=news_article\u0026share_ansid=6426983034901233921",
			"title": "云掌财经回答了马云又出惊人言论，8年后房子最不值钱，他的话可信吗？(1407赞)- 悟空问答"
		},
		"content_abstract": {
			"text": "近日，马云在杭州举行的全球峰会上发表主题演讲说到：未来房子如葱。他说，过去8年内，中国的房子整体上处于大幅上升的状态。8年后，中国最便宜的东西可能就是房子。八年后，房子会像葱一样便宜？平时经常埋怨菜价贵的我等屌丝吓了一跳：8年后，葱得有多贵啊！看着房价嗖嗖上升，马云这话是最补脑的鸡汤。平时经常被“房价还会涨吗”的问题问得云里雾里。如今马云算是说明白了，但吃瓜群众对这一论断似乎并不放心，网上“你信吗”之类的疑问满天飞。马云作为商界大咖，缔造过商业神话，手中又掌握着大数据库，过去也曾做过很多经典的预言，他的话分量十足。然而，对于仍然如日中天的中国楼市，马云“8年后中国最便宜的东西可能就是房子”之说对大多数人仍然显得过于惊悚，假如判断成真，那么部分土豪可能变成乞丐，“居者有其屋”的千年梦想，似乎也在8年后变成现实。真的吗，真的吗，真的吗？重要的事情要问三遍。这几天梦得心里不知道问过多少遍了，有些话在心理憋得慌。马云为何出此惊人之论？是否单纯为了气王健林？令人捉急的是，他抛出了结论，却没有对此进行充分论证、解释，让人心里没底。尼玛，就连霍金说100年后人类必须离开地球也有个理由，你这么含蓄干啥捏？云掌君看来，说将来房价暴跌，并非毫无道理。毕竟当前政府对地产调控动了真刀子，行政、金融、经济结构等几大手法形成的交叉火力，足可以把曾经不可一世的房价压得抬不起头来。但真的仅仅过8年，房子就成为最不值钱的商品？对此梦得又不敢苟同。房地产作为支柱性产业，与经济、社会、生活渊源之深，无需赘言。仅经济上讲，房地产与建筑业、建材业、钢铁、物流、五金、装修、家居等五六十个行业存在着上下游产业关系，2016年中国房地产业增加值占GDP的比重为6.5%，如果加上建筑业，这个比例还要再高一些。尽管这几年政府正在大力推进供给侧改革，“调结构”举措接二连三，但仍不敢想象房子成为最便宜商品的那天，中国经济会是什么样子。泡沫、崩盘这些词，这些年不少听，但似乎总是离我们很远。假设楼市崩盘，房子就会更便宜吗？与经济关系如此密切的房地产行业一旦没了生意，大批建筑工人哪里找饭碗？水泥、玻璃、钢筋、塑钢窗、涂料、地砖、地板、卫浴五金等几十个行业的人们又哪里觅食去？届时消费萎缩，经济不景气，人们手无余钱，买米买盐尚有困难，岂敢奢望买房。买不起，何来“最便宜”说？1991年开始，日本房价开始暴跌。当年降了70%，结果就是穷人失业连租房、吃饭都成问题。香港历史上有三轮房价崩盘，曾暴跌七成，但港人反而更买不起房了。目前香港有60%的香港人买不起商品房。45%的市民居住在公屋里， 15%的买了自主性房屋。最后云掌君想说的是，房子之所以与一般商品不同，在于与社会生活瓜葛太多。一套房子，背后是可能是宝贵的学位、户籍等资源，也有可能是不可复制的自然景观、商业配套资源，因此仅从“经济规律”分析房价，显得过于粗暴。不同的城市，房子价值不一样，同一座城市，不同地段的房子价值不一样。8年后，不排除土地、钢筋水泥、人工价值大幅度贬值，但房子附带的学位、户籍、高端配套资源价值，可能出现难以预估的暴涨。这些资源价值，又不得不通过“房价”兑现。所以“8年后中国最便宜的东西可能就是房子”之说，不管你信不信，反正我不敢信。",
			"thumb_image_list": [{
				"height": 192,
				"width": 192,
				"uri": "1bf7001efcc8b45cf603",
				"url": "http://p3.pstatp.com/list/s192/1bf7001efcc8b45cf603",
				"type": 1,
				"url_list": [{
					"url": "http://p3.pstatp.com/list/s192/1bf7001efcc8b45cf603"
				}, {
					"url": "http://p3.pstatp.com/list/s192/1bf7001efcc8b45cf603"
				}, {
					"url": "http://p3.pstatp.com/list/s192/1bf7001efcc8b45cf603"
				}]
			}, {
				"height": 192,
				"width": 192,
				"uri": "1dce001f2df0143c226a",
				"url": "http://p9.pstatp.com/list/s192/1dce001f2df0143c226a",
				"type": 1,
				"url_list": [{
					"url": "http://p9.pstatp.com/list/s192/1dce001f2df0143c226a"
				}, {
					"url": "http://p9.pstatp.com/list/s192/1dce001f2df0143c226a"
				}, {
					"url": "http://p9.pstatp.com/list/s192/1dce001f2df0143c226a"
				}]
			}, {
				"height": 192,
				"width": 192,
				"uri": "1dcd0002860fb8d80e1e",
				"url": "http://p1.pstatp.com/list/s192/1dcd0002860fb8d80e1e",
				"type": 1,
				"url_list": [{
					"url": "http://p1.pstatp.com/list/s192/1dcd0002860fb8d80e1e"
				}, {
					"url": "http://p1.pstatp.com/list/s192/1dcd0002860fb8d80e1e"
				}, {
					"url": "http://p1.pstatp.com/list/s192/1dcd0002860fb8d80e1e"
				}]
			}, {
				"height": 192,
				"width": 192,
				"uri": "1dce001f2e46013405d2",
				"url": "http://p1.pstatp.com/list/s192/1dce001f2e46013405d2",
				"type": 1,
				"url_list": [{
					"url": "http://p1.pstatp.com/list/s192/1dce001f2e46013405d2"
				}, {
					"url": "http://p1.pstatp.com/list/s192/1dce001f2e46013405d2"
				}, {
					"url": "http://p1.pstatp.com/list/s192/1dce001f2e46013405d2"
				}]
			}],
			"large_image_list": [{
				"height": 382,
				"width": 608,
				"uri": "1bf7001efcc8b45cf603",
				"url": "http://p3.pstatp.com/large/1bf7001efcc8b45cf603",
				"type": 1,
				"url_list": [{
					"url": "http://p3.pstatp.com/large/1bf7001efcc8b45cf603"
				}, {
					"url": "http://p3.pstatp.com/large/1bf7001efcc8b45cf603"
				}, {
					"url": "http://p3.pstatp.com/large/1bf7001efcc8b45cf603"
				}]
			}, {
				"height": 262,
				"width": 411,
				"uri": "1dce001f2df0143c226a",
				"url": "http://p9.pstatp.com/large/1dce001f2df0143c226a",
				"type": 1,
				"url_list": [{
					"url": "http://p9.pstatp.com/large/1dce001f2df0143c226a"
				}, {
					"url": "http://p9.pstatp.com/large/1dce001f2df0143c226a"
				}, {
					"url": "http://p9.pstatp.com/large/1dce001f2df0143c226a"
				}]
			}, {
				"height": 241,
				"width": 374,
				"uri": "1dcd0002860fb8d80e1e",
				"url": "http://p1.pstatp.com/large/1dcd0002860fb8d80e1e",
				"type": 1,
				"url_list": [{
					"url": "http://p1.pstatp.com/large/1dcd0002860fb8d80e1e"
				}, {
					"url": "http://p1.pstatp.com/large/1dcd0002860fb8d80e1e"
				}, {
					"url": "http://p1.pstatp.com/large/1dcd0002860fb8d80e1e"
				}]
			}, {
				"height": 350,
				"width": 605,
				"uri": "1dce001f2e46013405d2",
				"url": "http://p1.pstatp.com/large/1dce001f2e46013405d2",
				"type": 1,
				"url_list": [{
					"url": "http://p1.pstatp.com/large/1dce001f2e46013405d2"
				}, {
					"url": "http://p1.pstatp.com/large/1dce001f2e46013405d2"
				}, {
					"url": "http://p1.pstatp.com/large/1dce001f2e46013405d2"
				}]
			}],
			"video_list": []
		}
	}, {
		"ansid": "6487481808857334030",
		"forward_count": 0,
		"comment_count": 363,
		"digg_count": 1077,
		"brow_count": 1328110,
		"bury_count": 168,
		"is_digg": false,
		"is_show_bury": true,
		"is_buryed": false,
		"title": "",
		"schema": "sslocal://wenda_detail?ansid=6487481808857334030\u0026api_param=%7B%22answer_list%22%3A%5B6426983034901233921%2C6484952246101475597%2C6479715514183581965%2C6492890567976943886%2C6484365603896295693%2C6502034851862937870%2C6483417137170874638%2C6419169762600812801%2C6487481808857334030%2C6419100187444117761%5D%2C%22answer_type%22%3A%22nice_answer%22%2C%22enter_ansid%22%3A%226426983034901233921%22%2C%22enter_from%22%3A%22question%22%2C%22in_offset%22%3A8%2C%22next_offset%22%3A10%2C%22origin_from%22%3A%22native_wenda_home%22%2C%22parent_enter_from%22%3A%22answer_hot%22%2C%22scope%22%3A%22toutiao_wenda%22%7D\u0026gd_ext_json=%7B%22enter_from%22%3A%22click_answer%22%2C%22ansid%22%3A%226487481808857334030%22%2C%22enterfrom_answerid%22%3A%226426983034901233921%22%2C%22parent_enterfrom%22%3A%22click_category%22%2C%22qid%22%3A%226418445196307988737%22%2C%22category_name%22%3A%22answer_hot%22%2C%22author_id%22%3A%2272303476800%22%2C%22article_type%22%3A%22wenda%22%2C%22log_pb%22%3A%7B%22impr_id%22%3A%2220180108112136010008019154970796%22%7D%7D",
		"comment_schema": "sslocal://wenda_detail?ansid=6487481808857334030\u0026api_param=%7B%22answer_list%22%3A%5B6426983034901233921%2C6484952246101475597%2C6479715514183581965%2C6492890567976943886%2C6484365603896295693%2C6502034851862937870%2C6483417137170874638%2C6419169762600812801%2C6487481808857334030%2C6419100187444117761%5D%2C%22answer_type%22%3A%22nice_answer%22%2C%22enter_ansid%22%3A%226426983034901233921%22%2C%22enter_from%22%3A%22question%22%2C%22in_offset%22%3A8%2C%22next_offset%22%3A10%2C%22origin_from%22%3A%22native_wenda_home%22%2C%22parent_enter_from%22%3A%22answer_hot%22%2C%22scope%22%3A%22toutiao_wenda%22%7D\u0026gd_ext_json=%7B%22enter_from%22%3A%22click_answer%22%2C%22ansid%22%3A%226487481808857334030%22%2C%22enterfrom_answerid%22%3A%226426983034901233921%22%2C%22parent_enterfrom%22%3A%22click_category%22%2C%22qid%22%3A%226418445196307988737%22%2C%22category_name%22%3A%22answer_hot%22%2C%22author_id%22%3A%2272303476800%22%2C%22article_type%22%3A%22wenda%22%2C%22log_pb%22%3A%7B%22impr_id%22%3A%2220180108112136010008019154970796%22%7D%7D\u0026is_jump_comment=1",
		"create_time": 1510484565,
		"ans_url": "https://ic.snssdk.com/wenda/v1/wapanswer/content/?ansid=6487481808857334030",
		"user": {
			"uname": "秋叶小叔",
			"avatar_url": "http://p3.pstatp.com/thumb/4009000301c31d58f318",
			"user_id": "72303476800",
			"is_verify": 1,
			"create_time": 1508073503,
			"user_intro": "财经问答达人",
			"is_following": 0,
			"user_auth_info": "{\"auth_type\": \"3\", \"auth_info\": \"财经问答达人\"}",
			"schema": "sslocal://profile?api_param=%7B%22enter_from%22%3A%22question%22%2C%22origin_from%22%3A%22native_wenda_home%22%2C%22parent_enter_from%22%3A%22answer_hot%22%2C%22scope%22%3A%22toutiao_wenda%22%7D\u0026refer=wenda\u0026uid=72303476800",
			"total_digg": 33477,
			"total_answer": 176
		},
		"share_data": {
			"content": "马云作为阿里巴巴的创始人，而如今阿里巴巴的成绩，所以其话语的含金量比较高。但是马云是企业家不是预言家，纵然手里掌握着大数据，但是八年\ufffd\ufffd",
			"image_url": "http://p3.pstatp.com/thumb/4009000301c31d58f318",
			"share_url": "https://www.wukong.com/answer/6487481808857334030/?iid=20063010037\u0026app=news_article\u0026share_ansid=6426983034901233921",
			"title": "秋叶小叔回答了马云又出惊人言论，8年后房子最不值钱，他的话可信吗？(1077赞)- 悟空问答"
		},
		"content_abstract": {
			"text": "马云作为阿里巴巴的创始人，而如今阿里巴巴的成绩，所以其话语的含金量比较高。但是马云是企业家不是预言家，纵然手里掌握着大数据，但是八年后、十年后谁能知道呢？马云的原话“过去8年内中国的房价整体处于大幅上涨的状态，8年后中国最便宜的东西有可能就是房子”马云曾经也说过“纯电商时代已经过去，未来十年、二十年没有电子商务这一说，只有新零售这一说，也就是说线上线下和物流必须结合在一起，才能诞生真正的新零售。，说这两点大家应该都看到了，马云是在为自己企业说话，“新零售”的背后，就是马云进军实体经济、进军线下、进军物流。而“8年后中国最便宜的东西有可能就是房子”的背后就是马云在为自己进军地产做准备的话语。因为支付宝推出一个租房免押金的业务。北上广的房价让很多人都是在租房，但是租房中间的中介费、押金等费用也让人要换过一阵。马云就开始联合一些成熟的中介，开始进入这一行业。1、解决了房源真实性。这个就不说了，很多发布低价假房源的中介。2、根据蚂蚁信用分可免押金。就如同现在小黄车OFO免押金同样的道理。3、中介费。去房产中介无论租房还是买房都是收取一定中介费，那么马云是让租房者与公寓管理方直接沟通对接，省去中介费。8年后，最便宜的是房子因为大家都在租房，没有押金没有中介费，实名验证，当然“房子最便宜”。每个月给几百到几千不等，住着舒服的房子，不用还房贷。在有限的土地上，建房售房。中国的人口都知道，现在又在开放二胎政策，平均年龄不断增高，今后竞争怎样大家可以想一下。而且就算现在未来房产市场看的云里雾里，但是也不能用“葱”来比喻。几块钱一大把葱，8年后给你几块钱这一栋楼房子都是我的，这可能吗？所以这一切的背后都是在宣传自己接下来的租房产业，马云要构建的是一个从写字楼到物流地产、商业地产，再到适合网络人群居住的新型社区商业帝国。在我看来未来房子不一定便宜如葱，但是一些现在看着不要钱的往后会越来越贵，比如：新鲜的空气、干净的水源等。",
			"thumb_image_list": [{
				"height": 192,
				"width": 192,
				"uri": "474f00004c4e3be3a899",
				"url": "http://p3.pstatp.com/list/s192/474f00004c4e3be3a899",
				"type": 1,
				"url_list": [{
					"url": "http://p3.pstatp.com/list/s192/474f00004c4e3be3a899"
				}, {
					"url": "http://p3.pstatp.com/list/s192/474f00004c4e3be3a899"
				}, {
					"url": "http://p3.pstatp.com/list/s192/474f00004c4e3be3a899"
				}]
			}, {
				"height": 192,
				"width": 192,
				"uri": "474f00004c5bac6ff87c",
				"url": "http://p1.pstatp.com/list/s192/474f00004c5bac6ff87c",
				"type": 1,
				"url_list": [{
					"url": "http://p1.pstatp.com/list/s192/474f00004c5bac6ff87c"
				}, {
					"url": "http://p1.pstatp.com/list/s192/474f00004c5bac6ff87c"
				}, {
					"url": "http://p1.pstatp.com/list/s192/474f00004c5bac6ff87c"
				}]
			}, {
				"height": 192,
				"width": 192,
				"uri": "474f00004c6781fb5172",
				"url": "http://p1.pstatp.com/list/s192/474f00004c6781fb5172",
				"type": 1,
				"url_list": [{
					"url": "http://p1.pstatp.com/list/s192/474f00004c6781fb5172"
				}, {
					"url": "http://p1.pstatp.com/list/s192/474f00004c6781fb5172"
				}, {
					"url": "http://p1.pstatp.com/list/s192/474f00004c6781fb5172"
				}]
			}],
			"large_image_list": [{
				"height": 422,
				"width": 631,
				"uri": "474f00004c4e3be3a899",
				"url": "http://p3.pstatp.com/large/474f00004c4e3be3a899",
				"type": 1,
				"url_list": [{
					"url": "http://p3.pstatp.com/large/474f00004c4e3be3a899"
				}, {
					"url": "http://p3.pstatp.com/large/474f00004c4e3be3a899"
				}, {
					"url": "http://p3.pstatp.com/large/474f00004c4e3be3a899"
				}]
			}, {
				"height": 410,
				"width": 629,
				"uri": "474f00004c5bac6ff87c",
				"url": "http://p1.pstatp.com/large/474f00004c5bac6ff87c",
				"type": 1,
				"url_list": [{
					"url": "http://p1.pstatp.com/large/474f00004c5bac6ff87c"
				}, {
					"url": "http://p1.pstatp.com/large/474f00004c5bac6ff87c"
				}, {
					"url": "http://p1.pstatp.com/large/474f00004c5bac6ff87c"
				}]
			}, {
				"height": 416,
				"width": 634,
				"uri": "474f00004c6781fb5172",
				"url": "http://p1.pstatp.com/large/474f00004c6781fb5172",
				"type": 1,
				"url_list": [{
					"url": "http://p1.pstatp.com/large/474f00004c6781fb5172"
				}, {
					"url": "http://p1.pstatp.com/large/474f00004c6781fb5172"
				}, {
					"url": "http://p1.pstatp.com/large/474f00004c6781fb5172"
				}]
			}],
			"video_list": []
		}
	}, {
		"ansid": "6419100187444117761",
		"forward_count": 0,
		"comment_count": 2898,
		"digg_count": 6843,
		"brow_count": 4700976,
		"bury_count": 718,
		"is_digg": false,
		"is_show_bury": true,
		"is_buryed": false,
		"title": "",
		"schema": "sslocal://wenda_detail?ansid=6419100187444117761\u0026api_param=%7B%22answer_list%22%3A%5B6426983034901233921%2C6484952246101475597%2C6479715514183581965%2C6492890567976943886%2C6484365603896295693%2C6502034851862937870%2C6483417137170874638%2C6419169762600812801%2C6487481808857334030%2C6419100187444117761%5D%2C%22answer_type%22%3A%22nice_answer%22%2C%22enter_ansid%22%3A%226426983034901233921%22%2C%22enter_from%22%3A%22question%22%2C%22in_offset%22%3A9%2C%22next_offset%22%3A10%2C%22origin_from%22%3A%22native_wenda_home%22%2C%22parent_enter_from%22%3A%22answer_hot%22%2C%22scope%22%3A%22toutiao_wenda%22%7D\u0026gd_ext_json=%7B%22enter_from%22%3A%22click_answer%22%2C%22ansid%22%3A%226419100187444117761%22%2C%22enterfrom_answerid%22%3A%226426983034901233921%22%2C%22parent_enterfrom%22%3A%22click_category%22%2C%22qid%22%3A%226418445196307988737%22%2C%22category_name%22%3A%22answer_hot%22%2C%22author_id%22%3A%226505704106%22%2C%22article_type%22%3A%22wenda%22%2C%22log_pb%22%3A%7B%22impr_id%22%3A%2220180108112136010008019154970796%22%7D%7D",
		"comment_schema": "sslocal://wenda_detail?ansid=6419100187444117761\u0026api_param=%7B%22answer_list%22%3A%5B6426983034901233921%2C6484952246101475597%2C6479715514183581965%2C6492890567976943886%2C6484365603896295693%2C6502034851862937870%2C6483417137170874638%2C6419169762600812801%2C6487481808857334030%2C6419100187444117761%5D%2C%22answer_type%22%3A%22nice_answer%22%2C%22enter_ansid%22%3A%226426983034901233921%22%2C%22enter_from%22%3A%22question%22%2C%22in_offset%22%3A9%2C%22next_offset%22%3A10%2C%22origin_from%22%3A%22native_wenda_home%22%2C%22parent_enter_from%22%3A%22answer_hot%22%2C%22scope%22%3A%22toutiao_wenda%22%7D\u0026gd_ext_json=%7B%22enter_from%22%3A%22click_answer%22%2C%22ansid%22%3A%226419100187444117761%22%2C%22enterfrom_answerid%22%3A%226426983034901233921%22%2C%22parent_enterfrom%22%3A%22click_category%22%2C%22qid%22%3A%226418445196307988737%22%2C%22category_name%22%3A%22answer_hot%22%2C%22author_id%22%3A%226505704106%22%2C%22article_type%22%3A%22wenda%22%2C%22log_pb%22%3A%7B%22impr_id%22%3A%2220180108112136010008019154970796%22%7D%7D\u0026is_jump_comment=1",
		"create_time": 1494563228,
		"ans_url": "https://ic.snssdk.com/wenda/v1/wapanswer/content/?ansid=6419100187444117761",
		"user": {
			"uname": "淘房邦",
			"avatar_url": "http://p1.pstatp.com/thumb/17800004fd3507750f69",
			"user_id": "6505704106",
			"is_verify": 0,
			"create_time": 1462978924,
			"user_intro": "",
			"is_following": 0,
			"user_auth_info": "",
			"schema": "sslocal://profile?api_param=%7B%22enter_from%22%3A%22question%22%2C%22origin_from%22%3A%22native_wenda_home%22%2C%22parent_enter_from%22%3A%22answer_hot%22%2C%22scope%22%3A%22toutiao_wenda%22%7D\u0026refer=wenda\u0026uid=6505704106",
			"total_digg": 7294,
			"total_answer": 22
		},
		"share_data": {
			"content": "近日，在杭州峰会上，马云再度公开表示：未来房子会像葱一样便宜！马云说，过去8年内，中国的房价整体上处于大幅上涨的状态。8年后，中国最便宜",
			"image_url": "http://p3.pstatp.com/list/300x196/1dcd0001f10b57b46d5e.webp",
			"share_url": "https://www.wukong.com/answer/6419100187444117761/?iid=20063010037\u0026app=news_article\u0026share_ansid=6426983034901233921",
			"title": "马云又出惊人言论，8年后房子最不值钱，他的话可信吗？(淘房邦的回答)- 悟空问答"
		},
		"content_abstract": {
			"text": "近日，在杭州峰会上，马云再度公开表示：未来房子会像葱一样便宜！马云说，过去8年内，中国的房价整体上处于大幅上涨的状态。8年后，中国最便宜的东西可能就是房子了。事实上，这已经不是马云第一次说这样的话了。作为中国首富，马云曾多次在公开的演讲场合上，力劝年轻人不要再买房了，因为他觉得十年之后，房子会像树叶，像大葱，像白菜一样便宜。总之，未来众多的房子会越来越不值钱。中国的房子真的会像大葱一样便宜吗？淘邦主认为，随着人民观念的改变，房子将不再是稀缺品，价格下降是大概率事件，但会不会跌到像大葱那样廉价，就不太好说了！以深圳为例，最近几年，深圳是中国房价上涨速度最快的城市，涨幅超过北京、上海，不过，在政府的楼市调控政策影响下，深圳房价也开始逐步回调，从去年10月份开始，房价连续7个月下跌。此外，淘邦主注意到一个数据：据不完全统计，深圳目前有住房1041万套，十三五期间深圳将增加70万套住房。深圳的户均人口是2.59人，按照每户2.59人测算，深圳现有的住房可以容纳2800万人，深圳现在实际人口大概是2000万人左右。从这一点分析，如果用来炒作，那就是不够的，如果房子你只是用来住，我们认为已经足够了！看到这里，相信大家都明白了吧？",
			"thumb_image_list": [{
				"height": 192,
				"width": 192,
				"uri": "1dcd0001f10b57b46d5e",
				"url": "http://p3.pstatp.com/list/s192/1dcd0001f10b57b46d5e",
				"type": 1,
				"url_list": [{
					"url": "http://p3.pstatp.com/list/s192/1dcd0001f10b57b46d5e"
				}, {
					"url": "http://p3.pstatp.com/list/s192/1dcd0001f10b57b46d5e"
				}, {
					"url": "http://p3.pstatp.com/list/s192/1dcd0001f10b57b46d5e"
				}]
			}, {
				"height": 192,
				"width": 192,
				"uri": "1dcd0001f10d4bbe4ed4",
				"url": "http://p3.pstatp.com/list/s192/1dcd0001f10d4bbe4ed4",
				"type": 1,
				"url_list": [{
					"url": "http://p3.pstatp.com/list/s192/1dcd0001f10d4bbe4ed4"
				}, {
					"url": "http://p3.pstatp.com/list/s192/1dcd0001f10d4bbe4ed4"
				}, {
					"url": "http://p3.pstatp.com/list/s192/1dcd0001f10d4bbe4ed4"
				}]
			}, {
				"height": 192,
				"width": 192,
				"uri": "1bf7001e6751ed3bf60a",
				"url": "http://p1.pstatp.com/list/s192/1bf7001e6751ed3bf60a",
				"type": 1,
				"url_list": [{
					"url": "http://p1.pstatp.com/list/s192/1bf7001e6751ed3bf60a"
				}, {
					"url": "http://p1.pstatp.com/list/s192/1bf7001e6751ed3bf60a"
				}, {
					"url": "http://p1.pstatp.com/list/s192/1bf7001e6751ed3bf60a"
				}]
			}],
			"large_image_list": [{
				"height": 233,
				"width": 397,
				"uri": "1dcd0001f10b57b46d5e",
				"url": "http://p3.pstatp.com/large/1dcd0001f10b57b46d5e",
				"type": 1,
				"url_list": [{
					"url": "http://p3.pstatp.com/large/1dcd0001f10b57b46d5e"
				}, {
					"url": "http://p3.pstatp.com/large/1dcd0001f10b57b46d5e"
				}, {
					"url": "http://p3.pstatp.com/large/1dcd0001f10b57b46d5e"
				}]
			}, {
				"height": 389,
				"width": 640,
				"uri": "1dcd0001f10d4bbe4ed4",
				"url": "http://p3.pstatp.com/large/1dcd0001f10d4bbe4ed4",
				"type": 1,
				"url_list": [{
					"url": "http://p3.pstatp.com/large/1dcd0001f10d4bbe4ed4"
				}, {
					"url": "http://p3.pstatp.com/large/1dcd0001f10d4bbe4ed4"
				}, {
					"url": "http://p3.pstatp.com/large/1dcd0001f10d4bbe4ed4"
				}]
			}, {
				"height": 427,
				"width": 640,
				"uri": "1bf7001e6751ed3bf60a",
				"url": "http://p1.pstatp.com/large/1bf7001e6751ed3bf60a",
				"type": 1,
				"url_list": [{
					"url": "http://p1.pstatp.com/large/1bf7001e6751ed3bf60a"
				}, {
					"url": "http://p1.pstatp.com/large/1bf7001e6751ed3bf60a"
				}, {
					"url": "http://p1.pstatp.com/large/1bf7001e6751ed3bf60a"
				}]
			}],
			"video_list": []
		}
	}],
	"has_more": true,
	"related_question_banner_type": 0,
	"related_question_reason_url": "sslocal://detail?groupid=6451733322926129422",
	"can_answer": true,
	"candidate_invite_user": [],
	"module_list": [{
		"day_icon_url": "http://p3.pstatp.com/origin/1bf50001abbc1c7f8dba",
		"night_icon_url": "http://p3.pstatp.com/origin/1bf40001abebc0717135",
		"text": "更多问答",
		"schema": "sslocal://feed?api_param=%7B%22enter_from%22%3A%22question%22%2C%22origin_from%22%3A%22native_wenda_home%22%2C%22parent_enter_from%22%3A%22answer_hot%22%2C%22scope%22%3A%22toutiao_wenda%22%2C%22source%22%3A%22question_brow%22%7D\u0026category=question_and_answer\u0026concern_id=6260258266329123329\u0026name=%E5%9B%9E%E7%AD%94\u0026type=4",
		"icon_type": 2
	}, {
		"day_icon_url": "http://p.pstatp.com/origin/43d6001153a9909123ea",
		"night_icon_url": "http://p.pstatp.com/origin/3f040012bf0ccede7d24",
		"text": "提问",
		"schema": "sslocal://wenda_question_post?api_param=%7B%22enter_from%22%3A%22question%22%2C%22origin_from%22%3A%22native_wenda_home%22%2C%22parent_enter_from%22%3A%22answer_hot%22%2C%22scope%22%3A%22toutiao_wenda%22%2C%22source%22%3A%22question_brow%22%7D\u0026gd_ext_json=%7B%22log_pb%22%3A%7B%22impr_id%22%3A%2220180108112136010008019154970796%22%7D%2C%22qid%22%3A%226418445196307988737%22%2C%22author_id%22%3A%223545884073%22%2C%22category_name%22%3A%22answer_hot%22%2C%22ansid%22%3A%226426983034901233921%22%2C%22enter_from%22%3A%22click_category%22%2C%22article_type%22%3A%22wenda%22%7D",
		"icon_type": 1
	}],
	"module_count": 2,
	"question_header_content_fold_max_count": 1,
	"show_format": {
		"font_size": "18",
		"show_module": 1,
		"answer_full_context_color": 0
	},
	"question": {
		"qid": "6418445196307988737",
		"post_answer_url": "sslocal://wenda_post?api_param=%7B%22enter_from%22%3A%22question%22%2C%22origin_from%22%3A%22native_wenda_home%22%2C%22parent_enter_from%22%3A%22answer_hot%22%2C%22scope%22%3A%22toutiao_wenda%22%7D\u0026gd_ext_json=%7B%22log_pb%22%3A%7B%22impr_id%22%3A%2220180108112136010008019154970796%22%7D%2C%22qid%22%3A%226418445196307988737%22%2C%22author_id%22%3A%223545884073%22%2C%22category_name%22%3A%22answer_hot%22%2C%22ansid%22%3A%226426983034901233921%22%2C%22enter_from%22%3A%22click_category%22%2C%22article_type%22%3A%22wenda%22%7D\u0026qTitle=%E9%A9%AC%E4%BA%91%E5%8F%88%E5%87%BA%E6%83%8A%E4%BA%BA%E8%A8%80%E8%AE%BA%EF%BC%8C8%E5%B9%B4%E5%90%8E%E6%88%BF%E5%AD%90%E6%9C%80%E4%B8%8D%E5%80%BC%E9%92%B1%EF%BC%8C%E4%BB%96%E7%9A%84%E8%AF%9D%E5%8F%AF%E4%BF%A1%E5%90%97%EF%BC%9F\u0026qid=6418445196307988737",
		"is_follow": false,
		"nice_ans_count": 639,
		"normal_ans_count": 3120,
		"follow_count": 5048,
		"create_time": 1494410726,
		"can_edit": false,
		"show_edit": false,
		"can_delete": false,
		"show_delete": false,
		"title": "马云又出惊人言论，8年后房子最不值钱，他的话可信吗？",
		"concern_tag_list": [{
			"concern_id": "6213176506714163713",
			"name": "马云",
			"schema": "sslocal://concern?api_param=%7B%22wenda_api_param%22%3A%7B%22enter_from%22%3A%22question%22%2C%22origin_from%22%3A%22native_wenda_home%22%2C%22parent_enter_from%22%3A%22answer_hot%22%2C%22scope%22%3A%22toutiao_wenda%22%7D%7D\u0026cid=6213176506714163713\u0026tab_sname=wenda"
		}, {
			"concern_id": "6213176458483862017",
			"name": "阿里巴巴",
			"schema": "sslocal://concern?api_param=%7B%22wenda_api_param%22%3A%7B%22enter_from%22%3A%22question%22%2C%22origin_from%22%3A%22native_wenda_home%22%2C%22parent_enter_from%22%3A%22answer_hot%22%2C%22scope%22%3A%22toutiao_wenda%22%7D%7D\u0026cid=6213176458483862017\u0026tab_sname=wenda"
		}, {
			"concern_id": "6215497900357585410",
			"name": "财经",
			"schema": "sslocal://concern?api_param=%7B%22wenda_api_param%22%3A%7B%22enter_from%22%3A%22question%22%2C%22origin_from%22%3A%22native_wenda_home%22%2C%22parent_enter_from%22%3A%22answer_hot%22%2C%22scope%22%3A%22toutiao_wenda%22%7D%7D\u0026cid=6215497900357585410\u0026tab_sname=wenda"
		}, {
			"concern_id": "6213185656819026434",
			"name": "购房",
			"schema": "sslocal://concern?api_param=%7B%22wenda_api_param%22%3A%7B%22enter_from%22%3A%22question%22%2C%22origin_from%22%3A%22native_wenda_home%22%2C%22parent_enter_from%22%3A%22answer_hot%22%2C%22scope%22%3A%22toutiao_wenda%22%7D%7D\u0026cid=6213185656819026434\u0026tab_sname=wenda"
		}, {
			"concern_id": "6329378814237346305",
			"name": "房价",
			"schema": "sslocal://concern?api_param=%7B%22wenda_api_param%22%3A%7B%22enter_from%22%3A%22question%22%2C%22origin_from%22%3A%22native_wenda_home%22%2C%22parent_enter_from%22%3A%22answer_hot%22%2C%22scope%22%3A%22toutiao_wenda%22%7D%7D\u0026cid=6329378814237346305\u0026tab_sname=wenda"
		}, {
			"concern_id": "6215497897127971330",
			"name": "房产",
			"schema": "sslocal://concern?api_param=%7B%22wenda_api_param%22%3A%7B%22enter_from%22%3A%22question%22%2C%22origin_from%22%3A%22native_wenda_home%22%2C%22parent_enter_from%22%3A%22answer_hot%22%2C%22scope%22%3A%22toutiao_wenda%22%7D%7D\u0026cid=6215497897127971330\u0026tab_sname=wenda"
		}],
		"user": {
			"uname": "亻睹mU536809",
			"avatar_url": "http://p1.pstatp.com/thumb/8612/3240203858",
			"user_id": "5547791947",
			"is_verify": 0,
			"user_intro": "",
			"user_auth_info": ""
		},
		"share_data": {
			"content": "近日，马云在杭州举行的全球峰会上发表主题演讲说到：未来房子如葱。他说，过去8年内，中国的房子整体上处于大幅上升的状态。8年后中国最便宜的东西可能就是房子。他为什么这么说？有多大可信度？\n",
			"image_url": "http://p3.pstatp.com/list/300x196/1dce0019e614d8366142.webp",
			"share_url": "https://www.wukong.com/question/6418445196307988737/?app=news_article\u0026share_ansid=6426983034901233921\u0026iid=20063010037",
			"title": "马云又出惊人言论，8年后房子最不值钱，他的话可信吗？(3759个回答) - 悟空问答"
		},
		"content": {
			"text": "近日，马云在杭州举行的全球峰会上发表主题演讲说到：未来房子如葱。他说，过去8年内，中国的房子整体上处于大幅上升的状态。8年后中国最便宜的东西可能就是房子。他为什么这么说？有多大可信度？\n",
			"thumb_image_list": [{
				"height": 192,
				"width": 192,
				"uri": "1dce0019e614d8366142",
				"url": "http://p3.pstatp.com/list/s192/1dce0019e614d8366142",
				"type": 1,
				"url_list": [{
					"url": "http://p3.pstatp.com/list/s192/1dce0019e614d8366142"
				}, {
					"url": "http://p3.pstatp.com/list/s192/1dce0019e614d8366142"
				}, {
					"url": "http://p3.pstatp.com/list/s192/1dce0019e614d8366142"
				}]
			}],
			"large_image_list": [{
				"height": 178,
				"width": 300,
				"uri": "1dce0019e614d8366142",
				"url": "http://p3.pstatp.com/large/1dce0019e614d8366142",
				"type": 1,
				"url_list": [{
					"url": "http://p3.pstatp.com/large/1dce0019e614d8366142"
				}, {
					"url": "http://p3.pstatp.com/large/1dce0019e614d8366142"
				}, {
					"url": "http://p3.pstatp.com/large/1dce0019e614d8366142"
				}]
			}]
		},
		"fold_reason": {
			"open_url": "sslocal://detail?groupid=6293724675596402946",
			"title": "为什么折叠?"
		}
	},
	"has_profit": false,
	"repost_params": {
		"repost_type": 218,
		"fw_id": 6418445196307988737,
		"fw_id_type": 1026,
		"fw_user_id": 5547791947,
		"opt_id": 6418445196307988737,
		"opt_id_type": 1026,
		"schema": "",
		"title": "马云又出惊人言论，8年后房子最不值钱，他的话可信吗？",
		"cover_url": "http://p3.pstatp.com/list/300x196/1dce0019e614d8366142.webp"
	}
}
```