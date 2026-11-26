import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const new({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
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
    );
  }
}
