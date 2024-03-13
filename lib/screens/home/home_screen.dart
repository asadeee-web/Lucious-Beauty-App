import 'package:flutter/material.dart';
import 'package:lucious_beauty/core/constants/colors.dart';
import 'package:lucious_beauty/core/constants/strings.dart';
import 'package:lucious_beauty/core/constants/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lucious_beauty/screens/booking/booking_screen.dart';
import 'package:lucious_beauty/screens/custom_widgets/custom_booking.dart';
import 'package:lucious_beauty/screens/custom_widgets/custom_featured_services.dart';
import 'package:lucious_beauty/screens/custom_widgets/custom_our_services.dart';
import 'package:lucious_beauty/screens/home/home_view_model.dart';
import 'package:lucious_beauty/screens/service/all_service_screen.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeViewModel(),
      child: Consumer<HomeViewModel>(
        builder: (context, model, child) => Scaffold(
            backgroundColor: primaryColor,
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        "Good Morning",
                        style: subheadingTextStyle.copyWith(
                            fontWeight: FontWeight.w300, fontSize: 12),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Rayna Carder",
                            style: headingTextStyle.copyWith(),
                          ),
                          Image.asset("$iconsPath/cart_icon.png")
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Exclusive Offers",
                        style: subheadingTextStyle.copyWith(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                          // height: 140,
                          //color: buttonColor,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color(0xfffD6B99E)),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20.0, top: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Upto 50%",
                                        style: headingTextStyle.copyWith(
                                            color: buttonColor, fontSize: 14),
                                      ),
                                      SizedBox(
                                        height: 5.h,
                                      ),
                                      Text(
                                        "Look more beautiful and\nSave more discount.",
                                        style: headingTextStyle.copyWith(
                                            color: whiteColor, fontSize: 16),
                                      ),
                                      SizedBox(
                                        height: 5.h,
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(bottom: 10),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 15, vertical: 10),
                                        child: Center(
                                          child: Text(
                                            "Get Offer Now",
                                            style: subheadingTextStyle.copyWith(
                                                color: whiteColor,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 12),
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                            color: buttonColor,
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                      ),
                                    ]),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Container(
                                    alignment: Alignment.bottomCenter,
                                    padding: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: buttonColor),
                                    child: Image.asset(
                                      "$staticAssets/images/female.png",
                                      scale: 1,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Our Services",
                            style: subheadingTextStyle.copyWith(
                                fontWeight: FontWeight.w500, fontSize: 16),
                          ),

                          ///
                          ///services screen Navigation
                          ///
                          Row(children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => ServiceScreen()));
                              },
                              child: Text(
                                "See All",
                                style: bodyTextStyle.copyWith(
                                    fontWeight: FontWeight.w300, fontSize: 12),
                              ),
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Icon(
                              Icons.arrow_forward_outlined,
                              size: 16,
                              color: greyColor,
                            )
                          ])
                        ],

                        // ),
                      ),
                      SizedBox(height: 10),

                      ///
                      ///  our services
                      ///
                      SizedBox(
                        height: 100,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: model.listOurServices.length,
                          itemBuilder: (context, index) {
                            return CustomOurServices(
                                ourServices: model.listOurServices[index]);
                          },
                          separatorBuilder: (BuildContext context, int index) {
                            return SizedBox(
                              width: 15.w,
                            );
                          },
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        "Featured Services",
                        style: subheadingTextStyle.copyWith(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),

                      ///
                      /// featured servies
                      ///
                      SizedBox(
                        height: 80,
                        child: ListView.separated(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: model.listFeaturedServices.length,
                          itemBuilder: (context, index) {
                            return CustomFeaturedServices(
                                featuredServices:
                                    model.listFeaturedServices[index]);
                          },
                          separatorBuilder: (BuildContext context, int index) {
                            return SizedBox(
                              width: 15.w,
                            );
                          },
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Upcoming Bookings",
                            style: subheadingTextStyle.copyWith(
                                fontWeight: FontWeight.w500, fontSize: 16),
                          ),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => BookingScreen()));
                                },
                                child: Text(
                                  "All Bookings",
                                  style: subheadingTextStyle.copyWith(
                                      color: greyColor,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(
                                Icons.arrow_forward,
                                size: 11,
                                color: greyColor,
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      SizedBox(
                        height: 80,
                        child: ListView.separated(
                          itemCount: model.listBooking.length,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return CustomBooking(
                                booking: model.listBooking[index]);
                          },
                          separatorBuilder: (BuildContext context, int index) {
                            return SizedBox(
                              width: 15.w,
                            );
                          },
                        ),
                      )
                    ]),
              ),
            )),
      ),
    );
  }
}
