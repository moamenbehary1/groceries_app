import 'package:flutter/material.dart';
import 'package:groceries_app/feature/home/modal/Item.dart';
import 'package:groceries_app/feature/home/widget/Item_card.dart';
import 'package:groceries_app/feature/home/widget/item_fil.dart';
import 'package:groceries_app/feature/home/widget/list_item.dart';

class ProductSection extends StatelessWidget {
  const ProductSection({
    super.key,
    this.title,
    required this.items,
  });

  final String? title;
  final List<GroceryItem> items;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        if (title != null) ...[
          Itemfil(title: title!),
          const SizedBox(height: 20),
        ],
        ListItems(
          scrollDirection: Axis.horizontal,
          items: items,
          height: 251.51,
          spacing: 15,
          itemBuilder: (BuildContext context, item, int index) {
            return ItemCard(
              imagePath: item.imagePath,
              itemName: item.itemName,
              itemDescription: item.itemDescription ?? "1kg, Priceg",
              itemPrice: item.itemPrice ?? "\$7.99",
            );
          },
        ),
      ],
    );
  }
}