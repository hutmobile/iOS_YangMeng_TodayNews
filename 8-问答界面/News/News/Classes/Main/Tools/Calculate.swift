//
//  Calculate.swift
//  News
//
//  Created by 杨蒙 on 2017/12/10.
//  Copyright © 2017年 hrscy. All rights reserved.
//

import UIKit

protocol Calculatable {
    // MARK: 计算宽度
    static func collectionViewWidth(_ count: Int) -> CGFloat
    // MARK: 计算高度
    static func collectionViewHeight(_ count: Int) -> CGFloat
    // MARK: 计算 collectionViewCell 的大小
    static func collectionViewCellSize(_ count: Int) -> CGSize
    // MARK: 计算富文本的高度
    static func attributedTextHeight(text: NSAttributedString, width: CGFloat) -> CGFloat
    // MARK: 计算文本的高度
    static func textHeight(text: String, fontSize: CGFloat, width: CGFloat) -> CGFloat
    // MARK: 计算文本的宽度
    static func textHieght(text: String, fontSize: CGFloat, height: CGFloat) -> CGFloat
    // MARK: 从文本内容中获取 uid 和 用户名
    static func richContents(from content: String, idPattern: String, titlePattern: String) -> [RichContent]
    // MARK: 计算详情里的 collectionViewCell 的大小
    static func detailCollectionViewCellSize(_ thumbImageList: [ThumbImageList]) -> CGSize
    // MARK: 计算详情里的高度
    static func detailCollectionViewHieght(_ thumbImageList: [ThumbImageList]) -> CGFloat
}

extension Calculatable {
    
    /// 计算高度
    static func detailCollectionViewHieght(_ thumbImageList: [ThumbImageList]) -> CGFloat {
        switch thumbImageList.count {
        case 1:
            let thumbImage = thumbImageList.first!
            return (screenWidth - 30) * thumbImage.height / thumbImage.width
        case 2:
            return (screenWidth - 35) * 0.5
        case 3:
            return image3Width + 5
        case 4:
            return (screenWidth - 3)
        case 5, 6:
            return (image3Width + 5) * 2
        case 7...9:
            return (image3Width + 5) * 3
        default:
            return 0
        }
    }
    
    /// 计算情里的 collectionViewCell 的大小
    static func detailCollectionViewCellSize(_ thumbImageList: [ThumbImageList]) -> CGSize {
        switch thumbImageList.count {
        case 1:
            let thumbImage = thumbImageList.first!
            let height = (screenWidth - 30) * thumbImage.height / thumbImage.width
            return CGSize(width: (screenWidth - 30), height: height)
        case 2, 4:
            let image2W = (screenWidth - 35) * 0.5
            return CGSize(width: image2W, height: image2W)
        case 3, 5...9:
            return CGSize(width: image3Width, height: image3Width)
        default:
            return .zero
        }
    }
    
    /// 从文本内容中获取 uid 和 用户名
    static func richContents(from content: String, idPattern: String, titlePattern: String) -> [RichContent] {
        // 富文本内容
        var richContents = [RichContent]()
        // 临时数组
        var temps = [RichContent]()
        // 创建正则表达式对象，匹配 id
        let uidRegex = try! NSRegularExpression(pattern: idPattern, options: [])
        // 开始匹配，返回结果
        let uidResults = uidRegex.matches(in: content, options: [], range: NSRange(location: 0, length: content.count))

        if uidResults.count != 0{
            // 取出用户名，放到临时数组
            temps = uidResults.map({
                let uid = (content as NSString).substring(with: $0.range)
                return RichContent(uid, "")
            })
        }
        // 创建正则表达式对象
        let userRegex = try! NSRegularExpression(pattern: titlePattern, options: [])
        // 开始匹配，返回结果
        let userResults = userRegex.matches(in: content, options: [], range: NSRange(location: 0, length: content.count))

        if userResults.count != 0 {
            for (index, result) in userResults.enumerated() {
                // 取出临时数组中的模型
                var richContent = temps[index]
                // 取出用户名
                richContent.name = (content as NSString).substring(with: result.range)
                richContents.append(richContent)
            }
        }
        return richContents
    }
    
    /// 计算宽度
    static func collectionViewWidth(_ count: Int) -> CGFloat {
        switch count {
        case 1, 2:
            return (image2Width + 5) * 2
        case 3, 5...9:
            return screenWidth - 30
        case 4:
            return (image3Width + 5) * 2
        default:
            return 0
        }
    }
    
    /// 计算高度
    static func collectionViewHeight(_ count: Int) -> CGFloat {
        switch count {
        case 1, 2:
            return image2Width
        case 3:
            return image3Width + 5
        case 4...6:
            return (image3Width + 5) * 2
        case 7...9:
            return (image3Width + 5) * 3
        default:
            return 0
        }
    }
    /// 计算 collectionViewCell 的大小
    static func collectionViewCellSize(_ count: Int) -> CGSize {
        switch count {
        case 1, 2:
            return CGSize(width: image2Width, height: image2Width)
        case 3...9:
            return CGSize(width: image3Width, height: image3Width)
        default:
            return .zero
        }
    }
    
    /// 计算富文本的高度
    static func attributedTextHeight(text: NSAttributedString, width: CGFloat) -> CGFloat {
        return text.boundingRect(with: CGSize(width: width, height: CGFloat(MAXFLOAT)), options: .usesLineFragmentOrigin, context: nil).size.height + 5.0
    }
    
    /// 计算文本的高度
    static func textHeight(text: String, fontSize: CGFloat, width: CGFloat) -> CGFloat {
        return text.boundingRect(with: CGSize(width: width, height: CGFloat(MAXFLOAT)), options: .usesLineFragmentOrigin, attributes: [.font: UIFont.systemFont(ofSize: fontSize)], context: nil).size.height + 5
    }
    
    /// 计算文本的宽度
    static func textHieght(text: String, fontSize: CGFloat, height: CGFloat) -> CGFloat {
        return text.boundingRect(with: CGSize(width: CGFloat(MAXFLOAT), height: height), options: .usesLineFragmentOrigin, attributes: [.font: UIFont.systemFont(ofSize: fontSize)], context: nil).size.height
    }
}

struct Calculate: Calculatable {}
