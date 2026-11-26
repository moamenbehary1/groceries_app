import 'package:flutter/material.dart';
import 'package:groceries_app/feature/cart/model/cart_item.dart';
import 'package:groceries_app/feature/cart/widget/cart_header.dart';
import 'package:groceries_app/feature/cart/widget/cart_item_tile.dart';
import 'package:groceries_app/feature/cart/widget/checkout_button.dart';

class CartScreen extends StatelessWidget {
  CartScreen({super.key});

  final List<CartItem> cartItems = [
    CartItem(
      imagePath: "assets/Image/فلفل.png",
      name: "Bell Pepper Red",
      subtitle: "1kg, Price",
      price: "\$4.99",
      quantity: 1,
    ),
    CartItem(
      imagePath: "assets/Image/cha.png",
      name: "Egg Chicken Red",
      subtitle: "4pcs, Price",
      price: "\$1.99",
      quantity: 1,
    ),
    CartItem(
      imagePath: "assets/Image/pngfuel 6.png",
      name: "Organic Bananas",
      subtitle: "12kg, Price",
      price: "\$3.00",
      quantity: 1,
    ),
    CartItem(
      imagePath: "assets/Image/pules.png",
      name: "Ginger",
      subtitle: "250gm, Price",
      price: "\$2.99",
      quantity: 1,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            CartHeader(),
            Expanded(
              child: ListView.separated(
                padding: EdgeInsets.zero,
                itemCount: cartItems.length,
                separatorBuilder: (context, index) => Divider(
                  color: Color(0xffE2E2E2),
                  height: 1,
                  thickness: 1,
                  indent: 25,
                  endIndent: 25,
                ),
                itemBuilder: (context, index) {
                  return CartItemTile(item: cartItems[index]);
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 25, right: 25, top: 12, bottom: 100),
              child: CheckoutButton(
                title: "Go to Checkout",
                totalPrice: "\$12.96",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
