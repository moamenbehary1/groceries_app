import 'package:flutter/material.dart';

class CheckoutButton extends StatelessWidget {
  final String title;
  final String totalPrice;

  const CheckoutButton({
    super.key,
    this.title = "Go to Checkout",
    this.totalPrice = "\$12.96",
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 67,
      padding: EdgeInsets.symmetric(horizontal: 22),
      decoration: BoxDecoration(
        color: Color(0xff53B175),
        borderRadius: BorderRadius.circular(19),
      ),
      child: Row(
        children: [
          SizedBox(width: 45),
          Expanded(
            child: Center(
              child: Text(
                title,
                style: TextStyle(
                  fontFamily: "Gilroy",
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 6, vertical: 4),
            decoration: BoxDecoration(
              color: Color(0xff489E67),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Text(
              totalPrice,
              style: TextStyle(
                fontFamily: "Gilroy",
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
