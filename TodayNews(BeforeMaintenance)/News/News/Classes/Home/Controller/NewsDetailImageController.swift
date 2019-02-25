//
//  NewsDetailImageController.swift
//  TodayNews
//
//  Created by 杨蒙 on 2018/2/1.
//  Copyright © 2018年 hrscy. All rights reserved.
//

import UIKit
import Kingfisher
import SVProgressHUD
import Photos

class NewsDetailImageController: UIViewController, StoryboardLoadable {
    
    var hidden: Bool = false
    
    var images = [NewsDetailImage]()
    var abstracts = [String]()
    var currentIndex = 0
    
    var isSelectedFirstCell = false
    
    @IBOutlet weak var closeButton: UIButton!
    
    @IBOutlet weak var moreButton: UIButton!
    
    @IBOutlet weak var commentLabel: UILabel!
    @IBOutlet weak var commentLabelWidth: NSLayoutConstraint!
    
    @IBOutlet weak var collectionView: UICollectionView!
    /// 加 V
    @IBOutlet weak var vipImageView: UIImageView!
    
    @IBOutlet weak var avatarButton: UIButton!
    
    @IBOutlet weak var bottomView: UIView!
    
    @IBOutlet weak var abstractLabel: UILabel!
    @IBOutlet weak var abstractLabelHeight: NSLayoutConstraint!
    
    /// 收藏按钮
    @IBOutlet weak var collectButton: UIButton!
    
    var aNews = NewsModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
}

extension NewsDetailImageController {
    fileprivate func setupUI() {
        // 设置状态栏属性
        navigationController?.navigationBar.barStyle = .black
        SVProgressHUD.configuration()
        collectButton.setImage(UIImage(named: "icon_details_collect_press_24x24_"), for: .selected)
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: screenWidth, height: screenHeight)
        layout.minimumLineSpacing = 0
        layout.minimumInteritemSpacing = 0
        layout.scrollDirection = .horizontal
        collectionView.collectionViewLayout = layout
        collectionView.ym_registerCell(cell: NewsDetailImageCell.self)
        collectionView.delegate = self
        collectionView.dataSource = self
        if aNews.comment_count == 0 {
            commentLabel.isHidden = true
        } else {
            commentLabel.text = aNews.commentCount
            switch Int32(aNews.comment_count) {
            case 0...9:
                commentLabelWidth.constant = 20
            case 10...99:
                commentLabelWidth.constant = 23
            case 100...999:
                commentLabelWidth.constant = 28
            case 999..<INT_MAX:
                commentLabel.text = "999+"
                commentLabelWidth.constant = 36
            default:
                commentLabelWidth.constant = 20
            }
        }
        if isSelectedFirstCell { // 如果点击的第一个 cell 才去获取数据,其他情况数据从上一控制器传过来
            NetworkTool.loadNewsDetail(articleURL: aNews.article_url) { (images, abstracts) in
                self.images = images
                self.abstracts = abstracts
                self.collectionView.reloadData()
                self.setupAttributeString(index: 1) // 先设置好第一张图片的子标题
            }
        }
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
}

// MARK: - 按钮点击事件
extension NewsDetailImageController {
    
    /// 关闭按钮点击
    @IBAction func closeNewsDetailImageViewControllerButtonClciked(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    /// 头像按钮点击
    @IBAction func avatarButtonClciked(_ sender: UIButton) {
        
    }
    
    /// 更多按钮点击
    @IBAction func moreButonClicked(_ sender: UIButton) {
        
    }
    
    /// 写评论
    @IBAction func writeButtonClicked(_ sender: UIButton) {
        
    }
    
    /// 评论按钮点击
    @IBAction func commentButtonClicked(_ sender: UIButton) {
        let newDetailCommentVC = NewsDetailImageCommentController.loadStoryboard()
        newDetailCommentVC.aNews = aNews
        newDetailCommentVC.modalSize = (width: .full, height: .custom(size: Float(screenHeight - (isIPhoneX ? 44 : 20))))
        present(newDetailCommentVC, animated: true, completion: nil)
    }
    
    /// 收藏按钮点击
    @IBAction func collectButtonClicked(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        UIView.animate(withDuration: 0.15, animations: {
            sender.transform = CGAffineTransform(scaleX: 0, y: 0)
        }) { (_) in
            UIView.animate(withDuration: 0.15, animations: {
                sender.transform = CGAffineTransform.identity
            })
        }
    }
    
    /// 转发按钮点击
    @IBAction func forwardButtonClicked(_ sender: UIButton) {
        
    }
}

extension NewsDetailImageController: NewsDetailImageCellDelegate {
    
