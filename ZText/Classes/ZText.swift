//
//  ZText.swift
//  Pods
//
//  Created by Thuong Nguyen on 5/21/16.
//
//

import UIKit

open class ZText {
    
    // MARK: - Global attributes
    // Fonts and colors
    open static var generalFont:              UIFont  = UIFont.systemFont(ofSize: 12)
    open static var boldFont:                 UIFont  = UIFont.boldSystemFont(ofSize: 12)
    open static var italicFont:               UIFont  = UIFont.italicSystemFont(ofSize: 12)
    open static var generalColor:             UIColor = UIColor.black
    open static var boldTextColor:            UIColor = UIColor.black
    open static var italicTextColor:          UIColor = UIColor.black
    open static var backgroundColor:          UIColor = UIColor.clear
    open static var boldBackgroundColor:      UIColor = UIColor.clear
    open static var italicBackgroundColor:    UIColor = UIColor.clear
    open static var defaultUnderlineStyle:    NSUnderlineStyle = NSUnderlineStyle.styleNone
    open static var defaultUnderlineColor:    UIColor = UIColor.black
    open static var defaultAlignment:         NSTextAlignment = NSTextAlignment.left
    
    // MARK: - Local attributes
    var attrString : NSMutableAttributedString
    
    // MARK: - Static initialize
    open class func begin() -> ZText {
        return ZText()
    }
    
    // MARK: - Local methods
    init() {
        attrString = NSMutableAttributedString()
    }
    
    open func addText(_ text: String, color: UIColor?, background: UIColor?, font: UIFont?, underlineStyle: NSUnderlineStyle, underlineColor: UIColor?) -> ZText {
        let newString = NSMutableAttributedString(string: text, attributes: getAttributes(color, background: background, font: font, underlineStyle: underlineStyle, underlineColor: underlineColor))
        self.attrString.append(newString)
        return self
    }
    
    open func addText(_ text: String, color: UIColor?, background: UIColor?, font: UIFont?) -> ZText {
        return self.addText(text, color: color, background: background, font: font, underlineStyle: NSUnderlineStyle.styleNone, underlineColor: nil)
    }
    
    open func addText(_ text: String, color: UIColor?, font: UIFont?) -> ZText {
        return self.addText(text, color: color, background: nil, font: font)
    }
    
    open func addText(_ text: String, font: UIFont?) -> ZText {
        return self.addText(text, color: nil, font: font)
    }
    
    open func addText(_ text: String, color: UIColor?) -> ZText {
        return addText(text, color: color, font: nil)
    }
    
    open func addText(_ text: String) -> ZText {
        return addText(text, color: nil, font: nil)
    }
    
    open func addText(_ text: String, underlineStyle: NSUnderlineStyle, underlineColor: UIColor?) -> ZText {
        return self.addText(text, color: ZText.generalColor, background: ZText.backgroundColor, font: ZText.generalFont, underlineStyle: underlineStyle, underlineColor: underlineColor)
    }
    
    open func addText(_ text: String, underlineStyle: NSUnderlineStyle) -> ZText {
        return self.addText(text, color: ZText.generalColor, background: ZText.backgroundColor, font: ZText.generalFont, underlineStyle: underlineStyle, underlineColor: ZText.defaultUnderlineColor)
    }
    
    open func addBoldText(_ text: String, underlineStyle: NSUnderlineStyle, underlineColor: UIColor?) -> ZText {
        return self.addText(text, color: ZText.boldTextColor, background: ZText.boldBackgroundColor, font: ZText.boldFont, underlineStyle: underlineStyle, underlineColor: underlineColor)
    }
    
    open func addBoldText(_ text: String) -> ZText {
        return self.addBoldText(text, underlineStyle: NSUnderlineStyle.styleNone, underlineColor: nil)
    }
    
    open func addBoldText(_ text: String, color: UIColor) -> ZText {
        return self.addText(text, color: color, background: ZText.boldBackgroundColor, font: ZText.boldFont, underlineStyle: ZText.defaultUnderlineStyle, underlineColor: ZText.defaultUnderlineColor)
    }
    
    open func addBoldText(_ text: String, underlineStyle: NSUnderlineStyle) -> ZText {
        return self.addBoldText(text, underlineStyle: underlineStyle, underlineColor: ZText.defaultUnderlineColor)
    }
    
    open func addItalicText(_ text: String, underlineStyle: NSUnderlineStyle, underlineColor: UIColor?) -> ZText {
        return self.addText(text, color: ZText.italicTextColor, background: ZText.italicBackgroundColor, font: ZText.italicFont, underlineStyle: underlineStyle, underlineColor: underlineColor)
    }
    
    open func addItalicText(_ text: String, underlineStyle: NSUnderlineStyle) -> ZText {
        return self.addItalicText(text, underlineStyle: underlineStyle, underlineColor: ZText.defaultUnderlineColor)
    }
    
    open func addItalicText(_ text: String, color: UIColor) -> ZText {
        return self.addText(text, color: color, background: ZText.italicBackgroundColor, font: ZText.italicFont, underlineStyle: ZText.defaultUnderlineStyle, underlineColor: ZText.defaultUnderlineColor)
    }
    
    open func addItalicText(_ text: String) -> ZText {
        return self.addItalicText(text, underlineStyle: NSUnderlineStyle.styleNone, underlineColor: nil)
    }
    
    open func end() -> NSMutableAttributedString {
        return attrString
    }
    
    fileprivate func getAttributes(_ color: UIColor?, background: UIColor?, font: UIFont?, underlineStyle: NSUnderlineStyle, underlineColor: UIColor?) -> [String: AnyObject] {
        let applyColor = color ?? ZText.generalColor
        let applyBackground = background ?? ZText.backgroundColor
        let applyFont = font ?? ZText.generalFont
        let applyUnderlineStyle = underlineStyle.rawValue
        let applyUnderlineColor = underlineColor ?? ZText.defaultUnderlineColor
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = 0.25 * applyFont.lineHeight
        paragraphStyle.paragraphSpacing = 0.25 * applyFont.lineHeight
        paragraphStyle.alignment = ZText.defaultAlignment
        paragraphStyle.lineBreakMode = NSLineBreakMode.byWordWrapping
        
        return [
            NSForegroundColorAttributeName: applyColor,
            NSBackgroundColorAttributeName: applyBackground,
            NSFontAttributeName: applyFont,
            NSUnderlineStyleAttributeName: applyUnderlineStyle as AnyObject,
            NSUnderlineColorAttributeName: applyUnderlineColor,
            NSParagraphStyleAttributeName: paragraphStyle,
        ]
    }
}
