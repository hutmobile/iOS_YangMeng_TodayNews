//
//  MineViewController.swift
//  News
//
//  Created by 杨蒙 on 2017/9/6.
//  Copyright © 2017年 hrscy. All rights reserved.
//

import UIKit
import RxCocoa
import RxSwift

class MineViewController: UITableViewController {
    
    private let disposeBag = DisposeBag()
    // 存储 cell的数据
    var sections = [[MyCellModel]]()
    // 存储我的关注数据
    var concerns = [MyConcern]()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        navigationController?.navigationBar.setBackgroundImage(UIImage(named: "navigation_background_white" + (UserDefaults.standard.bool(forKey: isNight) ? "_night" : "")), for: .default)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.tableFooterView = UIView()
        tableView.tableHeaderView = headerView
        tableView.theme_backgroundColor = "colors.tableViewBackgroundColor"
        tableView.separatorStyle = .none
        tableView.ym_registerCell(cell: MyFisrtSectionCell.self)
        tableView.ym_registerCell(cell: MyOtherCell.self)
        // 获取我的 cell 的数据
        NetworkTool.loadMyCellData {
            self.sections = $0
            self.tableView.reloadData()
            // 我的关注数据
            NetworkTool.loadMyConcern(completionHandler: {
                self.concerns = $0
                self.tableView.reloadSections(IndexSet(integer: 0), with: .automatic)
            })
        }
        /// 更多按钮点击
        headerView.moreLoginButton.rx.tap
            .subscribe(onNext: { [weak self] in
                let moreLoginVC = MoreLoginViewController.loadStoryboard()
                moreLoginVC.modalSize = (width: .full, height: .custom(size: Float(screenHeight - (isIPhoneX ? 44 : 20))))
                self!.present(moreLoginVC, animated: true, completion: nil)
            })
            .disposed(by: disposeBag)
    }
    
    /// 懒加载 头部
    private lazy var headerView = NoLoginHeaderView.loadViewFromNib()
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
}

// MARK: - UITableViewDelegate, UITableViewDataSource
extension MineViewController {
    
    // 每组头部的高度
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return section == 1 ? 0 : 10
    }
    
    // 每组头部视图
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: screenWidth, height: 10))
        view.theme_backgroundColor = "colors.tableViewBackgroundColor"
        return view
    }
    // 行高
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 && indexPath.row == 0 {
            return (concerns.count == 0 || concerns.count == 1) ? 40 : 114
        }
        return 40
    }
    
    // 组数
    override func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    // 每组的行数
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sections[section].count
    }
    // cell
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 && indexPath.row == 0 {
            let cell = tableView.ym_dequeueReusableCell(indexPath: indexPath) as MyFisrtSectionCell
            cell.myCellModel = sections[indexPath.section][indexPath.row]
            cell.collectionView.isHidden = (concerns.count == 0 || concerns.count == 1)
            if concerns.count == 1 { cell.myConcern = concerns[0] }
            if concerns.count > 1 { cell.myConcerns = concerns }
            cell.myConcernSelected = { [weak self] in
//                let userDetailVC = UserDetailViewController()
                let userDetailVC = UserDetailViewController2()
                userDetailVC.userId = $0.userid
                self?.navigationController?.pushViewController(userDetailVC, animated: true)
            }
            return cell
        }
        let cell = tableView.ym_dequeueReusableCell(indexPath: indexPath) as MyOtherCell
        let myCellModel = sections[indexPath.section][indexPath.row]
        cell.leftLabel.text = myCellModel.text
        cell.rightLabel.text = myCellModel.grey_text
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        if indexPath.section == 3 && indexPath.row == 1 { // 跳转到系统设置界面
            let settingVC = SettingViewController()
            settingVC.navigationItem.title = "设置"
            navigationController?.pushViewController(settingVC, animated: true)
        }
    }
    
    override func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let offsetY = scrollView.contentOffset.y
        if offsetY < 0 {
            let totalOffset = kMyHeaderViewHeight + abs(offsetY)
            let f = totalOffset / kMyHeaderViewHeight
            headerView.bgImageView.frame = CGRect(x: -screenWidth * (f - 1) * 0.5, y: offsetY, width: screenWidth * f, height: totalOffset)
        }
    }
}
