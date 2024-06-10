class ProductModel {
  final String name;
  final String image;
  final String price;
  final String oldPrice;
  final String discount;
  bool isFavorite;

  ProductModel(
    this.name,
    this.image,
    this.price,
    this.oldPrice,
    this.discount,
    this.isFavorite,
  );
}
