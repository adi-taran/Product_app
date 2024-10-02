class Product {
  final String name;
  final String price;

  Product({required this.name, required this.price});

  Map<String, String> toMap() {
    return {'name': name, 'price': price};
  }
}
