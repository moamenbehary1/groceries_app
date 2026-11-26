import 'package:flutter/material.dart';
import 'package:groceries_app/feature/explore/view/filter_screen.dart';
import 'package:groceries_app/feature/home/widget/Item_card.dart';

class ExploreTem extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor: Color(0xffffffff),
        centerTitle: true,
        title: Text(
          "Beverages",
          style: TextStyle(
            color: Color(0xff181725),
            fontSize: 20,
            fontWeight: FontWeight(400),
            height: 20 / 18,
            letterSpacing: 0,
            fontFamily: "Gilroy",
          ),
        ),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios_new_rounded),
        ),
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FilterScreen()),
              );
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Icon(Icons.filter_list_alt),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
        child: Column(
          children: [
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  childAspectRatio: 0.76,
                  //mainAxisExtent: ,
                ),
                itemCount: 8,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ExploreTem(),
                        ),
                      );
                    },
                    child: ItemCard(
                      imagePath: "assets/Image/apple.png",
                      itemName: "Red Apple",
                      itemDescription: "1kg, Priceg",
                      itemPrice: "\$7.0",
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
