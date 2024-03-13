import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lucious_beauty/core/constants/colors.dart';
import 'package:lucious_beauty/core/constants/styles.dart';

class CustomTextFeild extends StatelessWidget {
  String? hintText;
  final validator;
  final onChange;
  bool? obsecure;
  Widget? suffex;
  TextEditingController? controller;

  CustomTextFeild({
    this.validator,
    this.onChange,
    this.hintText,
    this.controller,
    this.obsecure,
    this.suffex,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: TextFormField(
            validator: validator,
            obscureText: obsecure ?? false,
            obscuringCharacter: "*",
            cursorColor: greyColor,
            style: bodyTextStyle.copyWith(fontSize: 14.sp, color: greyColor),
            decoration: InputDecoration(
              fillColor: textfeildColor,
              filled: true,
              hintText: hintText,
              hintStyle:
                  bodyTextStyle.copyWith(fontSize: 14.sp, color: greyColor),
              errorStyle:
                  bodyTextStyle.copyWith(fontSize: 14.sp, color: greyColor),
              suffixIcon: suffex,
              focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: borderColor,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(4)),
              enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: borderColor, width: 1),
                  borderRadius: BorderRadius.circular(4)),
            ),
          ),
        )
      ],
    );
  }
}
