typedef int (^UITextBlock)();

struct UITextAttribute {
  UITextAttribute() : textBlock((^{ return 42; })){};
  UITextAttribute(int text): textBlock(^{ return text; }) {};

  UITextBlock textBlock;
};

struct UIAccessibilityContext {
  int accessibilityIdentifier;
  UITextAttribute accessibilityLabel;
  int extra;

  static UIAccessibilityContext build(UITextAttribute accessibilityLabel) {
    UIAccessibilityContext context;
    context.accessibilityLabel = accessibilityLabel;
    return context;
  }
};