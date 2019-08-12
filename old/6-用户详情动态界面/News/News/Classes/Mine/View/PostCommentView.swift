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
    
    @IBOutlet weak var bottomViewBottom: NSLayoutConstraint!
    /// 转发按钮
    @IBOutlet weak var forwardButton: UIButton!
    /// @ 按钮
    @IBOutlet weak var atButton: UIButton!
    /// emoji按钮
    @IBOutlet weak var emojiButton: UIButton!
    /// 发布按钮
    @IBOutlet weak var postButton: UIButton!
    /// 背景 view
    @IBOutlet weak var textViewBackgroundView: AnimatableView!
    /// textView
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var textViewHeight: NSLayoutConstraint!
    
    /// 占位符
    @IBOutlet weak var placeholderLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        textView.becomeFirstResponder()
        forwardButton.isSelected = true
        textViewBackgroundView.theme_backgroundColor = "colors.grayColor240"
        forwardButton.theme_setImage("images.loginReadButton", forState: .normal)
        forwardButton.theme_setImage("images.loginReadButtonSelected", forState: .selected)
        atButton.theme_setImage("images.toolbar_icon_at_24x24_", forState: .normal)
        emojiButton.theme_setImage("images.toolbar_icon_emoji_24x24_", forState: .normal)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: NSNotification.Name.UIKeyboardWillShow, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: NSNotification.Name.UIKeyboardWillHide, object: nil)
    }
    
    /// 键盘将要弹起
    @objc func keyboardWillShow(notification: Notification) {
        let frame = notification.userInfo![UIKeyboardFrameEndUserInfoKey] as! CGRect
        let duration = notification.userInfo![UIKeyboardAnimationDurationUserInfoKey] as! TimeInterval
        // iPhoneX 键盘高度是 291 如果有输入预测高度 42，高度变为 333 ,其他手机的键盘高度是 216
        UIView.animate(withDuration: duration) {
            self.bottomViewBottom.constant = frame.size.height - (isIPhoneX ? 57 : 0)
            self.layoutIfNeeded()
        }
    }
    
    /// 键盘将要隐藏
    @objc func keyboardWillHide(notification: Notification) {
        let duration = notification.userInfo![UIKeyboardAnimationDurationUserInfoKey] as! TimeInterval
        UIView.animate(withDuration: duration, animations: {
            self.bottomViewBottom.constant = 0
            self.layoutIfNeeded()
        }) { (_) in
            self.removeFromSuperview()
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        endEditing(true)
        removeFromSuperview()
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    @IBAction func forwardButtonClicked(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        
    }
    
}

extension PostCommentView: UITextViewDelegate {
    
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        setup(textView.text)
        return true
    }
    
    func textViewDidChange(_ textView: UITextView) {
        setup(textView.text)
    }
    
    /// 设置一些变化
    private func setup(_ text: String) {
        placeholderLabel.isHidden = text != ""
        postButton.setTitleColor((text != "") ? .blueFontColor() : .grayColor210(), for: .normal)
        let height = Calculate.textHeight(text: text, fontSize: 16, width: textView.width)
        textViewHeight.constant = height >= 80 ? 80 : height
        layoutIfNeeded()
    }
    
}
