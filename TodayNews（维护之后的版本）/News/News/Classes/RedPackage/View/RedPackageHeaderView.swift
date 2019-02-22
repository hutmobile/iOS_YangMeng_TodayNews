//
//  RedPackageHeaderView.swift
//  News
//
//  Created by 杨蒙 on 2018/2/6.
//  Copyright © 2018年 hrscy. All rights reserved.
//

import UIKit
import Lottie

class RedPackageHeaderView: UIView {
    // 提醒
    lazy var remindButton: UIButton = {
        let remindButton = UIButton()
        remindButton.setImage(UIImage(named: "sf_main_newpreheat_push_icon"), for: .normal)
        remindButton.setTitle("活动开始提醒我", for: .normal)
        remindButton.sizeToFit()
        remindButton.centerX = centerX
        remindButton.y = 160
        remindButton.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        remindButton.layer.borderColor = UIColor(r: 245, g: 90, b: 93).cgColor
        remindButton.layer.borderWidth = 1
        remindButton.height = 30
        remindButton.layer.cornerRadius = 15
        remindButton.setTitleColor(UIColor(r: 245, g: 90, b: 93), for: .normal)
        return remindButton
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        // 动画
        let headWhiteAnimation = LOTAnimationView(name: "activity_main_head_white")
        headWhiteAnimation.contentMode = .scaleAspectFill
        headWhiteAnimation.frame = CGRect(x: 0, y: 0, width: screenWidth, height: 150)
        addSubview(headWhiteAnimation)
        headWhiteAnimation.play()
        headWhiteAnimation.loopAnimation = true
        // 提醒
        addSubview(remindButton)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
