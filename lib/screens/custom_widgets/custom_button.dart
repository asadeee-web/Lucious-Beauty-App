import 'package:flutter/material.dart';
import 'package:lucious_beauty/core/constants/colors.dart';
import 'package:lucious_beauty/core/constants/styles.dart';

class CustomButton extends StatelessWidget {
  // double width;
  // double height;
  String? text;
  // const CustomButton({super.key, this.width, this.height});
  CustomButton({this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(15),
        child: Text("$text",
            style: subheadingTextStyle.copyWith(
                fontWeight: FontWeight.w400, color: whiteColor, fontSize: 16)),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: buttonColor,
        ),
      ),
    );
  }
}
