import 'package:flutter/material.dart';
import 'package:groceries_app/feature/auth_screen/widget/button_widget.dart';
import 'package:groceries_app/feature/favourite/model/favourite_item.dart';
import 'package:groceries_app/feature/favourite/widget/favourite_item_tile.dart';

class FavouriteScreen extends StatelessWidget {
  FavouriteScreen({super.key});

  final List<FavouriteItem> favouriteItems = [
    FavouriteItem(
      imagePath: "assets/Image/apple.png",
      name: "Sprite Can",
      subtitle: "325ml, Price",
      price: "\$1.50",
    ),
    FavouriteItem(
      imagePath: "assets/Image/rice.png",
      name: "Diet Coke",
      subtitle: "355ml, Price",
      price: "\$1.99",
    ),
    FavouriteItem(
      imagePath: "assets/Image/apple.png",
      name: "Apple & Grape Juice",
      subtitle: "2L, Price",
      price: "\$15.50",
    ),
    FavouriteItem(
      imagePath: "assets/Image/فلفل.png",
      name: "Coca Cola Can",
      subtitle: "325ml, Price",
      price: "\$4.99",
    ),
    FavouriteItem(
      imagePath: "assets/Image/pules.png",
      name: "Pepsi Can",
      subtitle: "330ml, Price",
      price: "\$4.99",
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
            Padding(
              padding: EdgeInsets.symmetric(vertical: 18),
              child: Center(
                child: Text(
                  "Favourite",
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
            Expanded(
              child: ListView.separated(
                padding: EdgeInsets.zero,
                itemCount: favouriteItems.length,
                separatorBuilder: (context, index) => Divider(
                  color: Color(0xffE2E2E2),
                  height: 1,
                  thickness: 1,
                  indent: 25,
                  endIndent: 25,
                ),
                itemBuilder: (context, index) {
                  return FavouriteItemTile(item: favouriteItems[index]);
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 25, right: 25, top: 12, bottom: 100),
              child: ButtonWidget(text: "Add All To Cart"),
            ),
          ],
        ),
      ),
    );
  }
}
