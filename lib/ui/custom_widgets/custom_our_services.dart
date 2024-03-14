import 'package:flutter/material.dart';
import 'package:lucious_beauty/core/constants/colors.dart';
import 'package:lucious_beauty/core/constants/styles.dart';
import 'package:lucious_beauty/core/model/our_services.dart';

class CustomOurServices extends StatelessWidget {
  OurServices ourServices;
  CustomOurServices({required this.ourServices});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        Image.asset(
          '${ourServices.image}',
          height: 50,
          width: 50,
        ),
        Text('${ourServices.title}',
            style: subheadingTextStyle.copyWith(
                color: buttonColor, fontSize: 16, fontWeight: FontWeight.w500)),
      ]),
    );
  }
}
