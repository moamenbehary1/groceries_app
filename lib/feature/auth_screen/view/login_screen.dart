import 'package:flutter/material.dart';
import 'package:groceries_app/feature/auth_screen/widget/button_widget.dart';
import 'package:groceries_app/feature/auth_screen/view/signup_screen.dart';
import 'package:groceries_app/feature/auth_screen/widget/custom_textfield.dart';

class LoginScreen extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(right: 24.75, left: 24.75, top: 85.40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Image.asset('assets/Image/Group.png'),
              ),
              SizedBox(height: 100.21),
              Text(
                "Loging",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight(600),
                  color: Color(0xff181725),
                  fontFamily: "Gilroy",
                ),
              ),
              SizedBox(height: 15),
              Text(
                "Enter your emails and password",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight(400),
                  color: Color(0xff7C7C7C),
                  height: 15 / 16,
                  letterSpacing: 0,
                ),
              ),
              SizedBox(height: 40),
              CustomTextfield(hintText: 'Enter your email', text: 'Email'),
              SizedBox(height: 30),
              CustomTextfield(
                hintText: 'Enter your password',
                text: 'Password',
                obscureText: true,
                suffixIcon: Icon(
                  Icons.remove_red_eye_outlined,
                  color: Color(0xff7C7C7C),
                ),
              ),
              SizedBox(height: 15),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight(400),
                      color: Color.fromARGB(255, 12, 12, 15),
                      letterSpacing: 0.5,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              ButtonWidget(text: "Log In"),
              SizedBox(height: 25),
              Align(
                alignment: Alignment.center,
                child: GestureDetector(
                  child: Text.rich(
                    TextSpan(
                      text: 'Don’t have an account?',
                      style: TextStyle(
                        color: Color(0xff181725),
                        fontSize: 14,
                        fontWeight: FontWeight(600),
                        letterSpacing: 0.5,
                      ),
                      children: [
                        WidgetSpan(
                          alignment: PlaceholderAlignment.baseline,
                          baseline: TextBaseline.alphabetic,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SignupScreen(),
                                ),
                              );
                            },
                            child: Text(
                              ' Singup',
                              style: TextStyle(
                                color: Color(0xff53B175),
                                fontSize: 14,
                                fontWeight: FontWeight(600),
                                letterSpacing: 0.5,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
