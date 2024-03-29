// ignore_for_file: unused_field, unused_import

import 'package:flutter/material.dart';
import 'package:lucious_beauty/core/constants/colors.dart';
import 'package:lucious_beauty/core/constants/strings.dart';
import 'package:lucious_beauty/core/constants/styles.dart';
import 'package:lucious_beauty/core/model/all_services.dart';
import 'package:lucious_beauty/core/model/nails_model.dart';
import 'package:lucious_beauty/ui/screens/home/home-booking/home_booking.dart';
import 'package:lucious_beauty/ui/screens/service/all_service_screen.dart';
import 'package:lucious_beauty/ui/screens/specific_services/specific_services_screen.dart';

class DetailScreen extends StatelessWidget {
  final nails specificServices;
  DetailScreen({required this.specificServices, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Stack(
        children: [
          Column(
            children: [
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  Image.asset(
                    "$staticAssets/images/nails_big.png",
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
            child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => ServiceScreen()));
                },
                child: Icon(
                  Icons.arrow_back_rounded,
                  color: buttonColor,
                )),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "${specificServices.title}",
                          style: subheadingTextStyle.copyWith(
                              color: buttonColor, fontSize: 22),
                        ),
                        Row(
                          children: [
                            Text(
                              "321",
                              style: subheadingTextStyle.copyWith(
                                  fontSize: 16,
                                  color: greyColor,
                                  fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.favorite_border_rounded,
                              color: greyColor,
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "45 min  59 AED",
                      style: subheadingTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: greyColor),
                    ),
                    SizedBox(
                      height: 10,
                    ),

                    Text(
                      "Simple and classic, this manicure includes nail cleaning (cuticles cut and filed), shaping, and nail polish of your choice. ",
                      style: subheadingTextStyle.copyWith(
                          fontWeight: FontWeight.w400, fontSize: 16),
                    ),
                    // Text(
                    //   "See more",
                    //   style: subheadingTextStyle.copyWith(
                    //       fontSize: 16,
                    //       color: buttonColor,
                    //       fontWeight: FontWeight.w400),
                    // )
                    SizedBox(
                      height: 60,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => HomeBooking()));
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 50, vertical: 18),
                            child: Text(
                              "Book Now",
                              style: subheadingTextStyle.copyWith(
                                  color: whiteColor,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400),
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: buttonColor),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 30, vertical: 18),
                          child: Text(
                            "Add To Cart",
                            style: subheadingTextStyle.copyWith(
                                color: buttonColor,
                                fontSize: 15,
                                fontWeight: FontWeight.w400),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(width: 1, color: buttonColor),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              // width: 400,
              height: 371,
              decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50))),
            ),
          )
        ],
      ),
    );
  }
}
