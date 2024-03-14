import 'package:flutter/material.dart';
import 'package:lucious_beauty/core/constants/colors.dart';
import 'package:lucious_beauty/core/constants/styles.dart';
import 'package:lucious_beauty/core/model/all_services.dart';

class CustomAllServices extends StatelessWidget {
  AllServices? services;
  CustomAllServices({super.key, this.services});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            "${services?.image}",
            width: 64,
            fit: BoxFit.contain,
            //scale: 2,
          ),
          Text(
            '${services?.title}',
            style: subheadingTextStyle.copyWith(
                color: buttonColor, fontSize: 18, fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}
