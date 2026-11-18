import 'package:flutter/material.dart';
import 'package:groceries_app/core/button_widget.dart';
import 'package:groceries_app/feature/auth_screen/view/login_screen.dart';
import 'package:groceries_app/feature/auth_screen/widget/custom_textfield.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool isAgreed = false;

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
                "Sign Up",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight(600),
                  color: Color(0xff181725),
                  fontFamily: "Gilroy",
                ),
              ),
              SizedBox(height: 15),
              Text(
                "Enter your credentials to continue",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight(400),
                  color: Color(0xff7C7C7C),
                  height: 15 / 16,
                  letterSpacing: 0,
                ),
              ),
              SizedBox(height: 40),
              CustomTextfield(
                hintText: 'Enter your username',
                text: 'Username',
              ),
              SizedBox(height: 30),
              CustomTextfield(
                hintText: 'Enter your email',
                text: 'Email',
                suffixIcon: Icon(
                  Icons.check_circle_outlined,
                  color: Color.fromARGB(237, 15, 165, 45),
                ),
              ),
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
              SizedBox(height: 20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 28,
                    height: 28,
                    child: Checkbox(
                      value: isAgreed,
                      onChanged: (bool? value) {
                        setState(() {
                          isAgreed = value ?? false;
                        });
                      },
                      activeColor: const Color(0xFF42A879),
                      checkColor: Colors.white,
                      side: const BorderSide(color: Colors.grey),
                      visualDensity: VisualDensity.compact,
                    ),
                  ),
                  const SizedBox(width: 6),
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(top: 2),
                      child: Text.rich(
                        TextSpan(
                          style: TextStyle(
                            fontSize: 15,
                            height: 1.5,
                            color: Color(0xFF777777),
                          ),
                          children: [
                            TextSpan(text: 'By continuing you agree to our '),
                            TextSpan(
                              text: 'Terms of Service',
                              style: TextStyle(
                                color: Color(0xFF42A879),
                                decoration: TextDecoration.underline,
                              ),
                            ),
                            TextSpan(text: ' and '),
                            TextSpan(
                              text: 'Privacy Policy',
                              style: TextStyle(
                                color: Color(0xFF42A879),
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              ButtonWidget(text: "Sign Up"),
              SizedBox(height: 25),
              Align(
                alignment: Alignment.center,
                child: Text.rich(
                  TextSpan(
                    text: 'Already have an account?',
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
                                builder: (context) => const LoginScreen(),
                              ),
                            );
                          },
                          child: Text(
                            ' Login',
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
            ],
          ),
        ),
      ),
    );
  }
}
