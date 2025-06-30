import 'package:flutter/material.dart';

class NewItemsAll extends StatelessWidget {
  const NewItemsAll({super.key});

  static const String routeName = '/detail/new-items';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("New Items")),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: GridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            childAspectRatio: 0.75,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            children: [
              _buildProductCard(
                "Red Apples",
                "2.49",
                "assets/images/red_apple.jpg",
              ),
              _buildProductCard(
                "Red Apples",
                "2.49",
                "assets/images/red_apple.jpg",
              ),
              _buildProductCard(
                "Red Apples",
                "2.49",
                "assets/images/red_apple.jpg",
              ),
              _buildProductCard(
                "Red Apples",
                "2.49",
                "assets/images/red_apple.jpg",
              ),
              _buildProductCard(
                "Red Apples",
                "2.49",
                "assets/images/red_apple.jpg",
              ),
              _buildProductCard(
                "Red Apples",
                "2.49",
                "assets/images/red_apple.jpg",
              ),
              _buildProductCard(
                "Red Apples",
                "2.49",
                "assets/images/red_apple.jpg",
              ),
              _buildProductCard(
                "Red Apples",
                "2.49",
                "assets/images/red_apple.jpg",
              ),
              _buildProductCard(
                "Red Apples",
                "2.49",
                "assets/images/red_apple.jpg",
              ),
              _buildProductCard(
                "Red Apples",
                "2.49",
                "assets/images/red_apple.jpg",
              ),
              _buildProductCard(
                "Red Apples",
                "2.49",
                "assets/images/red_apple.jpg",
              ),
              _buildProductCard(
                "Red Apples",
                "2.49",
                "assets/images/red_apple.jpg",
              ),
              _buildProductCard(
                "Red Apples",
                "2.49",
                "assets/images/red_apple.jpg",
              ),
              _buildProductCard(
                "Red Apples",
                "2.49",
                "assets/images/red_apple.jpg",
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProductCard(String name, String price, String imageUrl) {
    return Container(
      width: 160,
      margin: const EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [BoxShadow(color: Colors.black, blurRadius: 1)],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
            child: Container(
              height: 120,
              decoration: BoxDecoration(color: Colors.blue),
              child: Center(
                child: Image.asset(
                  imageUrl,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 120,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$$price",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Color(0xFF1E88E5),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: const Color(0xFF1E88E5),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
