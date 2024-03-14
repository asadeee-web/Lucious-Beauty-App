import 'package:flutter/material.dart';
import 'package:lucious_beauty/core/constants/app_assets/app_assets.dart';
import 'package:lucious_beauty/core/constants/colors.dart';
import 'package:lucious_beauty/core/constants/styles.dart';
import 'package:lucious_beauty/ui/screens/auth/login/login_screen.dart';
import 'package:lucious_beauty/ui/custom_widgets/custom_button.dart';
import 'package:lucious_beauty/ui/custom_widgets/custom_textfeild.dart';
import 'package:lucious_beauty/ui/screens/home/home_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30, 60, 30, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 40.h,
              ),
              Center(
                child: Image.asset(
                  AppAssets.loginImage,
                  scale: 3,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  Text(
                    "Register",
                    style: headingTextStyle,
                  )
                ],
              ),
              CustomTextFeild(
                hintText: "Email",
              ),
              CustomTextFeild(
                hintText: "Password",
              ),
              CustomTextFeild(
                hintText: "Confirm Password",
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                },
                child: CustomButton(
                  text: "Register",
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Have Account?",
                    style: bodyTextStyle.copyWith(
                        fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => LoginScreen()));
                    },
                    child: Text(
                      "Login",
                      style: bodyTextStyle.copyWith(
                          fontSize: 20,
                          color: buttonColor,
                          fontWeight: FontWeight.w700),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
