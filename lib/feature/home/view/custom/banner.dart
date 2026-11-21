import 'package:flutter/material.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 25),
      child: Image.asset(
        "assets/Image/banner.png",
        height: 115,
        width: 400,
        fit: BoxFit.cover,
      ),
    );
  }
}