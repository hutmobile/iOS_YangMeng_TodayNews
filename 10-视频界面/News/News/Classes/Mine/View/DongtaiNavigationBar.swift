//
//  DongtaiNavigationBar.swift
//  News
//
//  Created by 杨蒙 on 2017/12/23.
//  Copyright © 2017年 hrscy. All rights reserved.
//

import UIKit
import IBAnimatable
import Kingfisher

class DongtaiNavigationBar: UIView, NibLoadable {

    var user = DongtaiUser() {
        didSet {
            avatarButton.kf.setImage(with: URL(string: user.avatar_url)!, for: .normal)
            nameButton.setTitle(user.screen_name, for: .normal)
            followersButton.setTitle(user.followersCount! + "粉丝", for: .normal)
        }
    }
    
    /// 头像
    @IBOutlet weak var avatarButton: AnimatableButton!
    ///  v 图标
    @IBOutlet weak var vImageView: UIImageView!
    /// 用户名
    @IBOutlet weak var nameButton: UIButton!
    /// 粉丝数量
    @IBOutlet weak var followersButton: UIButton!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        nameButton.theme_setTitleColor("colors.black", forState: .normal)
        followersButton.theme_setTitleColor("colors.black", forState: .normal)
    }
    
    /// 固有的大小
    override var intrinsicContentSize: CGSize {
        return UILayoutFittingExpandedSize
    }
    
    @IBAction func buttonClicked() {
        
    }
    
}
