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
  UITextAttribute accessibilityLabel;
  static UIAccessibilityContext build(UITextAttribute accessibilityLabel) {
    return { .accessibilityLabel = accessibilityLabel };
  }
};


NS_ASSUME_NONNULL_END
