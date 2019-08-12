//
//  NetworkTool.swift
//  News
//
//  Created by 杨蒙 on 2017/9/13.
//  Copyright © 2017年 hrscy. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

protocol NetworkToolProtocol {
    // --------------------------------- 首页 home  ---------------------------------
    /// 首页顶部新闻标题的数据
    static func loadHomeNewsTitleData(completionHandler: @escaping (_ newsTitles: [HomeNewsTitle]) -> ())
    
    
    // --------------------------------- 我的 mine  ---------------------------------
    /// 我的界面 cell 的数据
    static func loadMyCellData(completionHandler: @escaping (_ sections: [[MyCellModel]]) -> ())
    /// 我的关注数据
    static func loadMyConcern(completionHandler: @escaping (_ concerns: [MyConcern]) -> ())
    /// 获取用户详情数据
    static func loadUserDetail(user_id: Int, completionHandler: @escaping (_ userDetail: UserDetail) -> ())
    /// 已关注用户，取消关注
    static func loadRelationUnfollow(user_id: Int, completionHandler: @escaping (_ user: ConcernUser) -> ())
    /// 点击关注按钮，关注用户
    static func loadRelationFollow(user_id: Int, completionHandler: @escaping (_ user: ConcernUser) -> ())
    /// 点击了关注按钮，就会出现相关推荐数据
    static func loadRelationUserRecommend(user_id: Int, completionHandler: @escaping (_ concerns: [UserCard]) -> ())
    /// 获取用户详情的动态列表数据
    static func loadUserDetailDongtaiList(user_id: Int, completionHandler: @escaping (_ dongtais: [UserDetailDongtai]) -> ())
    /// 获取用户详情的文章列表数据
    static func loadUserDetailArticleList(user_id: Int, completionHandler: @escaping (_ dongtais: [UserDetailArticle]) -> ())
}

extension NetworkToolProtocol {
    // --------------------------------- 首页 home  ---------------------------------
    /// 首页顶部新闻标题的数据
    static func loadHomeNewsTitleData(completionHandler: @escaping (_ newsTitles: [HomeNewsTitle]) -> ()) {
        let url = BASE_URL + "/article/category/get_subscribed/v1/?"
        let params = ["device_id": device_id,
                      "iid": iid]
        Alamofire.request(url, parameters: params).responseJSON { (response) in
            guard response.result.isSuccess else {
                // 网络错误的提示信息
                return
            }
            if let value = response.result.value {
                let json = JSON(value)
                guard json["message"] == "success" else {
                    return
                }
                if let dataDict = json["data"].dictionary {
                    if let data = dataDict["data"]?.arrayObject {
                        var titles = [HomeNewsTitle]()
                        let jsonString = "{\"category\": \"\", \"name\": \"推荐\"}"
                        let recommend = HomeNewsTitle.deserialize(from: jsonString)
                        titles.append(recommend!)
                        for item in data {
                            let newsTitle = HomeNewsTitle.deserialize(from: item as? NSDictionary)
                            titles.append(newsTitle!)
                        }
                        completionHandler(titles)
                    }
                }
            }
        }
    }
    
    // --------------------------------- 我的 mine  ---------------------------------
    /// 我的界面 cell 的数据
    static func loadMyCellData(completionHandler: @escaping (_ sections: [[MyCellModel]]) -> ()) {
        let url = BASE_URL + "/user/tab/tabs/?"
        let params = ["device_id": device_id]
        
        Alamofire.request(url, parameters: params).responseJSON { (response) in
            guard response.result.isSuccess else {
                // 网络错误的提示信息
                return
            }
            if let value = response.result.value {
                let json = JSON(value)
                guard json["message"] == "success" else {
                    return
                }
                if let data = json["data"].dictionary {
                    if let sections = data["sections"]?.arrayObject {
                        completionHandler(sections.flatMap({ item in
                            (item as! [Any]).flatMap({ row in
                                MyCellModel.deserialize(from: row as? NSDictionary)
                            })
                        }))
                    }
                }
            }
        }
    }
    
    /// 我的关注数据
    static func loadMyConcern(completionHandler: @escaping (_ concerns: [MyConcern]) -> ()) {
        
        let url = BASE_URL + "/concern/v2/follow/my_follow/?"
        let params = ["device_id": device_id]
        
        Alamofire.request(url, parameters: params).responseJSON { (response) in
            guard response.result.isSuccess else {
                // 网络错误的提示信息
                return
            }
            if let value = response.result.value {
                let json = JSON(value)
                guard json["message"] == "success" else {
                    return
                }
                if let datas = json["data"].arrayObject {
                    completionHandler(datas.flatMap({
                        MyConcern.deserialize(from: $0 as? NSDictionary)
                    }))
                }
            }
        }
    }
    
    /// 获取用户详情数据
    static func loadUserDetail(user_id: Int, completionHandler: @escaping (_ userDetail: UserDetail) -> ()) {
        
        let url = BASE_URL + "/user/profile/homepage/v4/?"
        let params = ["user_id": user_id,
                      "device_id": device_id,
                      "iid": iid]
        
        Alamofire.request(url, parameters: params).responseJSON { (response) in
            guard response.result.isSuccess else {
                // 网络错误的提示信息
                return
            }
            if let value = response.result.value {
                let json = JSON(value)
                guard json["message"] == "success" else {
                    return
                }
                if let data = json["data"].dictionaryObject {
                    let userDetail = UserDetail.deserialize(from: data as NSDictionary)
                    completionHandler(userDetail!)
                }
            }
        }
    }
    
