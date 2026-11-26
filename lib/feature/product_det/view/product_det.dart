import 'package:flutter/material.dart';
import 'package:groceries_app/feature/auth_screen/widget/button_widget.dart';

class ProductDet extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 390.44,
            padding: EdgeInsets.symmetric(horizontal: 0),
            decoration: BoxDecoration(
              //backgroundBlendMode:
              color: const Color(0xffF2F3F2),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(25),
                bottomLeft: Radius.circular(25),
              ),
            ),
            child: Column(
              children: [
                SizedBox(height: 45),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      constraints: const BoxConstraints(
                        minWidth: 10,
                        minHeight: 18,
                      ),
                      icon: Icon(Icons.arrow_back_ios_new_rounded),
                    ),
                    IconButton(
                      onPressed: () {},
                      constraints: const BoxConstraints(
                        minWidth: 18,
                        minHeight: 18,
                      ),
                      icon: Icon(Icons.ios_share),
                    ),
                  ],
                ),
                SizedBox(height: 27.87),
                Image.asset(
                  width: 329.33,
                  height: 199.18,
                  "assets/Image/apple.png",
                  alignment: Alignment.center,
                  //fit: BoxFit.contain,
                ),
                SizedBox(height: 37.84),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(26),
            child: Column(
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Naturel Red Apple",
                          style: TextStyle(
                            fontFamily: "Gilroy",
                            color: Color(0xff181725),
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.1,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "1kg, Price",
                          style: TextStyle(
                            fontFamily: "Gilroy",
                            color: Color(0xff7C7C7C),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.0,
                            height: 16 / 18,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Icon(
                      Icons.favorite_border,
                      size: 24,
                      color: Color(0xff7C7C7C),
                    ),
                  ],
                ),
                //next
                SizedBox(height: 25),
                Row(
                  spacing: 20,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.add),
                    Container(
                      width: 45.66,
                      height: 45.66,
                      decoration: BoxDecoration(
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.circular(17),
                        border: Border.all(width: 1, color: Color(0xffE2E2E2)),
                      ),
                      child: Center(
                        child: Text(
                          "1",
                          style: TextStyle(
                            fontFamily: "Gilroy",
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            height: 18 / 18,
                            letterSpacing: 0.1,
                          ),
                        ),
                      ),
                    ),
                    Icon(Icons.add, color: Color(0xff53B175)),
                    Spacer(),
                    Text(
                      "\$4.99",
                      style: TextStyle(
                        fontFamily: "Gilroy",
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        height: 24 / 18,
                        letterSpacing: 0.1,
                      ),
                    ),
                  ],
                ),
                //next2
                SizedBox(height: 25),
                Divider(
                  height: 1,
                  color: Color(0xffE2E2E2).withValues(alpha: 70),
                ),
                SizedBox(height: 20),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Product Detail',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF181725),
                      ),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down_rounded,
                      color: Color(0xFF181725),
                      size: 24,
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const Text(
                  'Apples Are Nutritious. Apples May Be Good For Weight Loss. Apples May Be Good For Your Heart. As Part Of A Healtful And Varied Diet.',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF7C7C7C),
                    height: 1.6,
                  ),
                ),
                const SizedBox(height: 18),
                const Divider(
                  color: Color(0xB3E2E2E2),
                  thickness: 1,
                  height: 1,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 18),
                  child: Row(
                    children: [
                      const Text(
                        'Nutritions',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF181725),
                        ),
                      ),
                      const Spacer(),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xFFEBEBEB),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: const Text(
                          '100gr',
                          style: TextStyle(
                            fontSize: 9,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF7C7C7C),
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      const Icon(
                        Icons.keyboard_arrow_right_rounded,
                        color: Color(0xFF181725),
                        size: 24,
                      ),
                    ],
                  ),
                ),
                Divider(color: Color(0xB3E2E2E2), thickness: 1, height: 1),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 18),
                  child: Row(
                    children: [
                      const Text(
                        'Review',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF181725),
                        ),
                      ),
                      Spacer(),
                      Row(
                        children: List.generate(
                          5,
                          (index) => const Padding(
                            padding: EdgeInsets.only(right: 4),
                            child: Icon(
                              Icons.star_rounded,
                              color: Color(0xFFF3603F),
                              size: 18,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Icon(
                        Icons.keyboard_arrow_right_rounded,
                        color: Color(0xFF181725),
                        size: 24,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                ButtonWidget(text: "Add To Basket"),
                SizedBox(height: 5),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
