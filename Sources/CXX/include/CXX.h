typedef int (^UITextBlock)();

struct UITextAttribute {
  UITextAttribute() : textBlock((^{ return 42; })){};
  UITextAttribute(int text) : textBlock(^{ return text; }){};
  UITextBlock textBlock;

  // NOTE: If we manually add the right copy constructor then we avoid the loss 
  //       of the needed ARC retain at the ctor call site.
  #if 0
  UITextAttribute(const UITextAttribute &textAttribute) {
    textBlock = textAttribute.textBlock;
  }
  #endif
};

struct UIAccessibilityContext {
  // NOTE: if ints accessibilityIdentifier or extra are removed, then args
  //       handling code in IRGen seems to assert.
  int accessibilityIdentifier;
  UITextAttribute accessibilityLabel;
  int extra;

  // NOTE: If following line is pass by reference, we avoid the crash since we
  //       dont get an additional dtor ARC release for the reference pass.
  static UIAccessibilityContext build(
    #if 1
    UITextAttribute accessibilityLabel
    #else
    const UITextAttribute &accessibilityLabel
    #endif
  ) {
    return {.accessibilityLabel = accessibilityLabel};
  }
};