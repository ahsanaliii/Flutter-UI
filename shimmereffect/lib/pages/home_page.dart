import 'package:flutter/material.dart';
import 'package:shimmereffect/widgets/product_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isLoading = false;
  final List<Map<String, String>> products = const [
    {
      'name': 'Wireless Gaming Controller',
      'price': '\$79',
      'image': 'https://unsplash.com/photos/1K9T5YiZ2WU/download?force=true',
    },
    {
      'name': 'Wireless Headphone',
      'price': '\$44',
      'image': 'https://i.imgur.com/yVeIeDa.jpeg',
    },
    {
      'name': 'Mechanical Keyboard',
      'price': '\$99',
      'image': 'https://unsplash.com/photos/7kEpUPB8vNk/download?force=true',
    },
    {
      'name': 'Smartwatch Pro',
      'price': '\$129',
      'image': 'https://unsplash.com/photos/1K9T5YiZ2WU/download?force=true',
    },
    {
      'name': 'Portable Bluetooth Speaker',
      'price': '\$59',
      'image': 'https://unsplash.com/photos/1K9T5YiZ2WU/download?force=true',
    },
    {
      'name': 'HD Web Camera',
      'price': '\$35',
      'image': 'https://unsplash.com/photos/1K9T5YiZ2WU/download?force=true',
    },
    {
      'name': 'Gaming Mouse RGB',
      'price': '\$39',
      'image': 'https://i.imgur.com/JZQ9A3o.jpeg',
    },
    {
      'name': 'Smart LED Desk Lamp',
      'price': '\$24',
      'image': 'https://i.imgur.com/nYFgRo2.jpeg',
    },
    {
      'name': 'Noise Cancelling Earbuds',
      'price': '\$89',
      'image': 'https://i.imgur.com/GdyQ8Zk.jpeg',
    },
    {
      'name': '4K Action Camera',
      'price': '\$149',
      'image': 'https://i.imgur.com/NOBE5to.jpeg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GridView.builder(
          itemCount: products.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.65,
          ),
          itemBuilder: (context, index) {
            final product = products[index];
            return ProductCard(
              price: product["price"]!,
              imageUrl: product["image"]!,
              name: product["name"]!,
              isLoading: isLoading,
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            isLoading = !isLoading;
          });
        },
        child: Icon(Icons.circle),
      ),
    );
  }
}
