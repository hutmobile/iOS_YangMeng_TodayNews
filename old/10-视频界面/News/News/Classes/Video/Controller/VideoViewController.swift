//
//  VideoViewController.swift
//  News
//
//  Created by 杨蒙 on 2017/9/6.
//  Copyright © 2017年 hrscy. All rights reserved.
//

import UIKit
import SGPagingView

class VideoViewController: UIViewController {
    /// 标题和内容
    var pageTitleView: SGPageTitleView?
    var pageContentView: SGPageContentView?
    
    private lazy var navigationBar = HomeNavigationView.loadViewFromNib()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // 设置状态栏属性
        navigationController?.navigationBar.barStyle = .black
        if UserDefaults.standard.bool(forKey: isNight) {
            navigationController?.navigationBar.setBackgroundImage(UIImage(named: "navigation_background_night"), for: .default)
        } else {
            navigationController?.navigationBar.setBackgroundImage(UIImage(named: "navigation_background"), for: .default)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 设置 UI
        setupUI()
        // 点击事件
        clickAction()
    }
}

// MARK: - 导航栏按钮点击
extension VideoViewController {
    
    /// 设置 UI
    private func setupUI() {
        view.theme_backgroundColor = "colors.cellBackgroundColor"
        // 设置自定义导航栏
        navigationItem.titleView = navigationBar
        // 视频顶部新闻标题的数据
        NetworkTool.loadVideoApiCategoies {
            let configuration = SGPageTitleViewConfigure()
            configuration.titleColor = .black
            configuration.titleSelectedColor = .globalRedColor()
            configuration.indicatorColor = .clear
            // 标题名称的数组
            self.pageTitleView = SGPageTitleView(frame: CGRect(x: 0, y: 0, width: screenWidth, height: newsTitleHeight), delegate: self, titleNames: $0.flatMap({ $0.name }), configure: configuration)
            self.pageTitleView!.backgroundColor = .clear
            self.view.addSubview(self.pageTitleView!)
            // 设置子控制器
            _ = $0.flatMap({ (newsTitle) -> () in
                let videoTableVC = VideoTableViewController()
                videoTableVC.newsTitle = newsTitle
                self.addChildViewController(videoTableVC)
            })
            // 内容视图
            self.pageContentView = SGPageContentView(frame: CGRect(x: 0, y: newsTitleHeight, width: screenWidth, height: self.view.height - newsTitleHeight), parentVC: self, childVCs: self.childViewControllers)
            self.pageContentView!.delegatePageContentView = self
            self.view.addSubview(self.pageContentView!)
        }
    }
    
    /// 点击事件
    private func clickAction() {
        // 搜索按钮点击
        navigationBar.didSelectedSearchButton = {
            
        }
        // 头像按钮点击
        navigationBar.didSelectedAvatarButton = { [weak self] in
            self!.navigationController?.pushViewController(MineViewController(), animated: true)
        }
    }
    
}

// MARK: - SGPageTitleViewDelegate
extension VideoViewController: SGPageTitleViewDelegate, SGPageContentViewDelegate {
    /// 联动 pageContent 的方法
    func pageTitleView(_ pageTitleView: SGPageTitleView!, selectedIndex: Int) {
        self.pageContentView!.setPageCententViewCurrentIndex(selectedIndex)
    }
    
    /// 联动 SGPageTitleView 的方法
    func pageContentView(_ pageContentView: SGPageContentView!, progress: CGFloat, originalIndex: Int, targetIndex: Int) {
        self.pageTitleView!.setPageTitleViewWithProgress(progress, originalIndex: originalIndex, targetIndex: targetIndex)
    }
}
