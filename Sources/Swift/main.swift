import CXX
import Foundation

let accessibilityIdentifier = "Hello"
let accessibilityLabel = "Cancel"

let textAttr = UITextAttribute(accessibilityLabel) // crash

_ = UIAccessibilityContext.build(
  accessibilityIdentifier,
  textAttr,
  nil
)

print("Done.")
