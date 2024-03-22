import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lucious_beauty/core/constants/colors.dart';
import 'package:lucious_beauty/core/constants/strings.dart';
import 'package:lucious_beauty/core/constants/styles.dart';
import 'package:lucious_beauty/ui/screens/auth/login/login_screen.dart';
import 'package:lucious_beauty/ui/custom_widgets/custom_button.dart';

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
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ///
              ///profile image
              ///
              Center(
                  child: CircleAvatar(
                radius: 80.r,
                backgroundImage: AssetImage(
                  "$dynamicAssets/images/profile_2.png",
                ),
              )),
              SizedBox(
                height: 15.h,
              ),
              Text(
                "Asad Qureshi",
                style: headingTextStyle.copyWith(fontSize: 22),
              ),
              Text(
                "asadeee998@gmail.com",
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
                height: 12.h,
              ),

              profileDetail(title: 'About Us'),
              profileDetail(title: 'Career'),
              profileDetail(title: 'Pricing and Plannings'),

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
    );
  }
}

profileDetail({title, onPressed}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: GestureDetector(
      onTap: onPressed,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "$title",
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
          Divider(
            thickness: 0.8,
            color: greyColor,
          ),
        ],
      ),
    ),
  );
}
