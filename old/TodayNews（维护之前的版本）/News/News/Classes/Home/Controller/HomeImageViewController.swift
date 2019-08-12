//
//  HomeImageViewController.swift
//  News
//
//  Created by 杨蒙 on 2018/1/26.
//  Copyright © 2018年 hrscy. All rights reserved.
//
// 图片,组图
//

import UIKit

class HomeImageViewController: HomeTableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.ym_registerCell(cell: HomeImageTableCell.self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

// MARK: - Table view data source
extension HomeImageViewController {
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return news[indexPath.row].imageCellHeight
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return news.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.ym_dequeueReusableCell(indexPath: indexPath) as HomeImageTableCell
        cell.homeImage = news[indexPath.row]
        return cell
    }
}

