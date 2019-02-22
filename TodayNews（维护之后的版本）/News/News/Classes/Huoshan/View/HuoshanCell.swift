//
//  HuoshanCell.swift
//  News
//
//  Created by 杨蒙 on 2018/1/14.
//  Copyright © 2018年 hrscy. All rights reserved.
//

import UIKit
import Kingfisher

class HuoshanCell: UICollectionViewCell, RegisterCellFromNib {

    var smallVideo = NewsModel() {
        didSet {
            titleLabel.attributedText = smallVideo.raw_data.attrbutedText
            if let largeImage = smallVideo.raw_data.large_image_list.first {
                imageView.kf.setImage(with: URL(string: largeImage.urlString)!)
            } else if let firstImage = smallVideo.raw_data.first_frame_image_list.first {
                imageView.kf.setImage(with: URL(string: firstImage.urlString)!)
            }
            diggCountLabel.text = smallVideo.raw_data.action.diggCount + "赞"
            playCountButton.setTitle(smallVideo.raw_data.action.playCount + "次播放", for: .normal)
        }
    }
    
    /// 预览图
    @IBOutlet weak var imageView: UIImageView!
    /// 标题
    @IBOutlet weak var titleLabel: UILabel!
    /// 赞
    @IBOutlet weak var diggCountLabel: UILabel!
    /// 播放次数
    @IBOutlet weak var playCountButton: UIButton!
    /// 关闭按钮
    @IBOutlet weak var closeButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        theme_backgroundColor = "colors.cellBackgroundColor"
        titleLabel.theme_textColor = "colors.moreLoginTextColor"
        playCountButton.theme_setTitleColor("colors.moreLoginTextColor", forState: .normal)
        diggCountLabel.theme_textColor = "colors.moreLoginTextColor"
        playCountButton.theme_setImage("images.ugc_video_list_play_32x32_", forState: .normal)
        closeButton.theme_setImage("images.ImgPic_close_24x24_", forState: .normal)
    }
    
    /// 关闭按钮点击
    @IBAction func closeButton(_ sender: UIButton) {
        
    }
    
}
