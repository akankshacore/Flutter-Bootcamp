import 'package:flutter/material.dart';
import 'package:myntra/models/clothes.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  // Simple static cart storage
  static List<Clothes> cartItems = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Your Cart')),
      body: cartItems.isEmpty
          ? const Center(child: Text('Your cart is empty'))
          : ListView.builder(
        itemCount: cartItems.length,
        itemBuilder: (context, index) {
          final item = cartItems[index];
          return ListTile(
            leading: Image.asset(item.imagePath),
            title: Text(item.name),
            subtitle: Text('₹${item.price}'),
            trailing: IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () {
                cartItems.removeAt(index);
                (context as Element).markNeedsBuild(); // refresh
              },
            ),
          );
        },
      ),
    );
  }
}
