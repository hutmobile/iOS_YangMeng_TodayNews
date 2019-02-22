//
//  HomeJokeViewController.swift
//  News
//
//  Created by 杨蒙 on 2018/1/26.
//  Copyright © 2018年 hrscy. All rights reserved.
//
//  段子 或 街拍
//
import UIKit

class HomeJokeViewController: HomeTableViewController {
    /// 是否是段子
    var isJoke = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.ym_registerCell(cell: HomeJokeCell.self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

// MARK: - Table view data source
extension HomeJokeViewController {
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let aNews = news[indexPath.row]
        return isJoke ? aNews.jokeCellHeight : aNews.girlCellHeight
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return news.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.ym_dequeueReusableCell(indexPath: indexPath) as HomeJokeCell
        cell.isJoke = isJoke
        cell.joke = news[indexPath.row]
        return cell
    }
}
