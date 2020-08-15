// MIT license. Copyright (c) 2020 SwiftyFORM. All rights reserved.
import UIKit

/// dynamic (light/dark) colors for iOS 13+
/// for iOS <13, the light varient will be used
struct Colors {
    
    @DynamicUIColor(light: .white, dark: .lightGray)
    static var background: UIColor
    
    @DynamicUIColor(light: .lightGray, dark: .white)
    static var text: UIColor
    
    @DynamicUIColor(light: .gray, dark: .lightGray)
    static var secondaryText: UIColor
    
    @DynamicUIColor(light: UIColor(white: 0.9, alpha: 1), dark: .lightGray)
    static var mutedBackground: UIColor
    
}
