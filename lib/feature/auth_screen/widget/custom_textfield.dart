import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  final String? hintText;
  final String? text;
  final bool? obscureText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;

  const CustomTextfield({
    super.key,
    required this.hintText,
    required this.text,
    this.obscureText,
    this.suffixIcon,
    this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text ?? "",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight(600),
            color: Color(0xff7C7C7C),
            height: 29 / 16,
            letterSpacing: 0,
          ),
        ),
        SizedBox(height: 9),
        TextFormField(
          cursorColor: Color(0xff181725),
          cursorHeight: 25,
          cursorWidth: 2,
          obscureText: obscureText ?? false,
          obscuringCharacter: "⚫",
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight(400),
            color: Color(0xff181725),
            height: 29 / 16,
            letterSpacing: 0,
          ),
          decoration: InputDecoration(
            suffixIcon: suffixIcon,
            prefixIcon: prefixIcon,
            hintText: hintText,
            hintStyle: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight(400),
              color: Color(0xff181725),
              height: 29 / 16,
              letterSpacing: 0,
            ),
            border: UnderlineInputBorder(
              
              borderSide: BorderSide(color: Color(0xffE2E2E2), width: 1, style: BorderStyle.none),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xffE2E2E2), width: 1),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xffE2E2E2), width: 1),
            ),
            errorBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color.fromARGB(255, 245, 0, 0),
                width: 1,
              ),
            ),
            focusedErrorBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color.fromARGB(255, 245, 0, 0),
                width: 1,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
