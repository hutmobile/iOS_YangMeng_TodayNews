//
//  DongtaiOriginThreadView.swift
//  News
//
//  Created by 杨蒙 on 2017/12/10.
//  Copyright © 2017年 hrscy. All rights reserved.
//

import UIKit

class DongtaiOriginThreadView: UIView, NibLoadable {
    
    let emojiManager = EmojiManager()
    
    var isPostSmallVideo = false
    
    var originthread = DongtaiOriginThread() {
        didSet {
            contentLabelHeight.constant = originthread.contentH!
            contentLabel.attributedText = originthread.attributedContent!
            collectionView.isDongtaiDetail = originthread.isDongtaiDetail
            collectionView.thumbImageList = originthread.thumb_image_list
            collectionView.largeImageList = originthread.large_image_list
            collectionViewWidth.constant = originthread.collectionViewW!
            layoutIfNeeded()
        }
    }
    
    @IBOutlet weak var contentLabel: UILabel!
    @IBOutlet weak var contentLabelHeight: NSLayoutConstraint!
    
    @IBOutlet weak var collectionView: DongtaiCollectionView!
    
    @IBOutlet weak var collectionViewWidth: NSLayoutConstraint!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        theme_backgroundColor = "colors.grayColor247"
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        height = originthread.height!
        width = screenWidth
    }
    
}

