# ZText

[![CI Status](http://img.shields.io/travis/Thuong Nguyen/ZText.svg?style=flat)](https://travis-ci.org/Thuong Nguyen/ZText)
[![Version](https://img.shields.io/cocoapods/v/ZText.svg?style=flat)](http://cocoapods.org/pods/ZText)
[![License](https://img.shields.io/cocoapods/l/ZText.svg?style=flat)](http://cocoapods.org/pods/ZText)
[![Platform](https://img.shields.io/cocoapods/p/ZText.svg?style=flat)](http://cocoapods.org/pods/ZText)

![alt text](https://raw.githubusercontent.com/zelic91/ZText/master/Screenshots/ZT_01.png "")

## Overview

If you ever used NSAttributedString for special font and color formatting for text, you can feel the pain of the lengthy code. Moreover, the attributes are really hard to remember, especially when you rarely use them. To eliminate the above headache, ZText provides an easy way to use NSAttributedString with simple syntax that you almost don't need to remember anything.

## Usage

Just `import ZText` and you are good to go. Simply begin the text with `begin()`, then add some more texts, and finally call `end()` to return a NSAttributedString.

For instance:

```swift
		ZText.boldFont         = UIFont(name: "GillSans-Bold", size: 42)!
        ZText.italicFont       = UIFont(name: "GillSans-Italic", size: 18)!
        ZText.defaultAlignment = NSTextAlignment.Center
        
        lbTitle.attributedText = ZText.begin()
            .addBoldText("Z", color: UIColor.whiteColor())
            .addBoldText("Text", color: UIColor.yellowColor())
            .end()
        
        lbDescription.attributedText = ZText.begin()
            .addItalicText("'Cause ", color: UIColor.yellowColor())
            .addItalicText("NSAttributedString ", color: UIColor.whiteColor())
            .addItalicText("is ", color: UIColor.yellowColor())
            .addItalicText("damn ", color: UIColor.whiteColor())
            .addItalicText("sexy ", color: UIColor.yellowColor())
            .end()
```

There are couples of attributes that you might want to customize:

```swift
	public static var generalFont:              UIFont  
    public static var boldFont:                 UIFont  
    public static var italicFont:               UIFont  
    public static var generalColor:             UIColor 
    public static var boldTextColor:            UIColor 
    public static var italicTextColor:          UIColor 
    public static var backgroundColor:          UIColor 
    public static var boldBackgroundColor:      UIColor 
    public static var italicBackgroundColor:    UIColor 
    public static var defaultUnderlineStyle:    NSUnderlineStyle 
    public static var defaultUnderlineColor:    UIColor 
    public static var defaultAlignment:         NSTextAlignment 

```

Full list of methods that you can call:

```swift
	public class func begin() -> ZText.ZText
    public func addText(text: String, color: UIColor?, background: UIColor?, font: UIFont?, underlineStyle: NSUnderlineStyle, underlineColor: UIColor?) -> ZText.ZText
    public func addText(text: String, color: UIColor?, background: UIColor?, font: UIFont?) -> ZText.ZText
    public func addText(text: String, color: UIColor?, font: UIFont?) -> ZText.ZText
    public func addText(text: String, font: UIFont?) -> ZText.ZText
    public func addText(text: String, color: UIColor?) -> ZText.ZText
    public func addText(text: String) -> ZText.ZText
    public func addText(text: String, underlineStyle: NSUnderlineStyle, underlineColor: UIColor?) -> ZText.ZText
    public func addText(text: String, underlineStyle: NSUnderlineStyle) -> ZText.ZText
    public func addBoldText(text: String, underlineStyle: NSUnderlineStyle, underlineColor: UIColor?) -> ZText.ZText
    public func addBoldText(text: String) -> ZText.ZText
    public func addBoldText(text: String, color: UIColor) -> ZText.ZText
    public func addBoldText(text: String, underlineStyle: NSUnderlineStyle) -> ZText.ZText
    public func addItalicText(text: String, underlineStyle: NSUnderlineStyle, underlineColor: UIColor?) -> ZText.ZText
    public func addItalicText(text: String, underlineStyle: NSUnderlineStyle) -> ZText.ZText
    public func addItalicText(text: String, color: UIColor) -> ZText.ZText
    public func addItalicText(text: String) -> ZText.ZText
    public func end() -> NSMutableAttributedString
```

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Installation

ZText is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "ZText"
```

## Author

Thuong Nguyen, thuongnh.uit@gmail.com

## License

ZText is available under the MIT license. See the LICENSE file for more info.
