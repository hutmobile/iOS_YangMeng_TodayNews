//
//  UserDiggViewController.swift
//  News
//
//  Created by 杨蒙 on 2018/1/4.
//  Copyright © 2018年 hrscy. All rights reserved.
//

import UIKit
import SVProgressHUD

class UserDiggViewController: UITableViewController {
    
    var userId = 0
    
    var digglist = [DongtaiUserDigg]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "赞过的人"
        SVProgressHUD.configuration()
        tableView.tableFooterView = UIView()
        tableView.ym_registerCell(cell: UserDiggCell.self)
        tableView.mj_footer = RefreshAutoGifFooter(refreshingBlock: { [weak self] in
            // 获取动态详情的用户点赞列表数据
            NetworkTool.loadDongtaiDetailUserDiggList(id: self!.userId, offset: self!.digglist.count) {
                if self!.tableView.mj_footer.isRefreshing { self!.tableView.mj_footer.endRefreshing() }
                self!.tableView.mj_footer.pullingPercent = 0.0
                if $0.count == 0 {
                    self!.tableView.mj_footer.endRefreshingWithNoMoreData()
                    SVProgressHUD.showInfo(withStatus: "没有更多数据啦!")
                    return
                }
                self!.digglist = $0
                self!.tableView.reloadData()
            }
        })
        tableView.mj_footer.beginRefreshing()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return digglist.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.ym_dequeueReusableCell(indexPath: indexPath) as UserDiggCell
        cell.user = digglist[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let user = digglist[indexPath.row]
        let userDetailVC = UserDetailViewController2()
        userDetailVC.userId = user.user_id
        navigationController?.pushViewController(userDetailVC, animated: true)
    }

}
