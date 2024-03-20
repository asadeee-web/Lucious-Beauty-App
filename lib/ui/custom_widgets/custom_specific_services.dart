import 'package:flutter/material.dart';
import 'package:lucious_beauty/core/constants/colors.dart';
import 'package:lucious_beauty/core/constants/styles.dart';
import 'package:lucious_beauty/core/model/nails_model.dart';

class CustomSpecificServices extends StatelessWidget {
  nails? nailsservices;
  CustomSpecificServices({this.nailsservices, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: whiteColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            "${nailsservices?.image}",
            fit: BoxFit.fitWidth,
            width: 120,
          ),
          Text(
            "${nailsservices?.title}",
            style: subheadingTextStyle.copyWith(
                fontSize: 14, color: buttonColor, fontWeight: FontWeight.w500),
          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   crossAxisAlignment: CrossAxisAlignment.center,
          //   children: [
          Text(
            "${nailsservices?.time}",
            style: subheadingTextStyle.copyWith(
                color: Colors.black54,
                fontSize: 14,
                fontWeight: FontWeight.w500),
          ),
          // Icon(
          //   Icons.arrow_forward,
          //   color: buttonColor,
          //   size: 15,
          // )
        ],
      ),
    );
  }
}
