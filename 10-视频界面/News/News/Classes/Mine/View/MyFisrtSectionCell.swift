//
//  MyFisrtSectionCell.swift
//  News
//
//  Created by 杨蒙 on 2017/9/16.
//  Copyright © 2017年 hrscy. All rights reserved.
//

import UIKit

class MyFisrtSectionCell: UITableViewCell, RegisterCellFromNib {
    /// 点击了第几个 cell
    var myConcernSelected: ((_ myConcern: MyConcern)->())?
    /// 标题
    @IBOutlet weak var leftLabel: UILabel!
    /// 副标题
    @IBOutlet weak var rightLabel: UILabel!
    /// 右边箭头
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBOutlet weak var topView: UIView!
    /// 分割线
    @IBOutlet weak var separatorView: UIView!
    
    var myConcerns = [MyConcern]() {
        didSet {
            collectionView.reloadData()
        }
    }
    
    var myCellModel = MyCellModel() {
        didSet {
            leftLabel.text = myCellModel.text
            rightLabel.text = myCellModel.grey_text
        }
    }
    
    /// 当只关注一个用户的时候，需要设置
    var myConcern = MyConcern() {
        didSet {
            
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        collectionView.collectionViewLayout = MyConcernFlowLayout()
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.ym_registerCell(cell: MyConcernCell.self)
        /// 设置主题
        leftLabel.theme_textColor = "colors.black"
        rightLabel.theme_textColor = "colors.cellRightTextColor"
        rightImageView.theme_image = "images.cellRightArrow"
        separatorView.theme_backgroundColor = "colors.separatorViewColor"
        theme_backgroundColor = "colors.cellBackgroundColor"
        topView.theme_backgroundColor = "colors.cellBackgroundColor"
        collectionView.theme_backgroundColor = "colors.cellBackgroundColor"
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}

extension MyFisrtSectionCell: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return myConcerns.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.ym_dequeueReusableCell(indexPath: indexPath) as MyConcernCell
        cell.myConcern = myConcerns[indexPath.item]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        myConcernSelected?(myConcerns[indexPath.item])
    }
    
}

class MyConcernFlowLayout: UICollectionViewFlowLayout {
    
    override func prepare() {
        // 每个 cell 的大小
        itemSize = CGSize(width: 58, height: 74)
        // 间距
        minimumLineSpacing = 0
        minimumInteritemSpacing = 0
        // cell 上下左右的间距
        sectionInset = UIEdgeInsetsMake(0, 0, 0, 0)
        // 设置水平滚动
        scrollDirection = .horizontal
    }
}

