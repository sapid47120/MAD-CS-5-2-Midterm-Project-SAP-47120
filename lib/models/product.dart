class Product {
  final String name;
  final String description;
  final double price;
  final String image;

  Product({
    required this.name,
    required this.description,
    required this.price,
    required this.image,
  });
}

final List<Product> products = [
  // 🧡 Existing handmade products (still use assets/)
  Product(
    name: 'Decorative Lamp',
    description: 'A handmade decorative lamp perfect for home décor.',
    price: 2500,
    image: 'assets/decorative_lamp.jpg',
  ),
  Product(
    name: 'Handmade Jewelry Set',
    description: 'Beautifully crafted jewelry set made with traditional designs.',
    price: 1800,
    image: 'assets/handmade_jewelry.jpg',
  ),
  Product(
    name: 'Clay Pottery Set',
    description: 'Classic clay pottery set that adds charm to your dining table.',
    price: 2200,
    image: 'assets/clay_pottery.jpg',
  ),

  // 💻 New electronic products (stored in new_images/)
  Product(
    name: 'P47 Bluetooth Headphones',
    description: 'Wireless Bluetooth headphones with powerful bass and comfort fit.',
    price: 3200,
    image: 'new_images/bluetooth_headphones.jpg',
  ),
  Product(
    name: 'i12 AirPods',
    description: 'TWS i12 wireless earbuds with long battery and clear sound.',
    price: 2800,
    image: 'new_images/i12_airpods.jpg',
  ),
  Product(
    name: 'Lenovo IdeaPad 330',
    description: 'Lenovo IdeaPad 330 laptop with Intel Core processor and HD display.',
    price: 78000,
    image: 'new_images/lenovo_ideapad.jpg',
  ),
  Product(
    name: 'ThinkPad Laptop',
    description: 'Lenovo ThinkPad — strong, durable, and perfect for students or business use.',
    price: 95000,
    image: 'new_images/thinkpad_laptop.jpg',
  ),
  Product(
    name: 'HP Laptop',
    description: 'HP Pavilion laptop ideal for office, study, and everyday tasks.',
    price: 85000,
    image: 'new_images/hp_laptop.jpg',
  ),
];
