//
//  NewYearActivityCell.swift
//  News
//
//  Created by 杨蒙 on 2018/2/5.
//  Copyright © 2018年 hrscy. All rights reserved.
//

import UIKit

class NewYearActivityCell: UITableViewCell, RegisterCellFromNib {

    var newYearActivity = NewYearActivity() {
        didSet {
            mainImageView.image = UIImage(named: newYearActivity.image)
            titleLabel.text = newYearActivity.title
        }
    }
    
    @IBOutlet weak var mainImageView: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
