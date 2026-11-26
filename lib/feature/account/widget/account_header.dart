import 'package:flutter/material.dart';

class AccountHeader extends StatelessWidget {
  final String name;
  final String email;

  const AccountHeader({
    super.key,
    this.name = "Afsar Hossen",
    this.email = "lmshuvo97@gmail.com",
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 22),
          child: Row(
            children: [
              Container(
                width: 64,
                height: 64,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xffA8E6F0),
                      Color(0xffF3B8E0),
                    ],
                  ),
                ),
                child: Icon(
                  Icons.person,
                  size: 34,
                  color: Colors.white,
                ),
              ),
              SizedBox(width: 20),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          name,
                          style: TextStyle(
                            fontFamily: "Gilroy",
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff181725),
                          ),
                        ),
                        SizedBox(width: 8),
                        Icon(
                          Icons.edit_outlined,
                          size: 18,
                          color: Color(0xff53B175),
                        ),
                      ],
                    ),
                    SizedBox(height: 4),
                    Text(
                      email,
                      style: TextStyle(
                        fontFamily: "Gilroy",
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff7C7C7C),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Divider(
          color: Color(0xffE2E2E2),
          height: 1,
          thickness: 1,
        ),
      ],
    );
  }
}
