extension StringExtensions on String {
  String get imagePath => 'lib/src/res/$this';
  String get imagePathPNG => 'lib/src/res/${this.substring(0, 2)}.png';
}
