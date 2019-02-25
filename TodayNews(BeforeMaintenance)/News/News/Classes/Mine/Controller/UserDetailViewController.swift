//
//  UserDetailViewController.swift
//  News
//
//  Created by 杨蒙 on 2017/11/30.
//  Copyright © 2017年 hrscy. All rights reserved.
//
//  ****************不再使用****************
//

import UIKit

class UserDetailViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var bottomView: UIView!
    @IBOutlet weak var bottomViewHeight: NSLayoutConstraint!
    @IBOutlet weak var bottomViewBottom: NSLayoutConstraint!
    
    var userId: Int = 0
    var userDetail: UserDetail?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    /// 改变状态栏的字体颜色
    var changeStatusBarStyle: UIStatusBarStyle = .lightContent {
        didSet { setNeedsStatusBarAppearanceUpdate() }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 设置 UI
        setupUI()
        // 点击了用户或者话题
        didSelectTopicOrUser()
    }

    /// 懒加载 头部
    private lazy var headerView = UserDetailHeaderView.loadViewFromNib()
    
    /// 懒加载 底部
    fileprivate lazy var myBottomView: UserDetailBottomView = {
        let myBottomView = UserDetailBottomView(frame: CGRect(x: 0, y: 0, width: screenWidth, height: 44))
        myBottomView.delegate = self
        return myBottomView
    }()
    
    /// 懒加载 导航栏
    private lazy var navigationBar = NavigationBarView.loadViewFromNib()
    /// 状态栏
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return changeStatusBarStyle
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension UserDetailViewController: UIScrollViewDelegate {
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let offsetY = scrollView.contentOffset.y
        // 图片黏住顶部，拉伸
        if offsetY < -44 {
            let totalOffset = kUserDetailHeaderBGImageViewHeight + abs(offsetY)
            let f = totalOffset / kUserDetailHeaderBGImageViewHeight
            headerView.backgroundImageView.frame = CGRect(x: -screenWidth * (f - 1) * 0.5, y: offsetY, width: screenWidth * f, height: totalOffset)
            navigationBar.backgroundColor = UIColor(white: 1.0, alpha: 0.0)
        } else {
            for subview in headerView.bottomScrollView.subviews {
                let tableView = subview as! UITableView
                tableView.isScrollEnabled = false
            }
            var alpha: CGFloat = (offsetY + 44) / 58
            alpha = min(alpha, 1.0)
            navigationBar.backgroundColor = UIColor(white: 1.0, alpha: alpha)
            if alpha == 1.0 {
                changeStatusBarStyle = .default
                navigationBar.returnButton.theme_setImage("images.personal_home_back_black_24x24_", forState: .normal)
                navigationBar.moreButton.theme_setImage("images.new_more_titlebar_24x24_", forState: .normal)
            } else {
                changeStatusBarStyle = .lightContent
                navigationBar.returnButton.theme_setImage("images.personal_home_back_white_24x24_", forState: .normal)
                navigationBar.moreButton.theme_setImage("images.new_morewhite_titlebar_22x22_", forState: .normal)
            }
            // 14 + 15 + 14
            var alpha1: CGFloat = offsetY / 57
            if offsetY >= 43 {
                alpha1 = min(alpha1, 1.0)
                navigationBar.nameLabel.isHidden = false
                navigationBar.concernButton.isHidden = false
                navigationBar.nameLabel.textColor = UIColor(r: 0, g: 0, b: 0, alpha: alpha1)
                navigationBar.concernButton.alpha = alpha1
            } else {
                alpha1 = min(0.0, alpha1)
                navigationBar.nameLabel.textColor = UIColor(r: 0, g: 0, b: 0, alpha: alpha1)
                navigationBar.concernButton.alpha = alpha1
            }
            /// 设置 headerView 的 topTab 黏住顶部
            // 14 + headerView.topTabView.frame.minY(201)
            let topViewH: CGFloat = 14 + headerView.topTabView.frame.minY
            if offsetY >= topViewH {
                headerView.y = offsetY - topViewH
                for subview in headerView.bottomScrollView.subviews {
                    let tableView = subview as! UITableView
                    tableView.isScrollEnabled = true
                }
            } else {
                headerView.y = 0
            }
        }
    }
    
}

// MARK: - 点击事件
extension UserDetailViewController: UserDetailBottomViewDelegate {
    
