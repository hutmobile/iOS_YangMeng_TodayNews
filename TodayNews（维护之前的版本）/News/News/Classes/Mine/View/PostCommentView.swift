//
//  PostCommentView.swift
//  News
//
//  Created by 杨蒙 on 2018/1/4.
//  Copyright © 2018年 hrscy. All rights reserved.
//

import UIKit
import IBAnimatable

class PostCommentView: UIView, NibLoadable {

    private lazy var emojiManger = EmojiManager()
    
    @IBOutlet weak var pageControlView: UIView!
    
    private lazy var pageControl: UIPageControl = {
        let pageControl = UIPageControl()
        pageControl.theme_currentPageIndicatorTintColor = "colors.currentPageIndicatorTintColor"
        pageControl.theme_pageIndicatorTintColor = "colors.pageIndicatorTintColor"
        return pageControl
    }()
    
    @IBOutlet weak var emojiView: UIView!
    @IBOutlet weak var emojiViewBottom: NSLayoutConstraint!
    
    @IBOutlet weak var collectionView: UICollectionView!
    // 包括 emoji 按钮和 pageControl
    @IBOutlet weak var toolbarHeight: NSLayoutConstraint!
    @IBOutlet weak var emojiButtonHeight: NSLayoutConstraint!
    /// 占位符
    @IBOutlet weak var placeholderLabel: UILabel!
    /// 底部 view
    @IBOutlet weak var bottomView: UIView!
    /// 底部约束
    @IBOutlet weak var bottomViewBottom: NSLayoutConstraint!
    /// textView
    @IBOutlet weak var textView: UITextView!
    /// textView 的高度
    @IBOutlet weak var textViewHeight: NSLayoutConstraint!
    @IBOutlet weak var textViewBackgroundView: AnimatableView!
    /// 发布按钮
    @IBOutlet weak var postButton: UIButton!
    /// 同时转发
    @IBOutlet weak var forwardButton: UIButton!
    /// @ 按钮
    @IBOutlet weak var atButton: UIButton!
    /// emoji 按钮
    @IBOutlet weak var emojiButton: UIButton!
    /// emoji 按钮是否选中
    var isEmojiButtonSelected = false {
        didSet {
            if isEmojiButtonSelected {
                emojiButton.isSelected = isEmojiButtonSelected
                UIView.animate(withDuration: 0.25, animations: {
                    // 改变约束
                    self.changeConstraints()
                    self.bottomViewBottom.constant = emojiItemWidth * 3 + self.toolbarHeight.constant + self.emojiViewBottom.constant
                    self.layoutIfNeeded()
                })
                
                // 判断 pageControlView 的子控件(pageControl)是否为 0
                if pageControlView.subviews.count == 0 {
                    pageControl.numberOfPages = emojiManger.emojis.count / 21
                    pageControl.center = pageControlView.center
                    pageControlView.addSubview(pageControl)
                }
            } else {
                textView.becomeFirstResponder()
            }
        }
    }
    
    /// 改变约束
    private func changeConstraints() {
        self.emojiButtonHeight.constant = 44
        self.toolbarHeight.constant = self.emojiButtonHeight.constant + 20
        self.emojiViewBottom.constant = isIPhoneX ? 34 : 0
    }
    
    /// 重置约束
    private func resetConstraints() {
        self.emojiButtonHeight.constant = 0
        self.toolbarHeight.constant = 0
        self.bottomViewBottom.constant = 0
        self.emojiViewBottom.constant = 0
        layoutIfNeeded()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        endEditing(true)
        // 如果 emoji 按钮选中了
        if isEmojiButtonSelected {
            UIView.animate(withDuration: 0.25, animations: {
                // 重置约束
                self.resetConstraints()
            }, completion: { (_) in
                self.removeFromSuperview()
            })
        } else {
            removeFromSuperview()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        width = screenWidth
        height = screenHeight
        bottomView.theme_backgroundColor = "colors.cellBackgroundColor"
        textViewBackgroundView.theme_backgroundColor = "colors.grayColor240"
        forwardButton.theme_setImage("images.loginReadButtonSelected", forState: .normal)
        atButton.theme_setImage("images.toolbar_icon_at_24x24_", forState: .normal)
        emojiButton.theme_setImage("images.toolbar_icon_emoji_24x24_", forState: .normal)
        emojiButton.theme_setImage("images.toolbar_icon_keyboard_24x24_", forState: .selected)
        /// 添加通知
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: NSNotification.Name.UIKeyboardWillShow, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillBeHidden), name: NSNotification.Name.UIKeyboardWillHide, object: nil)
        collectionView.collectionViewLayout = EmojiLayout()
        collectionView.ym_registerCell(cell: EmojiCollectionCell.self)
    }
    /// 键盘将要弹起
    @objc private func keyboardWillShow(notification: Notification) {
        let frame = notification.userInfo![UIKeyboardFrameEndUserInfoKey] as! CGRect
        let duration = notification.userInfo![UIKeyboardAnimationDurationUserInfoKey] as! TimeInterval
        UIView.animate(withDuration: duration) {
            // 改变约束
            self.changeConstraints()
            self.bottomViewBottom.constant = frame.size.height
            self.layoutIfNeeded()
        }
    }
    
    /// 键盘将要隐藏
    @objc private func keyboardWillBeHidden(notification: Notification) {
        let duration = notification.userInfo![UIKeyboardAnimationDurationUserInfoKey] as! TimeInterval
        UIView.animate(withDuration: duration) {
            // 重置约束
            self.resetConstraints()
        }
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
}

// MARK: - 点击事件
extension PostCommentView {
    
    /// 发布按钮点击
    @IBAction func postButtonClicked(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
    }
    
    /// @ 按钮点击
    @IBAction func atButtonClicked(_ sender: UIButton) {
        
    }
    
    /// emoji 按钮点击
    @IBAction func emojiButtonClicked(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        if sender.isSelected { // 说明需要弹起的是表情
            textView.resignFirstResponder()
            isEmojiButtonSelected = true
        } else {  // 说明需要弹起的是键盘
            textView.becomeFirstResponder()
        }
    }
}

// MARK: - UITextViewDelegate
extension PostCommentView: UITextViewDelegate {
    
    func textViewDidChange(_ textView: UITextView) {
        placeholderLabel.isHidden = textView.text.count != 0
        postButton.setTitleColor((textView.text.count != 0) ? .blueFontColor() : .grayColor210(), for: .normal)
        let height = Calculate.attributedTextHeight(text: textView.attributedText, width: textView.width)
        if height <= 30 {
            textViewHeight.constant = 30
        } else if height >= 80 {
            textViewHeight.constant = 80
        } else {
            textViewHeight.constant = height
        }
        layoutIfNeeded()
    }
    
    func textViewShouldBeginEditing(_ textView: UITextView) -> Bool {
        // 当 textView 将要开始编辑的时候，设置 emoji 按钮不选中
        emojiButton.isSelected = false
        return true
    }
    
}

// MARK: - UICollectionViewDelegate, UICollectionViewDataSource
extension PostCommentView: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return emojiManger.emojis.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.ym_dequeueReusableCell(indexPath: indexPath) as EmojiCollectionCell
        cell.emoji = emojiManger.emojis[indexPath.item]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        textView.setAttributedText(emoji: emojiManger.emojis[indexPath.item])
        placeholderLabel.isHidden = textView.attributedText.length != 0
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let currentPage = scrollView.contentOffset.x / scrollView.width
        pageControl.currentPage = Int(currentPage + 0.5)
    }
}
