//
//  ZText.swift
//  Pods
//
//  Created by Thuong Nguyen on 5/21/16.
//
//

import UIKit

public class ZText {
    
    // MARK: - Global attributes
    // Fonts and colors
    public static var generalFont:              UIFont  = UIFont.systemFontOfSize(12)
    public static var boldFont:                 UIFont  = UIFont.boldSystemFontOfSize(12)
    public static var italicFont:               UIFont  = UIFont.italicSystemFontOfSize(12)
    public static var generalColor:             UIColor = UIColor.blackColor()
    public static var boldTextColor:            UIColor = UIColor.blackColor()
    public static var italicTextColor:          UIColor = UIColor.blackColor()
    public static var backgroundColor:          UIColor = UIColor.clearColor()
    public static var boldBackgroundColor:      UIColor = UIColor.clearColor()
    public static var italicBackgroundColor:    UIColor = UIColor.clearColor()
    public static var defaultUnderlineStyle:    NSUnderlineStyle = NSUnderlineStyle.StyleNone
    public static var defaultUnderlineColor:    UIColor = UIColor.blackColor()
    public static var defaultAlignment:         NSTextAlignment = NSTextAlignment.Left
    
    // MARK: - Local attributes
    var attrString : NSMutableAttributedString
    
    // MARK: - Static initialize
    public class func begin() -> ZText {
        return ZText()
    }
    
    // MARK: - Local methods
    init() {
        attrString = NSMutableAttributedString()
    }
    
    public func addText(text: String, color: UIColor?, background: UIColor?, font: UIFont?, underlineStyle: NSUnderlineStyle, underlineColor: UIColor?) -> ZText {
        let newString = NSMutableAttributedString(string: text, attributes: getAttributes(color, background: background, font: font, underlineStyle: underlineStyle, underlineColor: underlineColor))
        self.attrString.appendAttributedString(newString)
        return self
    }
    
    public func addText(text: String, color: UIColor?, background: UIColor?, font: UIFont?) -> ZText {
        return self.addText(text, color: color, background: background, font: font, underlineStyle: NSUnderlineStyle.StyleNone, underlineColor: nil)
    }
    
    public func addText(text: String, color: UIColor?, font: UIFont?) -> ZText {
        return self.addText(text, color: color, background: nil, font: font)
    }
    
    public func addText(text: String, font: UIFont?) -> ZText {
        return self.addText(text, color: nil, font: font)
    }
    
    public func addText(text: String, color: UIColor?) -> ZText {
        return addText(text, color: color, font: nil)
    }
    
    public func addText(text: String) -> ZText {
        return addText(text, color: nil, font: nil)
    }
    
    public func addText(text: String, underlineStyle: NSUnderlineStyle, underlineColor: UIColor?) -> ZText {
        return self.addText(text, color: ZText.generalColor, background: ZText.backgroundColor, font: ZText.generalFont, underlineStyle: underlineStyle, underlineColor: underlineColor)
    }
    
    public func addText(text: String, underlineStyle: NSUnderlineStyle) -> ZText {
        return self.addText(text, color: ZText.generalColor, background: ZText.backgroundColor, font: ZText.generalFont, underlineStyle: underlineStyle, underlineColor: ZText.defaultUnderlineColor)
    }
    
    public func addBoldText(text: String, underlineStyle: NSUnderlineStyle, underlineColor: UIColor?) -> ZText {
        return self.addText(text, color: ZText.boldTextColor, background: ZText.boldBackgroundColor, font: ZText.boldFont, underlineStyle: underlineStyle, underlineColor: underlineColor)
    }
    
    public func addBoldText(text: String) -> ZText {
        return self.addBoldText(text, underlineStyle: NSUnderlineStyle.StyleNone, underlineColor: nil)
    }
    
    public func addBoldText(text: String, color: UIColor) -> ZText {
        return self.addText(text, color: color, background: ZText.boldBackgroundColor, font: ZText.boldFont, underlineStyle: ZText.defaultUnderlineStyle, underlineColor: ZText.defaultUnderlineColor)
    }
    
    public func addBoldText(text: String, underlineStyle: NSUnderlineStyle) -> ZText {
        return self.addBoldText(text, underlineStyle: underlineStyle, underlineColor: ZText.defaultUnderlineColor)
    }
    
    public func addItalicText(text: String, underlineStyle: NSUnderlineStyle, underlineColor: UIColor?) -> ZText {
        return self.addText(text, color: ZText.italicTextColor, background: ZText.italicBackgroundColor, font: ZText.italicFont, underlineStyle: underlineStyle, underlineColor: underlineColor)
    }
    
    public func addItalicText(text: String, underlineStyle: NSUnderlineStyle) -> ZText {
        return self.addItalicText(text, underlineStyle: underlineStyle, underlineColor: ZText.defaultUnderlineColor)
    }
    
    public func addItalicText(text: String, color: UIColor) -> ZText {
        return self.addText(text, color: color, background: ZText.italicBackgroundColor, font: ZText.italicFont, underlineStyle: ZText.defaultUnderlineStyle, underlineColor: ZText.defaultUnderlineColor)
    }
    
    public func addItalicText(text: String) -> ZText {
        return self.addItalicText(text, underlineStyle: NSUnderlineStyle.StyleNone, underlineColor: nil)
    }
    
    public func end() -> NSMutableAttributedString {
        return attrString
    }
    
    private func getAttributes(color: UIColor?, background: UIColor?, font: UIFont?, underlineStyle: NSUnderlineStyle, underlineColor: UIColor?) -> [String: AnyObject] {
        let applyColor = color ?? ZText.generalColor
        let applyBackground = background ?? ZText.backgroundColor
        let applyFont = font ?? ZText.generalFont
        let applyUnderlineStyle = underlineStyle.rawValue
        let applyUnderlineColor = underlineColor ?? ZText.defaultUnderlineColor
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = 0.25 * applyFont.lineHeight
        paragraphStyle.paragraphSpacing = 0.25 * applyFont.lineHeight
        paragraphStyle.alignment = ZText.defaultAlignment
        paragraphStyle.lineBreakMode = NSLineBreakMode.ByWordWrapping
        
        return [
            NSForegroundColorAttributeName: applyColor,
            NSBackgroundColorAttributeName: applyBackground,
            NSFontAttributeName: applyFont,
            NSUnderlineStyleAttributeName: applyUnderlineStyle,
            NSUnderlineColorAttributeName: applyUnderlineColor,
            NSParagraphStyleAttributeName: paragraphStyle,
        ]
    }
}
