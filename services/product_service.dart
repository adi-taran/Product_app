import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class ProductService {
  static Future<List<Map<String, String>>> loadProducts() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? productData = prefs.getString('products');
    return List<Map<String, String>>.from(jsonDecode(productData));
  }

  static Future<void> saveProduct(String name, String price) async {
    List<Map<String, String>> products = await loadProducts();
    products.add({'name': name, 'price': price});
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('products', jsonEncode(products));
  }

  static Future<void> deleteProduct(int index) async {
    List<Map<String, String>> products = await loadProducts();
    products.removeAt(index);
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('products', jsonEncode(products));
  }
}
