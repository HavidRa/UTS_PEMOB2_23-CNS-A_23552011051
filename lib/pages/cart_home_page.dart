import 'package:flutter/material.dart';
import 'cart_grid_page.dart';
import 'cart_summary_page.dart';

class CartHomePage extends StatelessWidget {
  const CartHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Cart Home")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text("Lihat Produk (Grid View)"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const CartGridPage(),
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              child: const Text("Ringkasan Keranjang"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const CartSummaryPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
