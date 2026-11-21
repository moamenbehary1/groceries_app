import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 25),
          child: Image.asset(
            "assets/Image/logo.png",
            width: 48,
            height: 56,
          ),
        ),
        const SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.only(right: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Icon(Icons.location_on_rounded, color: Color(0xff4C4F4D)),
              SizedBox(height: 7.44),
              Text(
                "Dhaka, Banassre",
                style: TextStyle(
                  color: Color(0xff4C4F4D),
                  fontSize: 18,
                  fontWeight: FontWeight(600),
                  fontFamily: "Gilroy",
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.only(right: 25),
          child: TextFormField(
            decoration: InputDecoration(
              hintText: "Search",
              hintStyle: const TextStyle(
                color: Color(0xff7C7C7C),
                fontSize: 14,
                fontWeight: FontWeight(600),
                fontFamily: "Gilroy",
              ),
              filled: true,
              fillColor: const Color(0xFFF2F3F2),
              prefixIcon: const Icon(
                Icons.search,
                color: Color(0xff7C7C7C),
                size: 35,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none,
              ),
              contentPadding: const EdgeInsets.symmetric(vertical: 16),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
      ],
    );
  }
}