    /// 点击了用户或者话题
    private func didSelectTopicOrUser() {
        // 点击了 @ 的用户名
        headerView.didSelectHeaderUserID = { [weak self] in
            let userDetailVC = UserDetailViewController()
            userDetailVC.userId = $0
            self!.navigationController?.pushViewController(userDetailVC, animated: true)
        }
        // 点击了 话题
        headerView.didSelectHeaderTopicID = { (uid) in
            
        }
        // 点击了 cell
        headerView.didSelectCellWithDongtai = { [weak self] in
            let dongtaiDetailVC = DongtaiDetailViewController()
            dongtaiDetailVC.dongtai = $0
            self!.navigationController?.pushViewController(dongtaiDetailVC, animated: true)
        }
    }
    
    // bottomView 底部按钮的点击
    func bottomView(clicked button: UIButton, bottomTab: BottomTab) {
        let bottomPushVC = UserDetailBottomPushController()
        bottomPushVC.navigationItem.title = "网页浏览"
        if bottomTab.children.count == 0 { // 直接跳转到下一控制器
            bottomPushVC.url = bottomTab.value
            navigationController?.pushViewController(bottomPushVC, animated: true)
        } else { // 弹出 子视图
            // 创建 Storyboard
            let sb = UIStoryboard(name: "\(UserDetailBottomPopController.self)", bundle: nil)
            // 创建 UserDetailBottomPopController
            let popoverVC = sb.instantiateViewController(withIdentifier: "\(UserDetailBottomPopController.self)") as! UserDetailBottomPopController
            popoverVC.children = bottomTab.children
            popoverVC.modalPresentationStyle = .custom
            popoverVC.didSelectedChild = { [weak self] in
                bottomPushVC.url = $0.value
                self!.navigationController?.pushViewController(bottomPushVC, animated: true)
            }
            let popoverAnimator = PopoverAnimator()
            // 转化 frame
            let rect = myBottomView.convert(button.frame, to: view)
            let popWidth = (screenWidth - CGFloat(userDetail!.bottom_tab.count + 1) * 20) / CGFloat(userDetail!.bottom_tab.count)
            let popX = CGFloat(button.tag) * (popWidth + 20) + 20
            let popHeight = CGFloat(bottomTab.children.count) * 40 + 25
            popoverAnimator.presetnFrame = CGRect(x: popX, y: rect.origin.y - popHeight, width: popWidth, height: popHeight)
            popoverVC.transitioningDelegate = popoverAnimator
            present(popoverVC, animated: true, completion: nil)
        }
    }
}

extension UserDetailViewController {
    /// 设置 UI
    private func setupUI() {
        view.theme_backgroundColor = "colors.cellBackgroundColor"
        bottomView.theme_backgroundColor = "colors.cellBackgroundColor"
        // 设置约束，避免 bottomView 顶到边界
        bottomViewBottom.constant = isIPhoneX ? 34 : 0
        view.layoutIfNeeded()
        scrollView.delegate = self
        view.addSubview(navigationBar)
        navigationBar.goBackButtonClicked = { [weak self] in
            self!.navigationController?.popViewController(animated: true)
        }
        /// 获取用户详情数据  张雪峰 53271122458 马未都 51025535398
        userId = 8   // 这里可以注释掉，那么就会是不同的 userId 了
        NetworkTool.loadUserDetail(userId: userId) { (userDetail) in
            // 获取用户详情的动态列表数据
            NetworkTool.loadUserDetailDongtaiList(userId: self.userId, maxCursor: 0, completionHandler: { (cursor, dongtais) in
                self.scrollView.addSubview(self.headerView)
                if userDetail.bottom_tab.count == 0 {
                    self.headerView.height = 979 - 34
                    self.bottomViewHeight.constant = 0
                    self.bottomViewBottom.constant = 0
                    self.view.layoutIfNeeded()
                } else {
                    self.headerView.height = 969
                    // 赋值到 bottomView 上
                    self.bottomView.addSubview(self.myBottomView)
                    self.myBottomView.bottomTabs = userDetail.bottom_tab
                }
                self.userDetail = userDetail
                self.headerView.userDetail = userDetail
                self.headerView.maxCursor = cursor
                self.navigationBar.userDetail = userDetail
                self.headerView.dongtais = dongtais
                self.headerView.currentTopTabType = .dongtai
                self.scrollView.contentSize = CGSize(width: screenWidth, height: self.headerView.height)
                self.headerView.didSelectAvatarImageView = { [weak self] in
                    let previewUserAvatarVC = PreviewUserAvatarController()
                    previewUserAvatarVC.avatar_url = userDetail.big_avatar_url
                    previewUserAvatarVC.avatarRect = self!.headerView.baseView.convert(self!.headerView.avatarImageView.frame, to: self!.view)
                    self!.present(previewUserAvatarVC, animated: false, completion: nil)
                }
            })
        }
    }
}
