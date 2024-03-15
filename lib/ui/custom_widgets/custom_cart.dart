import 'package:flutter/material.dart';
import 'package:lucious_beauty/core/constants/colors.dart';
import 'package:lucious_beauty/core/constants/strings.dart';
import 'package:lucious_beauty/core/constants/styles.dart';

class CustomCart extends StatelessWidget {
  const CustomCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: EdgeInsets.all(10),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Column(
        children: [
          Align(
              alignment: Alignment.topRight,
              child: Icon(
                Icons.more_vert,
                size: 16,
                color: greyColor,
              )),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "$dynamicAssets/images/nails.png",
                scale: 1.9,
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                //mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Classic Manicure",
                    style: TextStyle(
                        fontFamily: urban,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "Home",
                    style: subheadingTextStyle.copyWith(
                        color: buttonColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 14),
                  ),
                  Text(
                    "Sat, 22 August 2022",
                    style: subheadingTextStyle.copyWith(
                        color: greyColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 14),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "90 mins 150 AED",
                    style: subheadingTextStyle.copyWith(
                        color: blackColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 14),
                  )
                ],
              )
            ],
          ),
          Align(
            alignment: Alignment.topRight,
            child: Text(
              '"fdsgsdg',
              style: subheadingTextStyle.copyWith(
                  color: buttonColor,
                  fontSize: 12,
                  fontWeight: FontWeight.w400),
            ),
          )
        ],
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: whiteColor,
      ),
    );
  }
}
