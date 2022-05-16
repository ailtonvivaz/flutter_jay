class PreviewLayout {
  final double? width;
  final double? height;

  const PreviewLayout({
    this.width,
    this.height,
  });

  PreviewLayout fitHeight() {
    return PreviewLayout(
      width: width,
      height: null,
    );
  }
}

class PreviewLayouts {
  PreviewLayouts._();

  static PreviewLayout fit = const PreviewLayout();

  static PreviewLayout iphone13ProMax =
      const PreviewLayout(width: 428, height: 926);

  static PreviewLayout iphone13Pro =
      const PreviewLayout(width: 390, height: 844);

  static PreviewLayout iphone8 = const PreviewLayout(width: 375, height: 667);

  static PreviewLayout iphoneSE = const PreviewLayout(width: 320, height: 568);
}
