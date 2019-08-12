//
//  HomeViewController.swift
//  News
//
//  Created by 杨蒙 on 2017/9/6.
//  Copyright © 2017年 hrscy. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    // 标题数据表
    fileprivate let newsTitleTable = NewsTitleTable()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        UIApplication.shared.keyWindow?.theme_backgroundColor = "colors.windowColor"
        // 设置状态栏属性
        navigationController?.navigationBar.barStyle = .black
        navigationController?.setNavigationBarHidden(false, animated: animated)
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
    }
    
    private lazy var navigationBar: HomeNavigationView = {
        let navigationBar = HomeNavigationView.loadViewFromNib()
        return navigationBar
    }()
}

// MARK: - 导航栏按钮点击
extension HomeViewController {
    
    /// 设置 UI
    private func setupUI() {
        view.theme_backgroundColor = "colors.cellBackgroundColor"
        // 设置自定义导航栏
        navigationItem.titleView = navigationBar
        // 搜索按钮点击
        navigationBar.didSelectedSearchButton = {
            
        }
        // 头像按钮点击
        navigationBar.didSelectedAvatarButton = { [weak self] in
            self!.navigationController?.pushViewController(MineViewController(), animated: true)
        }
        // 首页顶部新闻标题的数据
        NetworkTool.loadHomeNewsTitleData { (titles) in
            // 向数据库中插入数据
            self.newsTitleTable.insert(titles)
        }
    }
    
}
