import 'package:flutter/material.dart';
import 'package:myntra/models/clothes.dart';
import '../components/clothes_tile.dart';
import 'cart_page.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  // All available clothes
  final List<Clothes> clothesList = [
    Clothes(
        name: 'Chill White Polo',
        price: '799',
        description: 'Chill fit, classy white polo',
        imagePath: 'assets/top1.jpeg'),
    Clothes(
        name: 'Maroon Sleeveless',
        price: '699',
        description: 'Trendy maroon sleeveless top',
        imagePath: 'assets/top2.jpeg'),
    Clothes(
        name: 'Dark Maroon Fit',
        price: '749',
        description: 'Stylish dark maroon fit',
        imagePath: 'assets/top3.jpeg'),
    Clothes(
        name: 'Navy Blue Tee',
        price: '599',
        description: 'Casual navy blue t-shirt',
        imagePath: 'assets/top4.jpeg'),
    Clothes(
        name: 'Elegant Black Top',
        price: '849',
        description: 'Elegant and classy black top',
        imagePath: 'assets/top5.jpeg'),
  ];

  // Add to cart
  void addToCart(Clothes clothes) {
    CartPage.cartItems.add(clothes);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('${clothes.name} added to cart')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Search bar
        Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Search',
                style: TextStyle(color: Colors.white),
              ),
              Icon(
                Icons.search,
                color: Colors.white,
              ),
            ],
          ),
        ),

        // message
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 25.0),
          child: Text(
            'Style is a way to say who you are without speaking',
            style: TextStyle(color: Colors.grey[600]),
          ),
        ),

        // hot picks
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Text(
                'Hot Picks🔥',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              Text('See all',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.blue))
            ],
          ),
        ),

        const SizedBox(height: 10),

        // clothes list
        Expanded(
          child: ListView.builder(
            itemCount: clothesList.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return ClothesTile(
                clothes: clothesList[index],
                onTap: () => addToCart(clothesList[index]),
              );
            },
          ),
        ),
      ],
    );
  }
}
