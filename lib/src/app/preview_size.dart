class PreviewSize {
  final double? width;
  final double? height;

  const PreviewSize({
    this.width,
    this.height,
  });
}

class PreviewSizes {
  PreviewSizes._();

  static PreviewSize fit = const PreviewSize();

  static PreviewSize iphone13ProMax =
      const PreviewSize(width: 428, height: 926);

  static PreviewSize iphone13Pro = const PreviewSize(width: 390, height: 844);

  static PreviewSize iphone8 = const PreviewSize(width: 375, height: 667);

  static PreviewSize iphoneSE = const PreviewSize(width: 320, height: 568);
}