    /// 长按图片事件
    func imageViewLongPressGestureRecognizer() {
        // 暂时先用 actionSheet 吧
        let actionSheet = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        let shareImageAction = UIAlertAction(title: "分享此张图片", style: .default) { (_) in
            
        }
        let saveImageAction = UIAlertAction(title: "保存图片", style: .default) { (_) in
            let image = self.images[self.currentIndex]
            ImageDownloader.default.downloadImage(with: URL(string: image.url)!, progressBlock: { (receivedSize, totalSize) in
                // 获取当前进度
                let progress = Float(receivedSize) / Float(totalSize)
                SVProgressHUD.showProgress(progress)
            }) { (image, error, imageURL, data) in
                // 调用系统相册，保存到相册
                PHPhotoLibrary.shared().performChanges({
                    PHAssetChangeRequest.creationRequestForAsset(from: image!)
                }, completionHandler: { (success, error) in
                    SVProgressHUD.dismiss()
                    if success { SVProgressHUD.showSuccess(withStatus: "保存成功!") }
                })
            }
        }
        let cancelAction = UIAlertAction(title: "取消", style: .cancel, handler: nil)
        actionSheet.addAction(shareImageAction)
        actionSheet.addAction(saveImageAction)
        actionSheet.addAction(cancelAction)
        present(actionSheet, animated: true, completion: nil)
    }
}

extension NewsDetailImageController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.ym_dequeueReusableCell(indexPath: indexPath) as NewsDetailImageCell
        cell.delegate = self
        cell.index = indexPath.item + 1
        cell.count = images.count
        let image = images[indexPath.item]
        cell.imageView.kf.setImage(with: URL(string: image.url), placeholder: nil, options: nil, progressBlock: { (receivedSize, totalSize) in
            let progress = Float(receivedSize) / Float(totalSize)
            SVProgressHUD.showProgress(progress)
        }) { (image, error, cacheType, url) in
            SVProgressHUD.dismiss()
        }
        cell.abstract = abstracts[indexPath.item]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let cell = collectionView.ym_dequeueReusableCell(indexPath: indexPath) as NewsDetailImageCell
        if hidden {
            UIView.animate(withDuration: 0.3, animations: { // 隐藏
                // 设置透明度
                self.setup(cell, alpha: 1.0)
            }, completion: { (_) in
                self.hidden = false
                cell.isUserInteractionEnabled = true
            })
        } else {
            UIView.animate(withDuration: 0.3, animations: { // 显示
                // 设置透明度
                self.setup(cell, alpha: 0)
            }, completion: { (_) in
                self.hidden = true
                cell.isUserInteractionEnabled = true
            })
        }
    }
    
    /// 设置透明度
    private func setup(_ cell: NewsDetailImageCell, alpha: CGFloat) {
        cell.isUserInteractionEnabled = false
        self.closeButton.alpha = alpha
        self.moreButton.alpha = alpha
        self.bottomView.alpha = alpha
        self.avatarButton.alpha = alpha
        self.vipImageView.alpha = alpha
        self.abstractLabel.alpha = alpha
    }
    
    // 方式1 ，下面的代码可以和在 cell 中设置的 abstractLabel 对应来写，二者选一种
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        currentIndex = Int(scrollView.contentOffset.x / screenWidth) + 1
        setupAttributeString(index: currentIndex)
    }
    
    /// 设置子标题
    fileprivate func setupAttributeString(index: Int) {
        let abstract = abstracts[index - 1]
        
        let size = CGSize(width: screenWidth - 30, height: CGFloat(MAXFLOAT))
        let abstractHeight = abstract.boundingRect(with: size, options: .usesLineFragmentOrigin, attributes: [.font: UIFont.systemFont(ofSize: 18)], context: nil).size.height
        abstractLabelHeight.constant = abstractHeight + 5
        abstractLabel.layoutIfNeeded()
        
        let abstractAttributeString = NSAttributedString(string: abstract, attributes: [.font: UIFont.systemFont(ofSize: 17)])
        
        let countAttributeString = NSMutableAttributedString(string: "/\(abstracts.count) ", attributes: [.font: UIFont.systemFont(ofSize: 13)])
        countAttributeString.append(abstractAttributeString)
        
        let numberAttributeString = NSMutableAttributedString(string: String(index), attributes: [.font: UIFont.systemFont(ofSize: 17)])
        numberAttributeString.append(countAttributeString)
        
        abstractLabel.attributedText = numberAttributeString
    }
}
