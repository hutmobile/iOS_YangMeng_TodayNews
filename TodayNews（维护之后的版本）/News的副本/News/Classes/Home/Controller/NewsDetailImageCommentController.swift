//
//  NewsDetailImageCommentController.swift
//  TodayNews
//
//  Created by 杨蒙 on 2018/2/1.
//  Copyright © 2018年 hrscy. All rights reserved.
//

import UIKit
import IBAnimatable
import RxSwift
import RxCocoa
import MJRefresh
import SVProgressHUD

class NewsDetailImageCommentController: AnimatableModalViewController, StoryboardLoadable {

    fileprivate let disposeBag = DisposeBag()
    
    var comments = [DongtaiComment]()
    
    var aNews = NewsModel() {
        didSet {
            // 获取用户详情一般的详情的评论数据
            NetworkTool.loadUserDetailNormalDongtaiComents(groupId: aNews.group_id, offset: comments.count, count: 20, completionHandler: {
                if $0.count == 0 {
                    SVProgressHUD.showInfo(withStatus: "暂无评论!")
                    return
                }
                self.comments = $0
                self.tableView.reloadData()
            })
        }
    }
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
}

extension NewsDetailImageCommentController {
    
    fileprivate func setupUI() {
        SVProgressHUD.configuration()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.ym_registerCell(cell: DongtaiCommentCell.self)
        
        tableView.mj_footer = RefreshAutoGifFooter(refreshingBlock: { [weak self] in
            // 获取用户详情一般的详情的评论数据
            NetworkTool.loadUserDetailNormalDongtaiComents(groupId: self!.aNews.group_id, offset: self!.comments.count, count: 20, completionHandler: {
                if self!.tableView.mj_footer.isRefreshing { self!.tableView.mj_footer.endRefreshing() }
                self!.tableView.mj_footer.pullingPercent = 0.0
                if $0.count == 0 {
                    self!.tableView.mj_footer.endRefreshingWithNoMoreData()
                    SVProgressHUD.showInfo(withStatus: "没有更多数据啦!")
                    return
                }
                self!.comments += $0
                self!.tableView.reloadData()
            })
        })
    }
    
    /// 关闭评论按钮点击
    @IBAction func closeCommentButtonClicked(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    /// 写评论按钮点击
    @IBAction func writeNewCommentButtonClicked(_ sender: UIButton) {
        let postCommentView = PostCommentView.loadViewFromNib()
        postCommentView.placeholderLabel.text = "优质评论将会被优先展示"
        postCommentView.isEmojiButtonSelected = false
        UIApplication.shared.keyWindow?.backgroundColor = .white
        UIApplication.shared.keyWindow?.addSubview(postCommentView)
    }
}

extension NewsDetailImageCommentController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return comments.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.ym_dequeueReusableCell(indexPath: indexPath) as DongtaiCommentCell
        cell.comment = comments[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let comment = comments[indexPath.row]
        let postCommentView = PostCommentView.loadViewFromNib()
        if comment.screen_name != "" {
            postCommentView.placeholderLabel.text = "回复 \(comment.screen_name):"
        } else if comment.user.user_id != 0 {
            if comment.user.screen_name != "" {
                postCommentView.placeholderLabel.text = "回复 \(comment.user.screen_name):"
            }
        }
        view.addSubview(postCommentView)
    }
    
//    func scrollViewDidScroll(_ scrollView: UIScrollView) {
//        if scrollView.contentOffset.y < 0 {
//            dismiss(animated: true, completion: nil)
//        }
//    }
    
}
