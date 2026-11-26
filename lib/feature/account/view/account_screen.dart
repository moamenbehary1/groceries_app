import 'package:flutter/material.dart';
import 'package:groceries_app/feature/account/model/account_menu_item.dart';
import 'package:groceries_app/feature/account/widget/account_header.dart';
import 'package:groceries_app/feature/account/widget/account_menu_tile.dart';
import 'package:groceries_app/feature/account/widget/logout_button.dart';

class AccountScreen extends StatelessWidget {
  AccountScreen({super.key});

  final List<AccountMenuItem> menuItems = [
    AccountMenuItem(icon: Icons.shopping_bag_outlined, title: "Orders"),
    AccountMenuItem(icon: Icons.badge_outlined, title: "My Details"),
    AccountMenuItem(icon: Icons.location_on_outlined, title: "Delivery Address"),
    AccountMenuItem(icon: Icons.credit_card_outlined, title: "Payment Methods"),
    AccountMenuItem(icon: Icons.confirmation_number_outlined, title: "Promo Card"),
    AccountMenuItem(icon: Icons.notifications_none_rounded, title: "Notifications"),
    AccountMenuItem(icon: Icons.help_outline_rounded, title: "Help"),
    AccountMenuItem(icon: Icons.info_outline_rounded, title: "About"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Column(
            children: [
              AccountHeader(),
              Column(
                children: List.generate(
                  menuItems.length,
                  (index) => AccountMenuTile(item: menuItems[index]),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 25, right: 25, top: 36, bottom: 100),
                child: LogoutButton(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
