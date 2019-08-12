//
//  TeMaiViewController.swift
//  News
//
//  Created by 杨蒙 on 2018/2/6.
//  Copyright © 2018年 hrscy. All rights reserved.
//

import UIKit
import WebKit

class TeMaiViewController: UIViewController {

    var url = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let webView = WKWebView(frame: view.bounds, configuration: WKWebViewConfiguration())
        webView.load(URLRequest(url: URL(string: url)!))
        view.addSubview(webView)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
