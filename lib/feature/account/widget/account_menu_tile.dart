import 'package:flutter/material.dart';
import 'package:groceries_app/feature/account/model/account_menu_item.dart';

class AccountMenuTile extends StatelessWidget {
  final AccountMenuItem item;

  const AccountMenuTile({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 18),
          child: Row(
            children: [
              Icon(
                item.icon,
                size: 22,
                color: Color(0xff181725),
              ),
              SizedBox(width: 20),
              Expanded(
                child: Text(
                  item.title,
                  style: TextStyle(
                    fontFamily: "Gilroy",
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff181725),
                  ),
                ),
              ),
              Icon(
                Icons.arrow_forward_ios_rounded,
                size: 16,
                color: Color(0xff181725),
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
