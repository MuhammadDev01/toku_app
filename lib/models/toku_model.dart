class TokuModel {
  final String soundpath;
  final String jpName;
  final String enName;
  final String? imgPath;

  const TokuModel({
    required this.soundpath,
    required this.enName,
    required this.jpName,
    this.imgPath,
  });
}
