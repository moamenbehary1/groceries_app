import 'package:flutter/material.dart';

class GroceriesItems extends StatelessWidget {
  final String imagePath;
  final String itemName;
  final Color color;
  const GroceriesItems({
    super.key,
    required this.imagePath,
    required this.itemName, required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 16),
      height: 105,
      width: 248.19,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: color.withValues(alpha: 0.15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(imagePath, width: 70, height: 70),
          const SizedBox(width: 15),
          Text(
            itemName,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              height: 1,
              letterSpacing: 0,
              color: Color(0xff181725),
              fontFamily: "Gilroy",
            ),
          ),
        ],
      ),
    );
  }
}
