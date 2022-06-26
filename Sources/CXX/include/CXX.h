#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef NSString *_Nonnull (^UITextBlock)();

struct UITextAttribute {
  UITextAttribute() = default;
  UITextAttribute(UITextBlock _Nullable textBlock): textBlock(textBlock) {};
  UITextAttribute(NSString *_Nullable text):
    textBlock(text ? ^{ return text; } : (UITextBlock)nil) {};

  UITextBlock _Nullable textBlock;
};


struct UIAccessibilityContext {
  NSString *_Nullable accessibilityIdentifier;
  NSNumber *_Nullable isAccessibilityElement;
  UITextAttribute accessibilityLabel;
  UITextAttribute accessibilityHint;
  UITextAttribute accessibilityValue;
  /**
   Arbitrary extra data about accessibility. ComponentKit ignores this data,
   but you may use it for accessibility-related abstractions.
   */
  NSDictionary<NSString *, id> *_Nullable extra;

  /**
   Unconventional, but there's an issue with aggregate initializers and Swift interop.
   Adding a user-defined ctor would disable the aggregate init - which we don't want,
   so using a static method for now.
  */
  static UIAccessibilityContext build(NSString *_Nullable accessibilityIdentifier,
                                      NSNumber *_Nullable isAccessibilityElement,
                                      UITextAttribute accessibilityLabel,
                                      UITextAttribute accessibilityHint,
                                      UITextAttribute accessibilityValue,
                                      NSDictionary<NSString *, id> *_Nullable extra)
  {
    return {
      .accessibilityIdentifier = accessibilityIdentifier,
      .isAccessibilityElement = isAccessibilityElement,
      .accessibilityLabel = accessibilityLabel,
      .accessibilityHint = accessibilityHint,
      .accessibilityValue = accessibilityValue,
      .extra = extra,
    };
  }
};


NS_ASSUME_NONNULL_END
