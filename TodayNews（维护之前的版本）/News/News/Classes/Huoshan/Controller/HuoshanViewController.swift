//
//  HuoshanViewController.swift
//  News
//
//  Created by 杨蒙 on 2018/1/14.
//  Copyright © 2017年 hrscy. All rights reserved.
//

import UIKit
import SGPagingView

class HuoshanViewController: UIViewController {
    
    var pageContentView: SGPageContentView?
    /// 懒加载 导航栏
    private lazy var navigationBar = HuoshanNavigationBar()

    override func viewDidLoad() {
        super.viewDidLoad()
        // 设置 UI
        setupUI()
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
}

extension HuoshanViewController {
    /// 设置 UI
    private func setupUI() {
        view.theme_backgroundColor = "colors.cellBackgroundColor"
        navigationItem.titleView = navigationBar
        // 判断是否是夜间
        MyThemeStyle.setupNavigationBarStyle(self, UserDefaults.standard.bool(forKey: isNight))
        // 添加通知
        NotificationCenter.default.addObserver(self, selector: #selector(receiveDayOrNightButtonClicked), name: NSNotification.Name(rawValue: "dayOrNightButtonClicked"), object: nil)
        // 小视频导航栏标题的数据
        NetworkTool.loadSmallVideoCategories {
            self.navigationBar.titleNames = $0.compactMap({ $0.name })
            // 设置子控制器
            _ = $0.compactMap({ (newsTitle) -> () in
                let categoryVC = HuoshanCategoryController()
                categoryVC.newsTitle = newsTitle
                self.addChildViewController(categoryVC)
            })
            self.pageContentView = SGPageContentView(frame: self.view.bounds, parentVC: self, childVCs: self.childViewControllers)
            self.pageContentView!.delegatePageContentView = self
            self.view.addSubview(self.pageContentView!)
        }
        
        // 点击了 标题
        navigationBar.pageTitleViewSelected = { [weak self] in
            self!.pageContentView!.setPageContentViewCurrentIndex($0)
        }
    }
    
    /// 接收到了按钮点击的通知
    @objc func receiveDayOrNightButtonClicked(notification: Notification) {
        // 判断是否是夜间
        MyThemeStyle.setupNavigationBarStyle(self, UserDefaults.standard.bool(forKey: isNight))
    }
}

// MARK: - SGPageContentViewDelegate
extension HuoshanViewController: SGPageContentViewDelegate {
    /// 联动 SGPageTitleView 的方法
    func pageContentView(_ pageContentView: SGPageContentView!, progress: CGFloat, originalIndex: Int, targetIndex: Int) {
        self.navigationBar.pageTitleView!.setPageTitleViewWithProgress(progress, originalIndex: originalIndex, targetIndex: targetIndex)
    }
}
