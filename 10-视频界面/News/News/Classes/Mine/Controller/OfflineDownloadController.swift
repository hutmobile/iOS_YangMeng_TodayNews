//
//  OfflineDownloadController.swift
//  News
//
//  Created by 杨蒙 on 2017/10/6.
//  Copyright © 2017年 hrscy. All rights reserved.
//

import UIKit

class OfflineDownloadController: UITableViewController {
    // 标题数组
    fileprivate var titles = [HomeNewsTitle]()
    // 标题数据表
    fileprivate let newsTitleTable = NewsTitleTable()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.ym_registerCell(cell: OfflineDownlaodCell.self)
        tableView.rowHeight = 44
        tableView.sectionHeaderHeight = 44
        tableView.theme_separatorColor = "colors.separatorViewColor"
        tableView.separatorInset = UIEdgeInsetsMake(0, 0, 0, 0)
        tableView.theme_backgroundColor = "colors.tableViewBackgroundColor"
        // 从数据库中取出左右数据，赋值给 标题数组 titles
        titles = newsTitleTable.selectAll()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

// MARK: - UITableViewDelegate, UItableViewDataSource
extension OfflineDownloadController {
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return OfflineSectionHeader(frame: CGRect(x: 0, y: 0, width: screenWidth, height: 44))
    }
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titles.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.ym_dequeueReusableCell(indexPath: indexPath) as OfflineDownlaodCell
        let newsTitle = titles[indexPath.row]
        cell.titleLabel.text = newsTitle.name
        cell.rightImageView.theme_image = newsTitle.selected ? "images.air_download_option_press" : "images.air_download_option"
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // 取出数组中的第 row 个对象
        var homeNewsTitle = titles[indexPath.row]
        // 取反
        homeNewsTitle.selected = !homeNewsTitle.selected
        // 取出 第 row 个 cell
        let cell = tableView.cellForRow(at: indexPath) as! OfflineDownlaodCell
        // 改变 cell 的图片
        cell.rightImageView.theme_image = homeNewsTitle.selected ? "images.air_download_option_press" : "images.air_download_option"
        // 替换数组中的数据
        titles[indexPath.row] = homeNewsTitle
        // 更新数据库中的数据
        newsTitleTable.update(homeNewsTitle)
        tableView.reloadRows(at: [indexPath], with: .none)
        //        tableView.deselectRow(at: indexPath, animated: true)
    }
}
