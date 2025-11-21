import 'package:flutter/material.dart';
import '../models/product_model.dart';
import '../widgets/product_card.dart';
import 'cart_summary_page.dart';

class CartGridPage extends StatelessWidget {
  const CartGridPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ProductModel> products = [
      ProductModel(id: '1', name: 'Sepatu Sport', price: 250000, image: 'https://picsum.photos/200?1'),
      ProductModel(id: '2', name: 'Kemeja Putih', price: 180000, image: 'https://picsum.photos/200?2'),
      ProductModel(id: '3', name: 'Topi Fashion', price: 75000, image: 'https://picsum.photos/200?3'),
      ProductModel(id: '4', name: 'Tas Slempang', price: 220000, image: 'https://picsum.photos/200?4'),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Produk Grid"),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart_outlined),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) => const CartSummaryPage()));
            },
          )
        ],
      ),

      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 0.68,
        ),
        itemCount: products.length,
        itemBuilder: (_, i) => ProductCard(product: products[i]),
      ),
    );
  }
}
