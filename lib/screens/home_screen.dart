import 'package:flutter/material.dart';
import 'product_list_screen.dart';
import 'cart_screen.dart';
import 'categories_screen.dart';
import 'profile_screen.dart';

class HomeScreen extends StatelessWidget {
  final TextEditingController _searchController = TextEditingController();

  void _handleSearch(BuildContext context) {
    final query = _searchController.text.toLowerCase();

    if (query.contains('product') || query.contains('shop')) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ProductListScreen()),
      );
    } else if (query.contains('cart')) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => CartScreen()),
      );
    } else if (query.contains('category') || query.contains('electronics')) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => CategoriesScreen()),
      );
    } else if (query.contains('profile')) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ProfileScreen()),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('No match found for "$query"')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7EBF6), // Light lavender background
      appBar: AppBar(
        backgroundColor: const Color(0xFFDAB6E7),
        title: Row(
          children: [
            Expanded(
              child: TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  hintText: 'Search in SamaanBazaar...',
                  hintStyle: const TextStyle(color: Colors.white70),
                  prefixIcon: const Icon(Icons.search, color: Colors.white),
                  filled: true,
                  fillColor: const Color(0xFFDAB6E7),
                  contentPadding: const EdgeInsets.symmetric(vertical: 8),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                ),
                onSubmitted: (_) => _handleSearch(context),
              ),
            ),
            const SizedBox(width: 8),
            TextButton(
              onPressed: () {},
              child: const Text('Login', style: TextStyle(color: Colors.white)),
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Signup', style: TextStyle(color: Colors.white)),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CartScreen()),
                );
              },
              icon: const Icon(Icons.shopping_cart, color: Colors.white),
            ),
          ],
        ),
      ),

      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),

              // 🖼️ Local Logo (Replaced Banner)
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  'assets/samaanbazaar_logo.jpeg',
                  width: 700,
                  height: 200,
                  fit: BoxFit.contain,
                  errorBuilder: (context, error, stackTrace) => const Icon(
                    Icons.image_not_supported,
                    size: 80,
                    color: Colors.grey,
                  ),
                ),
              ),

              const SizedBox(height: 25),

              // 🏠 Welcome text
              const Text(
                'Welcome to SamaanBazaar!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Find amazing handmade and craft products',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),

              const SizedBox(height: 30),

              // 🛒 Shop Now button
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFDAB6E7),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding:
                  const EdgeInsets.symmetric(horizontal: 32, vertical: 14),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProductListScreen()),
                  );
                },
                child: const Text(
                  'Shop Now',
                  style:
                  TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ),

              const SizedBox(height: 25),

              // 🌸 Bottom navigation buttons
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    color: const Color(0xFFDAB6E7).withOpacity(0.2),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildNavButton(context, Icons.home, "Home", null),
                      _buildNavButton(context, Icons.category, "Categories",
                          CategoriesScreen()),
                      _buildNavButton(context, Icons.shopping_cart, "Cart",
                          CartScreen()),
                      _buildNavButton(context, Icons.person, "Profile",
                          ProfileScreen()),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 40),

              const Text(
                '© 2025 SamaanBazaar — All Rights Reserved',
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  // 🌐 Bottom button helper
  Widget _buildNavButton(
      BuildContext context, IconData icon, String label, Widget? screen) {
    return Column(
      children: [
        IconButton(
          icon: Icon(icon, color: Colors.deepPurple),
          onPressed: () {
            if (screen != null) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => screen),
              );
            }
          },
        ),
        Text(label, style: const TextStyle(color: Colors.deepPurple)),
      ],
    );
  }
}
