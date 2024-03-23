import 'package:flutter/material.dart';
import 'package:lucious_beauty/core/constants/colors.dart';

class HomeBooking extends StatelessWidget {
  const HomeBooking({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor: buttonColor,
        title: Text("Booking Appointment"),
      ),
    );
  }
}
