import 'package:flutter/material.dart';
import '../models/product.dart';
import '../widgets/product_tile.dart';

class ProductListScreen extends StatelessWidget {
  final List<Product>? filteredProducts;

  const ProductListScreen({this.filteredProducts, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final displayList = filteredProducts ?? products;

    return Scaffold(
      backgroundColor: const Color(0xFFF8EBF5),
      appBar: AppBar(
        title: const Text(
          'Products',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: const Color(0xFFF1E0EC),
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: displayList.length,
        itemBuilder: (context, index) {
          return ProductTile(product: displayList[index]);
        },
      ),
    );
  }
}
