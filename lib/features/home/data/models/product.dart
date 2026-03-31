class Product {
  final String title;

  Product(this.title);

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(json['title']);
  }
}