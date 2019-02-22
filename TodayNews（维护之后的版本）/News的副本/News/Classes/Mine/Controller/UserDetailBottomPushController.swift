//
//  UserDetailBottomPushController.swift
//  News
//
//  Created by 杨蒙 on 2017/12/1.
//  Copyright © 2017年 hrscy. All rights reserved.
//

import UIKit
import WebKit

class UserDetailBottomPushController: UIViewController {

    var url: String = ""
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let webView = WKWebView(frame: view.bounds)
        webView.load(URLRequest(url: URL(string: url)!))
        view.addSubview(webView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
