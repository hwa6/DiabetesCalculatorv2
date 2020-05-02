//  UITextViewHelper.swift
//  Layout Helper
//
//  Created by Kuldeep Tanwar on 4/15/19.
//  Copyright © 2019 Kuldeep Tanwar. All rights reserved.
//  I, Henry Anderson have permission to use Layout Helper from the below statement
//  MIT License
//  Copyright (c) 2019 Wabbit
//  Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
//  The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
//This statement only applies to the Device Helper, NSLayoutHelper, UIButtonHelper, UILabelHelper, and UITextViewHelper classes, all other contents, classes, etc in this application are the copyright property of Henry Anderson
import UIKit

@IBDesignable class UITextViewHelper : UITextView {
    @IBInspectable var iPhone4s: CGFloat = 0.0 {
        didSet { deviceFont(.i3_5Inch,value:iPhone4s) }
    }
    @IBInspectable var iPhoneSE: CGFloat = 0.0 {
        didSet { deviceFont(.i4Inch,value:iPhoneSE) }
    }
    @IBInspectable var iPhone8: CGFloat = 0.0 {
        didSet { deviceFont(.i4_7Inch,value:iPhone8) }
    }
    @IBInspectable var iPhone8Plus: CGFloat = 0.0 {
        didSet { deviceFont(.i5_5Inch,value:iPhone8Plus) }
    }
    @IBInspectable var iPhone11Pro: CGFloat = 0.0 {
        didSet { deviceFont(.i5_8Inch,value:iPhone11Pro) }
    }
    @IBInspectable var iPhone11: CGFloat = 0.0 {
        didSet { deviceFont(.i6_1Inch,value:iPhone11) }
    }
    @IBInspectable var iPhone11Max: CGFloat = 0.0 {
        didSet { deviceFont(.i6_5Inch,value:iPhone11Max) }
    }
    @IBInspectable var iPadMini: CGFloat = 0.0 {
        didSet { deviceFont(.i7_9Inch,value:iPadMini) }
    }
    @IBInspectable var iPadPro9_7: CGFloat = 0.0 {
        didSet { deviceFont(.i9_7Inch,value:iPadPro9_7) }
    }
    @IBInspectable var iPadPro10_5: CGFloat = 0.0 {
        didSet { deviceFont(.i10_5Inch,value:iPadPro10_5) }
    }
    @IBInspectable var iPadPro12_9: CGFloat = 0.0 {
        didSet { deviceFont(.i12_9Inch,value:iPadPro12_9) }
    }
    // Helpers
    open func deviceFont(_ device:UIDeviceSize,value:CGFloat) {
        if deviceSize == device {
            if let font = font {
                self.font = UIFont(descriptor: font.fontDescriptor, size: value)
                layoutIfNeeded()
            }
        }
    }
}
