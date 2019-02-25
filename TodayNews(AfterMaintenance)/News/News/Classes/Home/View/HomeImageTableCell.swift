//
//  HomeImageTableCell.swift
//  News
//
//  Created by 杨蒙 on 2018/1/23.
//  Copyright © 2018年 hrscy. All rights reserved.
//

import UIKit
import Kingfisher

class HomeImageTableCell: UITableViewCell, RegisterCellFromNib {
    
    var homeImage = NewsModel() {
        didSet {
            if homeImage.gallary_image_count > 0 {
                imageCountLabel.text = "\(homeImage.gallary_image_count)图"
            }
            imageTitleLabel.text = homeImage.title
            timeLabel.text = homeImage.commentCount + "评论"
            if homeImage.media_info.user_id != 0 { usernameLabel.text = homeImage.media_info.name }
            if let firstImage = homeImage.image_list.first {
                bgImageView.kf.setImage(with: URL(string: firstImage.urlString)!)
            }
        }
    }
    
    @IBOutlet weak var bgImageView: UIImageView!
    @IBOutlet weak var imageCountLabel: UILabel!
    @IBOutlet weak var imageTitleLabel: UILabel!
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var filterButton: UIButton!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        imageTitleLabel.theme_textColor = "colors.black"
        usernameLabel.theme_textColor = "colors.grayColor200"
        timeLabel.theme_textColor = "colors.grayColor200"
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
