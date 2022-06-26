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

  // NOTE: If following line is pass by reference, we avoid the _Block_copy crash
  // static UIAccessibilityContext build(const UITextAttribute &accessibilityLabel) {
  static UIAccessibilityContext build(UITextAttribute accessibilityLabel) {
    UIAccessibilityContext context;
    context.accessibilityLabel = accessibilityLabel;
    return context;
  }
};