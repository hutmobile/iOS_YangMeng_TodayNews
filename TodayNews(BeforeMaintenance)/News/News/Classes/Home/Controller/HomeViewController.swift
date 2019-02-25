//
//  HomeViewController.swift
//  News
//
//  Created by 杨蒙 on 2018/1/23.
//  Copyright © 2018年 hrscy. All rights reserved.
//

import UIKit
import SGPagingView
import RxSwift
import RxCocoa

class HomeViewController: UIViewController {
    /// 标题和内容
    private var pageTitleView: SGPageTitleView?
    private var pageContentView: SGPageContentView?
    /// 自定义导航栏
    private lazy var navigationBar = HomeNavigationView.loadViewFromNib()
    
    private lazy var disposeBag = DisposeBag()
    /// 添加频道按钮
    private lazy var addChannelButton: UIButton = {
        let addChannelButton = UIButton(frame: CGRect(x: screenWidth - newsTitleHeight, y: 0, width: newsTitleHeight, height: newsTitleHeight))
        addChannelButton.theme_setImage("images.add_channel_titlbar_thin_new_16x16_", forState: .normal)
        let separatorView = UIView(frame: CGRect(x: 0, y: newsTitleHeight - 1, width: newsTitleHeight, height: 1))
        separatorView.theme_backgroundColor = "colors.separatorViewColor"
        addChannelButton.addSubview(separatorView)
        return addChannelButton
    }()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        UIApplication.shared.keyWindow?.theme_backgroundColor = "colors.windowColor"
        // 设置状态栏属性
        navigationController?.navigationBar.barStyle = .black
        navigationController?.setNavigationBarHidden(false, animated: animated)
        navigationController?.navigationBar.setBackgroundImage(UIImage(named: "navigation_background" + (UserDefaults.standard.bool(forKey: isNight) ? "_night" : "")), for: .default)
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
extension HomeViewController {
    
    /// 设置 UI
    private func setupUI() {
        view.theme_backgroundColor = "colors.cellBackgroundColor"
        // 设置自定义导航栏
        navigationItem.titleView = navigationBar
        // 添加频道
        view.addSubview(addChannelButton)
        // 首页顶部新闻标题的数据
        NetworkTool.loadHomeNewsTitleData {
            // 向数据库中插入数据
            NewsTitleTable().insert($0)
            let configuration = SGPageTitleViewConfigure()
            configuration.titleColor = .black
            configuration.titleSelectedColor = .globalRedColor()
            configuration.indicatorColor = .clear
            // 标题名称的数组
            self.pageTitleView = SGPageTitleView(frame: CGRect(x: 0, y: 0, width: screenWidth - newsTitleHeight, height: newsTitleHeight), delegate: self, titleNames: $0.compactMap({ $0.name }), configure: configuration)
            self.pageTitleView!.backgroundColor = .clear
            self.view.addSubview(self.pageTitleView!)
            // 设置子控制器
            _ = $0.compactMap({ (newsTitle) -> () in
                switch newsTitle.category {
                case .video:            // 视频
                    let videoTableVC = VideoTableViewController()
                    videoTableVC.newsTitle = newsTitle
                    videoTableVC.setupRefresh(with: .video)
                    self.addChildViewController(videoTableVC)
                case .essayJoke:        // 段子
                    let essayJokeVC = HomeJokeViewController()
                    essayJokeVC.isJoke = true
                    essayJokeVC.setupRefresh(with: .essayJoke)
                    self.addChildViewController(essayJokeVC)
                case .imagePPMM:        // 街拍
                    let imagePPMMVC = HomeJokeViewController()
                    imagePPMMVC.isJoke = false
                    imagePPMMVC.setupRefresh(with: .imagePPMM)
                    self.addChildViewController(imagePPMMVC)
                case .imageFunny:        // 趣图
                    let imagePPMMVC = HomeJokeViewController()
                    imagePPMMVC.isJoke = false
                    imagePPMMVC.setupRefresh(with: .imageFunny)
                    self.addChildViewController(imagePPMMVC)
                case .photos:           // 图片,组图
                    let homeImageVC = HomeImageViewController()
                    homeImageVC.setupRefresh(with: .photos)
                    self.addChildViewController(homeImageVC)
                case .jinritemai:       // 特卖
                    let temaiVC = TeMaiViewController()
                    temaiVC.url = "https://m.maila88.com/mailaIndex?mailaAppKey=GDW5NMaKQNz81jtW2Yuw2P"
                    self.addChildViewController(temaiVC)
                default :
                    let homeTableVC = HomeRecommendController()
                    homeTableVC.setupRefresh(with: newsTitle.category)
                    self.addChildViewController(homeTableVC)
                }
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
        navigationBar.didSelectSearchButton = {
            
        }
        // 头像按钮点击
        navigationBar.didSelectAvatarButton = { [weak self] in
            self!.navigationController?.pushViewController(MineViewController(), animated: true)
        }
        // 相机按钮点击
        navigationBar.didSelectCameraButton = {
            
        }
        /// 添加频道点击
        addChannelButton.rx.controlEvent(.touchUpInside)
            .subscribe(onNext: { [weak self] in
                let homeAddCategoryVC = HomeAddCategoryController.loadStoryboard()
                homeAddCategoryVC.modalSize = (width: .full, height: .custom(size: Float(screenHeight - (isIPhoneX ? 44 : 20))))
                self!.present(homeAddCategoryVC, animated: true, completion: nil)
            })
            .disposed(by: disposeBag)
    }
    
}

// MARK: - SGPageTitleViewDelegate
extension HomeViewController: SGPageTitleViewDelegate, SGPageContentViewDelegate {
    /// 联动 pageContent 的方法
    func pageTitleView(_ pageTitleView: SGPageTitleView!, selectedIndex: Int) {
        self.pageContentView!.setPageContentViewCurrentIndex(selectedIndex)
    }
    
    /// 联动 SGPageTitleView 的方法
    func pageContentView(_ pageContentView: SGPageContentView!, progress: CGFloat, originalIndex: Int, targetIndex: Int) {
        self.pageTitleView!.setPageTitleViewWithProgress(progress, originalIndex: originalIndex, targetIndex: targetIndex)
    }
}
