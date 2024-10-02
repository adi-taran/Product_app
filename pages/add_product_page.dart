import 'package:flutter/material.dart';
import 'package:product_app/services/product_service.dart';

class AddProductPage extends StatefulWidget {
  @override
  _AddProductPageState createState() => _AddProductPageState();
}

class _AddProductPageState extends State<AddProductPage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController priceController = TextEditingController();

  void saveProduct() {
    ProductService.saveProduct(nameController.text, priceController.text);
    Navigator.pop(context); // Return to home page after saving
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add Product')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(labelText: 'Product Name'),
            ),
            TextField(
              controller: priceController,
              decoration: InputDecoration(labelText: 'Product Price'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: saveProduct,
              child: Text('Add Product'),
            ),
          ],
        ),
      ),
    );
  }
}
