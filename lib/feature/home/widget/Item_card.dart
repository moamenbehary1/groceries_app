// ignore_for_file: file_names

import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  final String imagePath;
  final String itemName;
  final String itemDescription;
  final String itemPrice;
  const ItemCard({
    super.key,
    required this.imagePath,
    required this.itemName,
    required this.itemDescription,
    required this.itemPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      width: 173.32,
      height: 247.51,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: Color(0xffE2E2E2),
        border: Border.all(width: 1, color: Color(0xffE2E2E2)),
        backgroundBlendMode: BlendMode.overlay,
        // boxShadow: [
        //   BoxShadow(
        //     color: Color(0xff000000),
        //     blurRadius: 12,
        //     spreadRadius: 0,
        //     offset: Offset(0, 6),
        //     // blurStyle: BlurStyle.normal,
        //   ),
        // ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 6.5),
          Center(
            child: Image.asset(
              imagePath,
              width: 110,
              height: 70,
              //fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 34),
          Text(
            itemName,
            style: TextStyle(
              fontSize: 16,
              letterSpacing: 0.1,
              height: 18 / 16,
              fontWeight: FontWeight(800),
              color: Color(0xff181725),
              fontFamily: "Gilroy",
            ),
          ),
          SizedBox(height: 5),
          Text(
            itemDescription,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight(400),
              color: Color(0xff7C7C7C),
              fontFamily: "Gilroy",
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Center(
                child: Text(
                  "\$$itemPrice",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight(600),
                    color: Color(0xff181725),
                    fontFamily: "Gilroy",
                  ),
                ),
              ),
              Container(
                width: 45.67,
                height: 45.67,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                  color: Color(0xff53B175),
                ),
                child: Center(child: Icon(Icons.add, color: Colors.white)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
