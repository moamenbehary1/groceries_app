import 'package:flutter/material.dart';
import 'package:groceries_app/feature/home/modal/Item.dart';
import 'package:groceries_app/feature/home/widget/gro_items.dart';
import 'package:groceries_app/feature/home/widget/item_fil.dart';
import 'package:groceries_app/feature/home/widget/list_item.dart';

class GroceriesSection extends StatelessWidget {
  const GroceriesSection({
    super.key,
    required this.items,
  });

  final List<GroceryItem> items;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Itemfil(title: "Groceries"),
        const SizedBox(height: 20),
        ListItems(
          scrollDirection: Axis.horizontal,
          items: items,
          height: 106,
          spacing: 15,
          itemBuilder: (BuildContext context, item, int index) {
            return GroceriesItems(
              imagePath: item.imagePath,
              itemName: item.itemName,
              color: item.color ?? const Color(0xffF8A44C),
            );
          },
        ),
      ],
    );
  }
}