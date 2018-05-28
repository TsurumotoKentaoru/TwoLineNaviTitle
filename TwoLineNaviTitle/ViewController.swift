//
//  ViewController.swift
//  TwoLineNaviTitle
//
//  Created by 鶴本賢太朗 on 2018/05/28.
//  Copyright © 2018年 Kentarou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let oneStr: String = "一行目\n"
        let twoStr: String = "二行目"
        let attributeString: NSMutableAttributedString = NSMutableAttributedString(string: oneStr + twoStr)

        // 一行目の設定
        attributeString.addAttribute(.foregroundColor, value: UIColor.orange, range: NSRange(location: 0, length: oneStr.count))
        
        // 二行目の設定
        attributeString.addAttribute(.foregroundColor, value: UIColor.blue, range: NSRange(location: oneStr.count, length: twoStr.count))
        
        let label: UILabel = UILabel()
        label.numberOfLines = 2
        label.attributedText = attributeString
        
        self.navigationItem.titleView = label
    }
}

