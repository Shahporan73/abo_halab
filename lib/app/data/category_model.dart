class Product {
  final String title;
  final String imgPath;
  final String description;
  final String price;
  final String totalReviews;
  var ratingCount;
  final String discountPrice;
  final String discountPercentage;

  Product({
    required this.title,
    required this.imgPath,
    required this.description,
    required this.price,
    required this.totalReviews,
    required this.ratingCount,
    required this.discountPrice,
    required this.discountPercentage,
  });
}
