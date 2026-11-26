import 'package:flutter/material.dart';
import 'package:groceries_app/feature/favourite/model/favourite_item.dart';

class FavouriteItemTile extends StatelessWidget {
  final FavouriteItem item;

  const FavouriteItemTile({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 24),
      child: Row(
        children: [
          Image.asset(
            item.imagePath,
            width: 55,
            height: 55,
            fit: BoxFit.contain,
          ),
          SizedBox(width: 24),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.name,
                  style: TextStyle(
                    fontFamily: "Gilroy",
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff181725),
                  ),
                ),
                SizedBox(height: 6),
                Text(
                  item.subtitle,
                  style: TextStyle(
                    fontFamily: "Gilroy",
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff7C7C7C),
                  ),
                ),
              ],
            ),
          ),
          Text(
            item.price,
            style: TextStyle(
              fontFamily: "Gilroy",
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Color(0xff181725),
            ),
          ),
          SizedBox(width: 14),
          Icon(
            Icons.arrow_forward_ios_rounded,
            size: 16,
            color: Color(0xff181725),
          ),
        ],
      ),
    );
  }
}