    /// 已关注用户，取消关注
    static func loadRelationUnfollow(user_id: Int, completionHandler: @escaping (_ user: ConcernUser) -> ()) {
        
        let url = BASE_URL + "/2/relation/unfollow/?"
        let params = ["user_id": user_id,
                      "device_id": device_id,
                      "iid": iid]
        
        Alamofire.request(url, parameters: params).responseJSON { (response) in
            guard response.result.isSuccess else {
                // 网络错误的提示信息
                return
            }
            if let value = response.result.value {
                let json = JSON(value)
                guard json["message"] == "success" else {
//                    if let data = json["data"].dictionaryObject {
//                        SVProgressHUD.showInfo(withStatus: data["description"] as? String)
//                        SVProgressHUD.setForegroundColor(UIColor.white)
//                        SVProgressHUD.setBackgroundColor(UIColor(r: 0, g: 0, b: 0, alpha: 0.3))
//                    }
                    return
                }
                if let data = json["data"].dictionaryObject {
                    let user = ConcernUser.deserialize(from: data["user"] as? NSDictionary)
                    completionHandler(user!)
                }
            }
        }
    }
    
    /// 点击关注按钮，关注用户
    static func loadRelationFollow(user_id: Int, completionHandler: @escaping (_ user: ConcernUser) -> ()) {
        
        let url = BASE_URL + "/2/relation/follow/v2/?"
        let params = ["user_id": user_id,
                      "device_id": device_id,
                      "iid": iid]
        
        Alamofire.request(url, parameters: params).responseJSON { (response) in
            guard response.result.isSuccess else {
                // 网络错误的提示信息
                return
            }
            if let value = response.result.value {
                let json = JSON(value)
                guard json["message"] == "success" else {
                    return
                }
                if let data = json["data"].dictionaryObject {
                    let user = ConcernUser.deserialize(from: data["user"] as? NSDictionary)
                    completionHandler(user!)
                }
            }
        }
    }
    
    /// 点击了关注按钮，就会出现相关推荐数据
    static func loadRelationUserRecommend(user_id: Int, completionHandler: @escaping (_ concerns: [UserCard]) -> ()) {
        
        let url = BASE_URL + "/user/relation/user_recommend/v1/supplement_recommends/?"
        let params = ["device_id": device_id,
                      "follow_user_id": user_id,
                      "iid": iid,
                      "scene": "follow",
                      "source": "follow"] as [String : Any]
        
        Alamofire.request(url, parameters: params).responseJSON { (response) in
            guard response.result.isSuccess else {
                // 网络错误的提示信息
                return
            }
            if let value = response.result.value {
                let json = JSON(value)
                guard json["err_no"] == 0 else {
                    return
                }
                if let user_cards = json["user_cards"].arrayObject {
                    completionHandler(user_cards.flatMap({
                        UserCard.deserialize(from: $0 as? NSDictionary)
                    }))
                }
            }
        }
    }
    
    /// 获取用户详情的动态列表数据
    static func loadUserDetailDongtaiList(user_id: Int, completionHandler: @escaping (_ dongtais: [UserDetailDongtai]) -> ()) {
        
        let url = BASE_URL + "/dongtai/list/v15/?"
        let params = ["user_id": user_id]
        
        Alamofire.request(url, parameters: params).responseJSON { (response) in
            guard response.result.isSuccess else {
                // 网络错误的提示信息
                return
            }
            if let value = response.result.value {
                let json = JSON(value)
                guard json["message"] == "success" else {
                    return
                }
                if let data = json["data"].dictionary {
                    if let datas = data["data"]?.arrayObject {
                        completionHandler(datas.flatMap({
                            UserDetailDongtai.deserialize(from: $0 as? NSDictionary)
                        }))
                    }
                }
            }
        }
    }
    
    /// 获取用户详情的文章列表数据
    static func loadUserDetailArticleList(user_id: Int, completionHandler: @escaping (_ dongtais: [UserDetailArticle]) -> ()) {
        
        let url = BASE_URL + "/pgc/ma/?"
        let params = ["uid": user_id,
                      "page_type": 1,
                      "media_id": user_id,
                      "output": "json",
                      "is_json": 1,
                      "from": "user_profile_app",
                      "version": 2,
                      "as": "A1157A8297BEED7",
                      "cp": "59549FCDF1885E1"] as [String: Any]
        
        Alamofire.request(url, parameters: params).responseJSON { (response) in
            guard response.result.isSuccess else {
                // 网络错误的提示信息
                return
            }
            if let value = response.result.value {
                let json = JSON(value)
                guard json["message"] == "success" else {
                    return
                }
                if let data = json["data"].arrayObject {
                    completionHandler(data.flatMap({
                        UserDetailArticle.deserialize(from: $0 as? NSDictionary)
                    }))
                }
            }
        }
    }
    
}

struct NetworkTool: NetworkToolProtocol {}
