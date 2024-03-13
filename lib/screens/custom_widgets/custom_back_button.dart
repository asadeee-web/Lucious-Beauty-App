import 'package:flutter/material.dart';
import 'package:lucious_beauty/core/constants/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all(6.0),

        
        decoration: BoxDecoration(
          color: primaryColor,borderRadius: BorderRadius.circular(8.r),
          
        ),
        
        child: Icon(Icons.arrow_back_ios_new,
        color: whiteColor,size: 18.sp,)
      
        
        
        ),
    );
  }
}
