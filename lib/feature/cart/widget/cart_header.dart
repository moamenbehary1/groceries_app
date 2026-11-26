import 'package:flutter/material.dart';

class CartHeader extends StatelessWidget {
  final String title;

  const CartHeader({super.key, this.title = "My Cart"});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 18),
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                fontFamily: "Gilroy",
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xff181725),
              ),
            ),
          ),
        ),
        Divider(
          color: Color(0xffE2E2E2),
          height: 1,
          thickness: 1,
        ),
      ],
    );
  }
}
