import 'package:flutter/material.dart';

class Itemfil extends StatelessWidget {
  final String title;
  const Itemfil({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right:25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: Color(0xff181725),
              fontFamily: "Gilroy",
            ),
          ),
          Text(
            "See All",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Color(0xff53B175),
              fontFamily: "Gilroy",
            ),
          ),
        ],
      ),
    );
  }
}
