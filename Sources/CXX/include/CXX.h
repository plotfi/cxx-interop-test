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
  int extra;

  static UIAccessibilityContext
  build(NSString *_Nullable accessibilityIdentifier,
        UITextAttribute accessibilityLabel,
        int extra) {
    return {
        .accessibilityIdentifier = accessibilityIdentifier,
        .accessibilityLabel = accessibilityLabel,
        .extra = extra,
    };
  }
};

NS_ASSUME_NONNULL_END
