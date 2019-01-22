//
//  JXSegmentedTitleItemModel.swift
//  JXSegmentedView
//
//  Created by jiaxin on 2018/12/26.
//  Copyright © 2018 jiaxin. All rights reserved.
//

import UIKit

open class JXSegmentedTitleItemModel: JXSegmentedBaseItemModel {
    open var title: String?
    open var titleColor: UIColor = .black
    open var titleCurrentColor: UIColor = .black
    open var titleSelectedColor: UIColor = .red
    open var titleFont: UIFont = UIFont.systemFont(ofSize: 15)
    open var titleSelectedFont: UIFont = UIFont.systemFont(ofSize: 15)
    open var isTitleZoomEnabled: Bool = false
    open var titleDefaultZoomScale: CGFloat = 1    //字号默认的缩放值
    open var titleCurrentZoomScale: CGFloat = 1    //字号当前的缩放值
    open var titleSelectedZoomScale: CGFloat = 1.2    //字号的最大缩放值
    open var isTitleStrokeWidthEnabled: Bool = false
    open var titleDefaultStrokeWidth: CGFloat = 0
    open var titleCurrentStrokeWidth: CGFloat = 0
    open var titleSelectedStrokeWidth: CGFloat = -2
    open var isTitleMaskEnabled: Bool = false
}
