//
//  MyPresentationController.swift
//  News
//
//  Created by 杨蒙 on 2017/12/1.
//  Copyright © 2017年 hrscy. All rights reserved.
//

import UIKit

class MyPresentationController: UIPresentationController {
    
    var presentFrame: CGRect?
    
    override init(presentedViewController: UIViewController, presenting presentingViewController: UIViewController?) {
        super.init(presentedViewController: presentedViewController, presenting: presentingViewController)
        NotificationCenter.default.addObserver(self, selector: #selector(dismissPresentedViewController), name: NSNotification.Name(rawValue: MyPresentationControllerDismiss), object: nil)
    }
    
    /// 即将布局转场子视图时调用
    override func containerViewWillLayoutSubviews() {
        /// 修改弹出视图的大小
        presentedView?.frame = presentFrame!
        
        let coverView = UIView(frame: UIScreen.main.bounds)
        coverView.backgroundColor = .clear
        let tap = UITapGestureRecognizer(target: self, action: #selector(dismissPresentedViewController))
        coverView.addGestureRecognizer(tap)
        // 在容器视图上添加一个蒙版，插入到展现的视图下面
        containerView?.insertSubview(coverView, at: 0)
    }
    
    /// 移除弹出的控制器
    @objc func dismissPresentedViewController() {
        presentedViewController.dismiss(animated: false, completion: nil)
    }
    
}
