import 'package:flutter/material.dart';
import '../models/clothes.dart';

class ClothesTile extends StatelessWidget {
  final Clothes clothes;
  final void Function()? onTap;

  const ClothesTile({
    super.key,
    required this.clothes,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180, // fixed width for horizontal scroll
      margin: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              clothes.imagePath,
              height: 180, // fixed height for image
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),

          const SizedBox(height: 8),

          // Name
          Text(
            clothes.name,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
            overflow: TextOverflow.ellipsis,
          ),

          const SizedBox(height: 4),

          // Price
          Text(
            '₹${clothes.price}',
            style: const TextStyle(
              color: Colors.grey,
            ),
          ),

          const SizedBox(height: 8),

          // Add to cart button
          GestureDetector(
            onTap: onTap,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Text(
                'Add to Cart',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
