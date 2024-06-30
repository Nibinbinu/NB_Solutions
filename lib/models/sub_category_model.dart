class SubCategoryModel {
  final String categoryId;
  final String subcategoryId;
  final String categoryImg;
  final String categoryName;
  final String createdAt;
  final String updateAt;

  SubCategoryModel({
    required this.categoryId,
    required this.subcategoryId,
    required this.categoryImg,
    required this.categoryName,
    required this.createdAt,
    required this.updateAt,
  });

  Map<String, dynamic> toMap() {
    return {
      'categoryId': categoryId,
      'subcategoryId': subcategoryId,
      'categoryImg': categoryImg,
      'categoryName': categoryName,
      'createdAt': createdAt,
      'updatedAt': updateAt,
    };
  }

  factory SubCategoryModel.fromMap(Map<String, dynamic> json) {
    return SubCategoryModel(
      categoryId: json['categoryId'],
      subcategoryId: json['subcategoryId'],
      categoryImg: json['categoryImg'],
      categoryName: json['categoryName'],
      createdAt: json['createdAt'],
      updateAt: json['updatedAt'],
    );
  }
}
