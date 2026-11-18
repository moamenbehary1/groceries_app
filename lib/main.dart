import 'package:flutter/material.dart';
import 'package:groceries_app/feature/auth_screen/view/login_screen.dart';
void main() {
  runApp(MainScreen());
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Groceries App',
      color: const Color(0xFFFBFCFB),
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xFFFBFCFB)),
      home: SafeArea(
        top: false,
        left: false,
        right: false,
        bottom: false,
        maintainBottomViewPadding : false,
        child: LoginScreen(),
      ),
    );
  }
}
