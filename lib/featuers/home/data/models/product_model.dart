class ProductModel {
  final String title;
  final String subTitle;
  final String productInfo;
  final String timeOfProductCooking;
  final String price;
  final String image;
  final String rating;

  ProductModel(
      {required this.title,
      required this.subTitle,
      required this.image,
      required this.rating,
      required this.price,
      required this.productInfo,
      required this.timeOfProductCooking});
}
