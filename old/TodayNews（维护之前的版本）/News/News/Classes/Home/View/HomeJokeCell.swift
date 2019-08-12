//
//  HomeJokeCell.swift
//  News
//
//  Created by 杨蒙 on 2018/1/23.
//  Copyright © 2018年 hrscy. All rights reserved.
//

import UIKit
import Kingfisher

class HomeJokeCell: UITableViewCell, RegisterCellFromNib {
    
    var isJoke = false {
        didSet { girlImageView.isHidden = isJoke }
    }
    
    var joke = NewsModel() {
        didSet {
            jokeLabel.text = joke.content
            commentButton.setTitle((joke.comment_count == 0 ? "评论" : joke.commentCount), for: .normal)
            likeButton.setTitle(joke.diggCount, for: .normal)
            dislikeButton.setTitle(joke.buryCount, for: .normal)
            if joke.large_image.url.length != 0 {
                girlImageView.kf.setImage(with: URL(string: joke.large_image.urlString)!)
            }
        }
    }
    
    @IBOutlet weak var girlImageView: UIImageView!
    
    @IBOutlet weak var jokeLabel: UILabel!
    
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var dislikeButton: UIButton!
    @IBOutlet weak var commentButton: UIButton!
    @IBOutlet weak var starButton: UIButton!
    @IBOutlet weak var shareButton: UIButton!

    override func awakeFromNib() {
        super.awakeFromNib()
        starButton.theme_setImage("images.love_video_20x20_", forState: .normal)
        starButton.theme_setImage("images.love_video_press_20x20_", forState: .selected)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
}
