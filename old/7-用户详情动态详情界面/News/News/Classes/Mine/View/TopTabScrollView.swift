//
//  TopTabScrollView.swift
//  News
//
//  Created by 杨蒙 on 2018/1/3.
//  Copyright © 2018年 hrscy. All rights reserved.
//

import UIKit

class TopTabScrollView: UIScrollView {
    
    /// 当前的 topTab 类型
    var currentTopTab: ((_ topTab: TopTab, _ currentSelectedIndex: Int) -> ())?
    /// 当前选中的 topTab 的索引，点击了第几个
    var currentSelectedIndex = 0
    
    weak var privorButton = UIButton()
    
    var topTabs = [TopTab]() {
        didSet {
            // 添加按钮和 tableView
            for (index, topTab) in topTabs.enumerated() {
                // 添加按钮
                let button = UIButton(frame: CGRect(x: CGFloat(index) * topTabButtonWidth, y: 0, width: topTabButtonWidth, height: height))
                button.setTitle(topTab.show_name, for: .normal)
                button.tag = index
                button.titleLabel?.font = UIFont.systemFont(ofSize: 16)
                button.theme_setTitleColor("colors.black", forState: .normal)
                button.theme_setTitleColor("colors.globalRedColor", forState: .selected)
                button.addTarget(self, action: #selector(topTabButtonClicked), for: .touchUpInside)
                addSubview(button)
                if index == 0 {
                    button.isSelected = true
                    privorButton = button
                }
                if index == topTabs.count - 1 { contentSize = CGSize(width: button.frame.maxX, height: height) }
            }
            addSubview(indicatorView)
        }
    }
    
    /// topTab 指示条
    private lazy var indicatorView: UIView = {
        let indicatorView = UIView(frame: CGRect(x: (topTabButtonWidth - topTabindicatorWidth) * 0.5 , y: height - 2, width: topTabindicatorWidth, height: topTabindicatorHeight))
        indicatorView.theme_backgroundColor = "colors.globalRedColor"
        return indicatorView
    }()
    
    /// topTab 按钮点击事件
    @objc func topTabButtonClicked(button: UIButton) {
        privorButton?.isSelected = false
        button.isSelected = !button.isSelected
        UIView.animate(withDuration: 0.25, animations: {
            self.indicatorView.centerX = button.centerX
        }) { (_) in
            self.privorButton = button
        }
        // 获取索引
        currentSelectedIndex = button.tag
        // 取出 当前点击的 topTab, 赋值给 currentTopTabType
        currentTopTab?(topTabs[button.tag], currentSelectedIndex)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        theme_backgroundColor = "colors.cellBackgroundColor"
        let bottomLine = UIView(frame: CGRect(x: 0, y: 39, width: screenWidth, height: 1))
        bottomLine.theme_backgroundColor = "colors.grayColor230"
        addSubview(bottomLine)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
