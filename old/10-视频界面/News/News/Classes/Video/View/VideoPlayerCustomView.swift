//
//  VideoPlayerCustomView.swift
//  News
//
//  Created by 杨蒙 on 2018/1/18.
//  Copyright © 2018年 hrscy. All rights reserved.
//

import BMPlayer

class VideoPlayerCustomView: BMPlayerControlView {
    
    override func customizeUIComponents() {
        BMPlayerConf.topBarShowInCase = .none
        
    }
    
}
