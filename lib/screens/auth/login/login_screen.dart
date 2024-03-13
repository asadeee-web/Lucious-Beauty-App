import 'package:flutter/material.dart';
import 'package:lucious_beauty/core/constants/app_assets/app_assets.dart';
import 'package:lucious_beauty/core/constants/colors.dart';
import 'package:lucious_beauty/core/constants/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lucious_beauty/screens/auth/sign_up/sign_up_screen.dart';
import 'package:lucious_beauty/screens/custom_widgets/custom_bottom_navigationbar.dart';
import 'package:lucious_beauty/screens/custom_widgets/custom_button.dart';
import 'package:lucious_beauty/screens/custom_widgets/custom_textfeild.dart';
import 'package:lucious_beauty/screens/home/home_screen.dart';
import 'package:lucious_beauty/screens/root/root_screen.dart';
//import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                    "Login",
                    style: headingTextStyle,
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              CustomTextFeild(
                hintText: "Email",
              ),
              CustomTextFeild(
                hintText: "Password",
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => RootScreen()));
                },
                child: CustomButton(
                  text: "Login",
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "New User ?",
                    style: bodyTextStyle.copyWith(
                        fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => SignUpScreen()));
                    },
                    child: Text(
                      "Register",
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
