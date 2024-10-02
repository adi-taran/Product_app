import 'package:flutter/material.dart';
import 'add_product_page.dart';
import 'package:product_app/services/product_service.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, String>> products = [];

  @override
  void initState() {
    super.initState();
    loadProducts();
  }

  Future<void> loadProducts() async {
    products = await ProductService.loadProducts();
    setState(() {});
  }

  void deleteProduct(int index) {
    ProductService.deleteProduct(index);
    setState(() {
      products.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Management'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(products[index]['name']!),
            subtitle: Text('Price: ${products[index]['price']}'),
            trailing: IconButton(
              icon: Icon(Icons.delete),
              onPressed: () => deleteProduct(index),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddProductPage()),
          ).then((_) {
            loadProducts(); // Refresh product list after adding a product
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
