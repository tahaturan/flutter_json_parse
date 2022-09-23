class Categories {
  String categoryId;
  String categoryName;
  Categories({
    required this.categoryId,
    required this.categoryName,
  });

  factory Categories.fromJson(Map<String, dynamic> json) {
    return Categories(
        categoryId: json["kategori_id"] as String,
        categoryName: json["kategori_ad"] as String);
  }
}
