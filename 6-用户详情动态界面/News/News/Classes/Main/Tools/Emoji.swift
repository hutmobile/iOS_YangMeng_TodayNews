//
//  Emoji.swift
//  News
//
//  Created by 杨蒙 on 2017/12/18.
//  Copyright © 2017年 hrscy. All rights reserved.
//

import Foundation
import HandyJSON

struct Emoji: HandyJSON {
    
    var id = ""
    
    var name = ""
    
    var png = ""
    
}

struct EmojiManager {
    /// emoji 数组
    var emojis = [Emoji]()
    
    init() {
        // 获取 emoji.plist 的路径
        let path = Bundle.main.path(forResource: "emoji.plist", ofType: nil)
        // 根据 plist 文件 读取数据
        let array = NSArray(contentsOfFile: path!) as! [[String: String]]
        // 字典转成模型
        emojis = array.flatMap { Emoji.deserialize(from: $0 as NSDictionary) }
    }
    
    /// 显示 emoji 表情
    func showEmoji(content: String, font: UIFont) -> NSMutableAttributedString {
        // 将 content 转成 attributedString
        let attributedString = NSMutableAttributedString(string: content)
        
//        let userPattern = "@.*?:"
//        
//        // 创建正则表达式对象，匹配 emji 表情
//        let userRegex = try! NSRegularExpression(pattern: userPattern, options: [])
//        // 开始匹配，返回结果
//        let userrResults = userRegex.matches(in: content, options: [], range: NSRange(location: 0, length: content.count))
//        
//        if userrResults.count != 0{
//            for result in userrResults {
//                // 取出用户名
//                let userName = (content as NSString).substring(with: result.range)
//                
//                let attributedUserName = NSMutableAttributedString(string: userName)
//                
//                attributedUserName.setAttributes([.foregroundColor: UIColor.blueFontColor()], range: NSRange(location: 0, length: attributedUserName.length))
//                attributedString.replaceCharacters(in: result.range, with: attributedUserName)
//            }
//        }
        
        // emoji 表情的正则表达式
        let emojiPattern = "\\[.*?\\]"
        // 创建正则表达式对象，匹配 emji 表情
        let regex = try! NSRegularExpression(pattern: emojiPattern, options: [])
        // 开始匹配，返回结果
        let results = regex.matches(in: content, options: [], range: NSRange(location: 0, length: content.count))
        
        if results.count != 0 {
            // 倒序遍历，从最后一个开始替换，如果说从第一个旧替换的话，字符串的长度就发生变化了
            for index in stride(from: results.count - 1, through: 0, by: -1) {
                // 取出结果的范围
                let result = results[index]
                // 取出 emoji 的名字
                let emojiName = (content as NSString).substring(with: result.range)
                let attachment = NSTextAttachment()
                // 取出对应的 emoji 模型
                guard let emoji = emojis.filter({ $0.name == emojiName }).first else { return attributedString}
                // 设置图片
                attachment.image = UIImage(named: emoji.png)
                attachment.bounds = CGRect(x: 0, y: -4, width: font.lineHeight, height: font.lineHeight)
                let attributedImageStr = NSAttributedString(attachment: attachment)
                // 将图片替换为文字
                attributedString.replaceCharacters(in: result.range, with: attributedImageStr)
            }
        }
        return attributedString
    }
    
}
