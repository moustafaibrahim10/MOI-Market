class ProductModel {
  final String id;
  final String name;
  final String description;
  final double price;
  final double oldPrice;
  final int discount;
  final String imageUrl;

  ProductModel({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.oldPrice,
    required this.discount,
    required this.imageUrl,
  });

}