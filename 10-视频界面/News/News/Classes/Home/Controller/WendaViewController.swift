//
//  WendaViewController.swift
//  News
//
//  Created by 杨蒙 on 2018/1/4.
//  Copyright © 2018年 hrscy. All rights reserved.
//

import UIKit
import SVProgressHUD

class WendaViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    /// 回答按钮
    @IBOutlet weak var answerButton: UIButton!
    
    @IBOutlet weak var bottomView: WendaAnswerBottomView!
    @IBOutlet weak var bottomViewBottom: NSLayoutConstraint!
    /// 问答数据
    var wenda = Wenda()
    /// 问答数组
    var answers = [WendaAnswer]()
    
    var qid = 0
    var enterForm: WendaEnterFrom = .clickHeadline
    
    override func viewDidLoad() {
        super.viewDidLoad()
        SVProgressHUD.configuration()
        navigationItem.titleView = navigationButton
        view.theme_backgroundColor = "colors.cellBackgroundColor"
        tableView.ym_registerCell(cell: WendaAnswerCell.self)
        // 获取问答的列表数据（提出了问题） proposeQuestion(1029)
        NetworkTool.loadProposeQuestionBrow(qid: qid, enterForm: enterForm) {
            self.answers = $0.ans_list
            self.tableView.tableFooterView = UIView()
            self.bottomView.modules = $0.module_list
            self.headerView.question = $0.question
            self.tableView.tableHeaderView = self.headerView
            self.tableView.reloadData()
        }
        
        // 添加加载更多数据
        tableView.mj_footer = RefreshAutoGifFooter(refreshingBlock: { [weak self] in
            NetworkTool.loadMoreProposeQuestionBrow(qid: self!.qid, offset: self!.answers.count, enterForm: self!.enterForm, completionHandler: {
                if self!.tableView.mj_footer.isRefreshing { self!.tableView.mj_footer.endRefreshing() }
                self!.tableView.mj_footer.pullingPercent = 0.0
                if $0.ans_list.count == 0 {
                    self!.tableView.mj_footer.endRefreshingWithNoMoreData()
                    SVProgressHUD.showInfo(withStatus: "没有更多数据啦！")
                    return
                }
                self!.answers += $0.ans_list
                self!.tableView.reloadData()
            })
        })
        tableView.mj_footer.isAutomaticallyChangeAlpha = true
        
        // 点击了展开按钮
        headerView.didSelectUnfoldButton = { [weak self] in
            self!.tableView.tableHeaderView = self!.headerView
        }
    }
    
    /// 懒加载 悟空问答图标
    private lazy var navigationButton: UIButton = {
        let navigationButton = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 44))
        navigationButton.isUserInteractionEnabled = false
        navigationButton.theme_setImage("colors.wukonglogo_ask_bar_90x20_", forState: .normal)
        return navigationButton
    }()
    
    /// 懒加载 头部
    private lazy var headerView = WendaAnswerHeaderView.loadViewFromNib()

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

// MARK: - UITableViewDelegate, UITableViewDataSource
extension WendaViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return answers.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return answers[indexPath.row].cellHeight!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.cellForRow(at: indexPath) as? WendaAnswerCell
        if cell == nil {
            cell = tableView.ym_dequeueReusableCell(indexPath: indexPath) as WendaAnswerCell
            cell!.answer = answers[indexPath.row]
            cell!.didSelectCoverButton = { [weak self] in  // 点击了覆盖按钮，跳转到用户详情界面
                let userDetailVC = UserDetailViewController2()
                userDetailVC.userId = Int(cell!.answer.user.user_id)!
                self!.navigationController?.pushViewController(userDetailVC, animated: true)
            }
        }
        return cell!
    }
}
