import 'package:flutter/material.dart';
import 'package:groceries_app/feature/home/modal/Item.dart';
import 'package:groceries_app/feature/home/view/custom/banner.dart';
import 'package:groceries_app/feature/home/view/custom/gro_sec.dart';
import 'package:groceries_app/feature/home/view/custom/header.dart';
import 'package:groceries_app/feature/home/view/custom/product.dart';
class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<GroceryItem> exclusiveOffers = [
    GroceryItem(
      color: null,
      imagePath: "assets/Image/apple.png",
      itemName: "Red Apple",
      itemDescription: "1kg, Priceg",
      itemPrice: "7.99",
    ),
    GroceryItem(
      imagePath: "assets/Image/فلفل.png",
      itemName: "Organic Bananas",
      itemDescription: "7pcs, Priceg",
      itemPrice: "4.99",
    ),
  ];
  final List<GroceryItem> groitem = [
    GroceryItem(imagePath: "assets/Image/pules.png", itemName: "Pulses"),
    GroceryItem(
      imagePath: "assets/Image/rice.png",
      itemName: "Rice",
      color: Color(0xff53B175),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 50, bottom: 50, left: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const HomeHeader(),
              const SizedBox(height: 20),
              const HomeBanner(),
              const SizedBox(height: 30),
              ProductSection(
                title: "Exclusive Offer",
                items: exclusiveOffers,
              ),
              SizedBox(height: 30),
              ProductSection(
                title: "Best Selling",
                items: exclusiveOffers,
              ),
              const SizedBox(height: 30),
              GroceriesSection(items: groitem),
              SizedBox(height: 20),
              ProductSection(
                items: exclusiveOffers,
              ),
              SizedBox(height: 50,)
              //اسف  علي التاخير في التسلييم 
              
            ],
          ),
        ),
      ),
    );
  }
}