import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lucious_beauty/core/constants/colors.dart';
import 'package:lucious_beauty/core/constants/styles.dart';
import 'package:lucious_beauty/screens/booking/booking_view_model.dart';
import 'package:lucious_beauty/screens/custom_widgets/custom_booking_navigation.dart';
import 'package:provider/provider.dart';

class BookingScreen extends StatelessWidget {
  const BookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => BookingViewModel(),
      child: Consumer<BookingViewModel>(
        builder: (context, model, child) => Scaffold(
          backgroundColor: primaryColor,
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  "Bookings",
                  style: headingTextStyle,
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  "Upcoming Bookings",
                  style: subheadingTextStyle.copyWith(
                      fontWeight: FontWeight.w600, fontSize: 16),
                ),
                SizedBox(
                  height: 240,
                  child: ListView.separated(
                    itemCount: model.listbooking.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return CustomBookingNavigation(
                          booking: model.listbooking[index]);
                    },
                    separatorBuilder: (BuildContext, index) {
                      return SizedBox(
                        height: 5.h,
                      );
                    },
                  ),
                ),
                Text(
                  "Previous Bookings",
                  style: subheadingTextStyle.copyWith(
                      fontWeight: FontWeight.w600, fontSize: 16),
                ),
                Expanded(
                  child: ListView.separated(
                    itemCount: model.listupcommingbooking.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return CustomBookingNavigation(
                          booking: model.listupcommingbooking[index]);
                    },
                    separatorBuilder: (BuildContext, index) {
                      return SizedBox(
                        height: 5.h,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
