#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef NSString *_Nonnull (^UITextBlock)();

struct UITextAttribute {
  UITextAttribute(NSString *_Nullable text):
    textBlock(text ? ^{ return text; } : (UITextBlock)nil) {};

  UITextBlock _Nullable textBlock;
};

struct UIAccessibilityContext {
  NSString *_Nullable accessibilityIdentifier;
  UITextAttribute accessibilityLabel;
  NSDictionary<NSString *, id> *_Nullable extra;

  static UIAccessibilityContext
  build(NSString *_Nullable accessibilityIdentifier,
        UITextAttribute accessibilityLabel,
        NSDictionary<NSString *, id> *_Nullable extra) {
    return {
        .accessibilityIdentifier = accessibilityIdentifier,
        .accessibilityLabel = accessibilityLabel,
        .extra = extra,
    };
  }
};

NS_ASSUME_NONNULL_END
