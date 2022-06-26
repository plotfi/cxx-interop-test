import CXX
import Foundation

let accessibilityIdentifier = "Hello"
let accessibilityLabel = "Cancel"

_ = UIAccessibilityContext.build(
  accessibilityIdentifier,
  UITextAttribute(accessibilityLabel), // crash
  nil
)

print("Done.")
