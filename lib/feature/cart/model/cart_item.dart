class CartItem {
  final String imagePath;
  final String name;
  final String subtitle;
  final String price;
  final int quantity;

  CartItem({
    required this.imagePath,
    required this.name,
    required this.subtitle,
    required this.price,
    this.quantity = 1,
  });
}
