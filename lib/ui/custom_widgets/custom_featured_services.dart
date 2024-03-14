import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:lucious_beauty/core/constants/colors.dart';
import 'package:lucious_beauty/core/constants/styles.dart';
import 'package:lucious_beauty/core/model/fetured_services.dart';
import 'package:lucious_beauty/core/model/fetured_services.dart';
import 'package:lucious_beauty/core/model/our_services.dart';

class CustomFeaturedServices extends StatelessWidget {
  FeaturedServices featuredServices;
  CustomFeaturedServices({required this.featuredServices});

  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              '${featuredServices.image}',
              //fit: BoxFit.cover,
              scale: 3.9,
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${featuredServices.title}",
                  style: subheadingTextStyle.copyWith(
                      color: buttonColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "45 min 59 AED",
                      style: subheadingTextStyle.copyWith(
                          color: blackColor,
                          fontSize: 13,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Icon(
                      Icons.arrow_forward,
                      size: 14,
                      color: buttonColor,
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      decoration: BoxDecoration(
          color: whiteColor, borderRadius: BorderRadius.circular(10)),
    );
  }
}
