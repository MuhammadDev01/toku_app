class CategoryItemModel {
  final String soundpath;
  final String jpName;
  final String enName;
  final String? imgPath;

  const CategoryItemModel({
    required this.soundpath,
    required this.enName,
    required this.jpName,
    this.imgPath,
  });
}
