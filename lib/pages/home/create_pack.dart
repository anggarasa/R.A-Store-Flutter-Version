import 'package:flutter/material.dart';

class CreatePack extends StatefulWidget {
  const CreatePack({super.key});

  static const String routeName = '/create-pack';

  @override
  State<CreatePack> createState() => _CreatePackState();
}

class _CreatePackState extends State<CreatePack> {
  final List<String> categories = [
    "Vegetables",
    "Meat & Fish",
    "Medicine",
    "Baby",
    "Others",
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Create My Pack")),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 8),
            // Tab Horizontal
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                children: List.generate(categories.length, (index) {
                  final isSelected = index == selectedIndex;
                  return Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 8,
                        ),
                        decoration: BoxDecoration(
                          color: isSelected ? Colors.blue : Colors.grey[200],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          categories[index],
                          style: TextStyle(
                            color: isSelected ? Colors.white : Colors.grey[600],
                            fontWeight: isSelected
                                ? FontWeight.bold
                                : FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ),

            SizedBox(height: 16),

            // Grid Produk
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 0.75,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                shrinkWrap: true,
                physics:
                    NeverScrollableScrollPhysics(), // Supaya tidak nested scroll
                children: List.generate(10, (index) {
                  return _buildProductCard(
                    "Red Apples",
                    "2.49",
                    "assets/images/red_apple.jpg",
                  );
                }),
              ),
            ),

            SizedBox(height: 100), // Tambahan supaya nggak ketabrak bottom nav
          ],
        ),
      ),

      // Background biru di bagian bawah
      bottomNavigationBar: Container(
        height: 80,
        padding: EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: Colors.blue, // Warna latar seperti gambar
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Item keranjang
            Row(
              children: [
                _buildCartItem('assets/images/red_apple.jpg', 2),
                SizedBox(width: 8),
                _buildCartItem('assets/images/blueberies_pack.jpg', 1),
                SizedBox(width: 8),
                _buildCartItem('assets/images/brocoli.jpg', 5),
              ],
            ),
            // Total dan tombol
            Row(
              children: [
                Text(
                  '\$35.05',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 12),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    icon: Icon(Icons.arrow_forward, color: Colors.blue),
                    onPressed: () {
                      // Aksi ketika tombol panah ditekan
                    },
                  ),
                ),
              ],
            ),
          ],
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

  Widget _buildCartItem(String imagePath, int quantity) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        CircleAvatar(
          radius: 22,
          backgroundColor: Colors.white,
          backgroundImage: AssetImage(imagePath),
        ),
        CircleAvatar(
          radius: 10,
          backgroundColor: Colors.white,
          child: Text(
            'x$quantity',
            style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
