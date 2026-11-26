import 'package:flutter/material.dart';
import 'package:groceries_app/feature/cart/model/cart_item.dart';

class CartItemTile extends StatelessWidget {
  final CartItem item;

  const CartItemTile({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            item.imagePath,
            width: 70,
            height: 65,
            fit: BoxFit.contain,
          ),
          SizedBox(width: 22),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        item.name,
                        style: TextStyle(
                          fontFamily: "Gilroy",
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff181725),
                        ),
                      ),
                    ),
                    Icon(
                      Icons.close,
                      size: 20,
                      color: Color(0xffB3B3B3),
                    ),
                  ],
                ),
                SizedBox(height: 4),
                Text(
                  item.subtitle,
                  style: TextStyle(
                    fontFamily: "Gilroy",
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff7C7C7C),
                  ),
                ),
                SizedBox(height: 14),
                Row(
                  children: [
                    QuantityButton(
                      icon: Icons.remove,
                      iconColor: Color(0xffB3B3B3),
                    ),
                    SizedBox(
                      width: 38,
                      child: Center(
                        child: Text(
                          "${item.quantity}",
                          style: TextStyle(
                            fontFamily: "Gilroy",
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff181725),
                          ),
                        ),
                      ),
                    ),
                    QuantityButton(
                      icon: Icons.add,
                      iconColor: Color(0xff53B175),
                    ),
                    Spacer(),
                    Text(
                      item.price,
                      style: TextStyle(
                        fontFamily: "Gilroy",
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff181725),
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

class QuantityButton extends StatelessWidget {
  final IconData icon;
  final Color iconColor;

  const QuantityButton({
    super.key,
    required this.icon,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(17),
        border: Border.all(
          color: Color(0xffF0F0F0),
          width: 1.2,
        ),
      ),
      child: Icon(
        icon,
        color: iconColor,
        size: 22,
      ),
    );
  }
}
