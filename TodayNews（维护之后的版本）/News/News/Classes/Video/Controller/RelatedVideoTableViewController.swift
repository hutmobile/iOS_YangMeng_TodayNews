//
//  RelatedVideoTableViewController.swift
//  News
//
//  Created by 杨蒙 on 2018/1/21.
//  Copyright © 2018年 hrscy. All rights reserved.
//
//  ********************暂未使用******************
//  ********************仅供参考******************

import UIKit
import RxSwift
import RxCocoa

class RelatedVideoTableViewController: UITableViewController {
    /// 头部
    private lazy var headerView = RelatedVideoHeaderView.loadViewFromNib()
    /// 尾部
    private lazy var footerView = RelatedVideoFooterView.loadViewFromNib()
    /// 视频详情
    var videoDetail = VideoDetail()
    /// 当前视频数据
    var video = NewsModel()
    
    private lazy var disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        headerView.video = video
        tableView.tableHeaderView = headerView
        footerView.ad = videoDetail.ad
        tableView.tableFooterView = footerView
        tableView.ym_registerCell(cell: RelatedVideoCell.self)
        // 展开按钮
        headerView.foldButton.rx.controlEvent(.touchUpInside)
            .subscribe(onNext: { [weak self] in
                self!.tableView.tableHeaderView = self!.headerView
                self!.tableView.reloadData()
            })
            .disposed(by: disposeBag)
        // 查看更多
        footerView.moreButton.rx.controlEvent(.touchUpInside)
            .subscribe(onNext: { [weak self] in
                self!.tableView.rowHeight = 80
                self!.tableView.reloadData()
            })
            .disposed(by: disposeBag)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videoDetail.related_video_toutiao.count
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return (indexPath.row >= videoDetail.related_video_section ? 0 : 80)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.ym_dequeueReusableCell(indexPath: indexPath) as RelatedVideoCell
        cell.relatedVideo = videoDetail.related_video_toutiao[indexPath.row]
        return cell
    }
    
}
