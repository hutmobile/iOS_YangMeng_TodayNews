//
//  UserDetailBottomPopController.swift
//  News
//
//  Created by 杨蒙 on 2017/12/1.
//  Copyright © 2017年 hrscy. All rights reserved.
//

import UIKit

class UserDetailBottomPopController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var children = [BottomTabChildren]()
    
    @IBOutlet weak var tableView: UITableView!
    /// 点击了一个 bottomTab
    var didSelectedChild: ((BottomTabChildren)->())?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "\(UITableViewCell.self)")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return children.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "\(UITableViewCell.self)", for: indexPath)
        cell.selectionStyle = .none
        let child = children[indexPath.row]
        cell.textLabel?.text = child.name
        cell.textLabel?.textAlignment = .center
        cell.textLabel?.font = UIFont.systemFont(ofSize: 13)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: MyPresentationControllerDismiss), object: nil)
        didSelectedChild?(children[indexPath.row])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
