import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class DetailPopulerPacks extends StatefulWidget {
  const DetailPopulerPacks({super.key});

  static const String routeName = '/details/popular-packs';

  @override
  State<DetailPopulerPacks> createState() => _DetailPopulerPacksState();
}

class _DetailPopulerPacksState extends State<DetailPopulerPacks> {
  int quantity = 2;
  int currentCarouselIndex = 0;
  final List<String> bundleImages = [
    "assets/images/veggle_pack.jpg",
    "assets/images/veggle_pack.jpg",
    "assets/images/veggle_pack.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Bundle Details', style: TextStyle(color: Colors.black)),
      ),
      body: Column(
        children: [
          // Image carousel
          Stack(
            children: [
              Container(
                color: Color(0xFFE0F7FA),
                child: Column(
                  children: [
                    CarouselSlider.builder(
                      itemCount: 3,
                      options: CarouselOptions(
                        height: 230,
                        viewportFraction: 1.0,
                        enlargeCenterPage: false,
                        onPageChanged: (index, reason) {
                          setState(() {
                            currentCarouselIndex = index;
                          });
                        },
                      ),
                      itemBuilder: (context, index, realIndex) {
                        return Padding(
                          padding: EdgeInsets.all(20),
                          child: Stack(
                            children: [
                              // Custom image showing groceries in a bag
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Container(
                                  color: Color(0xFFE0F7FA),
                                  child: Center(
                                    child: Image.asset(
                                      bundleImages[index], // Tampilkan gambar berdasarkan index
                                      fit: BoxFit.cover,
                                      width: double.infinity,
                                      height: 230,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),

                    // Carousel indicators
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(3, (index) {
                        return Container(
                          width: 8.0,
                          height: 8.0,
                          margin: EdgeInsets.symmetric(horizontal: 4.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: currentCarouselIndex == index
                                ? Colors.blue
                                : Colors.grey.shade300,
                          ),
                        );
                      }),
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
              Positioned(
                top: 20,
                right: 20,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    icon: Icon(Icons.favorite_border, color: Colors.black),
                    onPressed: () {},
                  ),
                ),
              ),
            ],
          ),

          // Bundle details
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Bundle title and quantity selector
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Bundle Pack',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.blue,
                            ),
                            child: IconButton(
                              icon: Icon(Icons.add, color: Colors.white),
                              onPressed: () {
                                setState(() {
                                  quantity++;
                                });
                              },
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            '$quantity',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.grey.shade300),
                              color: Colors.white,
                            ),
                            child: IconButton(
                              icon: Icon(Icons.remove, color: Colors.black),
                              onPressed: () {
                                setState(() {
                                  if (quantity > 1) quantity--;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  SizedBox(height: 8),

                  // Price
                  Row(
                    children: [
                      Text(
                        '\$30',
                        style: TextStyle(
                          fontSize: 16,
                          decoration: TextDecoration.lineThrough,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(width: 8),
                      Text(
                        '\$20',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 16),

                  // Information grid
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _buildInfoColumn('25 Kg', 'Weight'),
                      _buildInfoColumn('Medium', 'Size'),
                      _buildInfoColumn('17', 'Items'),
                    ],
                  ),

                  SizedBox(height: 20),

                  // Pack details
                  Text(
                    'Pack Details',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),

                  SizedBox(height: 12),

                  // Pack items list
                  Expanded(
                    child: ListView.builder(
                      itemCount: 4,
                      padding: EdgeInsets.zero,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.symmetric(vertical: 8.0),
                          child: Row(
                            children: [
                              Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Color(0xFFE0F7FA),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Image.asset(
                                  'assets/images/brocoli.jpg',
                                  fit: BoxFit.cover,
                                  width: 40,
                                  height: 40,
                                ),
                              ),
                              SizedBox(width: 12),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Cabbage',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Text(
                                '2 Kg',
                                style: TextStyle(color: Colors.grey[600]),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),

                  SizedBox(height: 5),

                  // review
                  InkWell(
                    onTap: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Review",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),

                        Row(
                          children: [
                            // Star
                            Icon(Icons.star, color: Colors.amber),
                            Icon(Icons.star, color: Colors.amber),
                            Icon(Icons.star, color: Colors.amber),
                            Icon(Icons.star, color: Colors.amber),
                            Icon(Icons.star, color: Colors.amber),

                            // Chevron right
                            Icon(Icons.chevron_right, color: Colors.grey),
                          ],
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 10),

                  // Button cart & Buy Now
                  Row(
                    children: [
                      // Button Cart
                      Container(
                        width: 80,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Colors.grey.shade300),
                          color: Colors.white,
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.shopping_cart, color: Colors.black),
                        ),
                      ),

                      // Spacer antara kedua tombol (opsional)
                      SizedBox(width: 10),

                      // Button Buy Now (Menggunakan Expanded)
                      Expanded(
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.blue, // Warna biru
                          ),
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "Buy Now",
                              style: TextStyle(
                                color: Colors.white, // Teks putih
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoColumn(String value, String label) {
    return Column(
      children: [
        Text(
          value,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        Text(label, style: TextStyle(fontSize: 14, color: Colors.grey)),
      ],
    );
  }
}
