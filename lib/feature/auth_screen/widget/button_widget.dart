import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String? text;
  const ButtonWidget({super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 67,
      decoration: BoxDecoration(
        color: Color(0xff53B175),
        borderRadius: BorderRadius.circular(19),
      ),
      child: Center(
        child: Text(
          text??"",
          style: TextStyle(
            color: Color(0xffffffff),
            fontSize: 18,
            fontWeight: FontWeight(600),
          ),
        ),
      ),
    );
  }
}
