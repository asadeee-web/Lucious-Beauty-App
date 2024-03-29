// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lucious_beauty/core/constants/colors.dart';
import 'package:lucious_beauty/core/constants/styles.dart';
import 'package:lucious_beauty/core/model/booking_navigation.dart';

class CustomBookingNavigation extends StatelessWidget {
  BookingNavigation booking;
  CustomBookingNavigation({required this.booking});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "${booking.image}",
                scale: 1.9,
              ),
              SizedBox(
                width: 10.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${booking.title}",
                    style: subheadingTextStyle.copyWith(
                        fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    '${booking.subtitle}',
                    style: subheadingTextStyle.copyWith(
                        color: buttonColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    '${booking.time}',
                    style: subheadingTextStyle.copyWith(
                        color: greyColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w400),
                  )
                ],
              ),
            ],
          ),
          Align(
            alignment: Alignment.topRight,
            child: Text(
              '${booking.time2}',
              style: subheadingTextStyle.copyWith(
                  color: buttonColor,
                  fontSize: 12,
                  fontWeight: FontWeight.w400),
            ),
          )
        ],
      ),
      decoration: BoxDecoration(
          color: whiteColor, borderRadius: BorderRadius.circular(10)),
    );
  }
}
