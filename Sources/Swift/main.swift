import CXX
import Foundation

public struct AccessibilityContext {
  public var accessibilityLabel: String?

  public init(accessibilityLabel: String? = nil) {
      self.accessibilityLabel = accessibilityLabel
  }
}

let accessibilityContext = AccessibilityContext(accessibilityLabel: "Cancel")

_ = UIAccessibilityContext.build(
  UITextAttribute(accessibilityContext.accessibilityLabel), // crash
)

print("Done.")
