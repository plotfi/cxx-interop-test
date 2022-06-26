import CXX
import Foundation

public struct AccessibilityContext {
  public var accessibilityIdentifier: String?
  public var isAccessibilityElement: Bool?
  public var accessibilityLabel: String?
  public var accessibilityHint: String?
  public var accessibilityValue: String?

  public init(
    accessibilityIdentifier: String? = nil,
    isAccessibilityElement: Bool? = nil,
    accessibilityLabel: String? = nil,
    accessibilityHint: String? = nil,
    accessibilityValue: String? = nil) {
      self.accessibilityIdentifier = accessibilityIdentifier
      self.isAccessibilityElement = isAccessibilityElement
      self.accessibilityLabel = accessibilityLabel
      self.accessibilityHint = accessibilityHint
      self.accessibilityValue = accessibilityValue
    }
}

let accessibilityContext = AccessibilityContext(
                            accessibilityLabel: "Cancel"
                          )

_ = UIAccessibilityContext.build(
  accessibilityContext.accessibilityIdentifier,
  accessibilityContext.isAccessibilityElement as NSNumber?,
  UITextAttribute(accessibilityContext.accessibilityLabel), // crash
  UITextAttribute(accessibilityContext.accessibilityHint),
  UITextAttribute(accessibilityContext.accessibilityValue),
  nil
)

print("Done.")
