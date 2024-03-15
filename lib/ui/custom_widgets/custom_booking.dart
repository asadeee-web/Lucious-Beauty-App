import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:lucious_beauty/core/constants/colors.dart';
import 'package:lucious_beauty/core/constants/strings.dart';
import 'package:lucious_beauty/core/constants/styles.dart';
import 'package:lucious_beauty/core/model/booking.dart';

class CustomBooking extends StatelessWidget {
  Booking booking;
  CustomBooking({required this.booking});

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.symmetric(horizontal: 5),
      //width: 215,
      // height: 71,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "${booking.image}",
              width: 59,
              height: 59,
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${booking.title}",
                  style: subheadingTextStyle.copyWith(
                      fontWeight: FontWeight.w500, fontSize: 14),
                ),
                Text(
                  "${booking.subtitle}",
                  style: subheadingTextStyle.copyWith(
                      color: buttonColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w400),
                ),
                Text(
                  "${booking.time}",
                  style: subheadingTextStyle.copyWith(
                      color: greyColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ],
        ),
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: whiteColor),
    );
  }
}
