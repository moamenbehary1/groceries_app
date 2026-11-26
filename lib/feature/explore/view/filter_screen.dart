import 'package:flutter/material.dart';
import 'package:groceries_app/feature/auth_screen/widget/button_widget.dart';
import 'package:groceries_app/feature/explore/view/explore_tem.dart';
import 'package:groceries_app/feature/explore/widget/chack_box.dart';

class FilterScreen extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      appBar: AppBar(
        backgroundColor: Color(0xffffffff),
        toolbarHeight: 105,
        centerTitle: true,
        leading: Icon(Icons.more_outlined),
        title: Text(
          "Filters",
          style: TextStyle(
            color: Color(0xff181725),
            fontSize: 20,
            fontWeight: FontWeight(400),
            height: 20 / 18,
            letterSpacing: 0,
            fontFamily: "Gilroy",
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 30),
            width: double.infinity,
            height: 842,
            decoration: BoxDecoration(
              color: Color(0xffF2F3F2),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Categories",
                  style: TextStyle(
                    color: Color(0xff181725),
                    fontSize: 24,
                    fontWeight: FontWeight(600),
                    height: 1,
                    letterSpacing: 0,
                    fontFamily: "Gilroy",
                  ),
                ),
                SizedBox(height: 25),
                RoundedCheckBox(
                  value: true,
                  onChanged: (bool value) {},
                  title: "Eggs",
                ),
                SizedBox(height: 20),
                RoundedCheckBox(
                  value: false,
                  onChanged: (bool value) {},
                  title: "Noodles & Pasta",
                ),
                SizedBox(height: 20),
                RoundedCheckBox(
                  value: false,
                  onChanged: (bool value) {},
                  title: "Chips & Crisps",
                ),
                SizedBox(height: 20),
                RoundedCheckBox(
                  value: false,
                  onChanged: (bool value) {},
                  title: "Fast Food",
                ),
                SizedBox(height: 40),
                Text(
                  "Brand",
                  style: TextStyle(
                    color: Color(0xff181725),
                    fontSize: 24,
                    fontWeight: FontWeight(600),
                    height: 1,
                    letterSpacing: 0,
                    fontFamily: "Gilroy",
                  ),
                ),
                SizedBox(height: 25),
                RoundedCheckBox(
                  value: false,
                  onChanged: (bool value) {},
                  title: "Eggs",
                ),
                SizedBox(height: 20),
                RoundedCheckBox(
                  value: true,
                  onChanged: (bool value) {},
                  title: "Noodles & Pasta",
                ),
                SizedBox(height: 20),
                RoundedCheckBox(
                  value: false,
                  onChanged: (bool value) {},
                  title: "Chips & Crisps",
                ),
                SizedBox(height: 20),
                RoundedCheckBox(
                  value: false,
                  onChanged: (bool value) {},
                  title: "Fast Food",
                ),
                Spacer(),
                ButtonWidget(
                  text: 'Apply Filter',
                  ontap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => ExploreTem()),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
