import 'package:flutter/material.dart';

class LogoutButton extends StatelessWidget {
  final String title;

  const LogoutButton({super.key, this.title = "Log Out"});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 67,
      padding: EdgeInsets.symmetric(horizontal: 24),
      decoration: BoxDecoration(
        color: Color(0xffF2F3F2),
        borderRadius: BorderRadius.circular(19),
      ),
      child: Row(
        children: [
          Icon(
            Icons.logout_rounded,
            color: Color(0xff53B175),
            size: 22,
          ),
          Expanded(
            child: Center(
              child: Text(
                title,
                style: TextStyle(
                  fontFamily: "Gilroy",
                  color: Color(0xff53B175),
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          SizedBox(width: 22),
        ],
      ),
    );
  }
}
