import 'package:dodostore_mobile/models/product_entry.dart';
import 'package:flutter/material.dart';

class ProductDetailPage extends StatelessWidget {
  final Product product;

  const ProductDetailPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.fields.name),
      ),
      body: SingleChildScrollView(
        // Ensures content is scrollable if it overflows
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Product Image

              const SizedBox(height: 16),
              // Product Name
              Text(
                product.fields.name,
                style: const TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              // Product Price
              Text(
                "Price: \$${product.fields.price}",
                style: const TextStyle(fontSize: 18.0),
              ),
              const SizedBox(height: 16),
              // Product Description
              Text(
                "Description: ${product.fields.description}",
                style: const TextStyle(fontSize: 16.0),
              ),
              const SizedBox(height: 16),
              // Product Stock
              Text(
                "Stock: ${product.fields.stock}",
                style: const TextStyle(fontSize: 16.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
