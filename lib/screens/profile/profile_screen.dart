import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lucious_beauty/core/constants/colors.dart';
import 'package:lucious_beauty/core/constants/strings.dart';
import 'package:lucious_beauty/core/constants/styles.dart';
import 'package:lucious_beauty/screens/auth/login/login_screen.dart';
import 'package:lucious_beauty/screens/custom_widgets/custom_button.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: primaryColor,
          toolbarHeight: 70,
          titleSpacing: 40,
          title: Text(
            "Profile",
            style: headingTextStyle.copyWith(fontSize: 22),
          ),
          automaticallyImplyLeading: false,
        ),
        backgroundColor: primaryColor,
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ///
                  ///profile image
                  ///
                  Center(
                      child: CircleAvatar(
                    radius: 85.r,
                    backgroundImage:
                        AssetImage("$staticAssets/images/women_profile.png"),
                  )),
                  SizedBox(
                    height: 15.h,
                  ),
                  Text(
                    "Rayna Carder",
                    style: headingTextStyle.copyWith(fontSize: 22),
                  ),
                  Text(
                    "RaynaCarder@Email.com",
                    style: subheadingTextStyle.copyWith(
                        color: greyColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 18),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  //
                  // CustomButton(text: "Edit Profile"),
                  Container(
                    width: 133,
                    height: 45,
                    // padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Center(
                        child: Text(
                      "Edit Profile",
                      style: subheadingTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: whiteColor),
                    )),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: buttonColor),
                  ),

                  SizedBox(
                    height: 10.h,
                  ),
                  const SizedBox(
                    width: 320,
                    child: Divider(
                      thickness: 0.5,
                      color: greyColor,
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "About Us",
                        style: subheadingTextStyle.copyWith(
                            fontWeight: FontWeight.w400, fontSize: 18),
                      ),
                      ImageIcon(
                        AssetImage("$staticAssets/images/vector.png"),
                        color: greyColor,
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 320,
                    child: Divider(
                      thickness: 0.2,
                      color: greyColor,
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Career",
                        style: subheadingTextStyle.copyWith(
                            fontWeight: FontWeight.w400, fontSize: 18),
                      ),
                      ImageIcon(
                        AssetImage(
                          "$staticAssets/images/vector.png",
                        ),
                        color: greyColor,
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 320,
                    child: Divider(
                      thickness: 0.2,
                      color: greyColor,
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Pricing and Plannings",
                        style: subheadingTextStyle.copyWith(
                            fontWeight: FontWeight.w400, fontSize: 18),
                      ),
                      ImageIcon(
                        AssetImage("$staticAssets/images/vector.png"),
                        color: greyColor,
                      )
                    ],
                  ),

                  const SizedBox(
                    width: 320,
                    child: Divider(
                      thickness: 0.2,
                      color: greyColor,
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  TextButton(
                      onPressed: () {
                        Get.to(LoginScreen());
                      },
                      child: Text(
                        "Logout",
                        style: subheadingTextStyle.copyWith(
                            color: buttonColor, fontSize: 18),
                      ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
