import CXX
import Foundation

var textAttr1 = UITextAttribute(24)
var a = textAttr1.textBlock()
print("Before. \(a)")

var context = UIAccessibilityContext.build(textAttr1)
var b = context.accessibilityLabel.textBlock()
print("Done. \(b)")