//
//  BottomButton.swift
//  News
//
//  Created by 杨蒙 on 2018/1/9.
//  Copyright © 2018年 hrscy. All rights reserved.
//

import UIKit

class BottomButton: UIButton {

    override func layoutSubviews() {
        super.layoutSubviews()
        imageView?.frame = CGRect(x: 15, y: 9, width: 22, height: 22)
    }

}
