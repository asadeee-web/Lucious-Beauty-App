import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lucious_beauty/core/constants/colors.dart';
import 'package:lucious_beauty/core/constants/styles.dart';
import 'package:lucious_beauty/ui/custom_widgets/custom_back_button.dart';
import 'package:lucious_beauty/ui/custom_widgets/custom_cart.dart';
import 'package:lucious_beauty/ui/screens/home/home_screen.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        title: Text(
          "Cart",
          style: headingTextStyle.copyWith(fontSize: 20),
        ),
        // leading: GestureDetector(
        //   onTap: () {
        //     Navigator.of(context)
        //         .push(MaterialPageRoute(builder: (context) => HomeScreen()));
        //   },
        //   child: Container(
        //     alignment: Alignment.center,
        //     margin: EdgeInsets.only(left: 20),
        //     child: Icon(
        //       Icons.arrow_back,
        //       size: 20,
        //     ),
        //     decoration:
        //         BoxDecoration(color: Color(0xffEAEAEA), shape: BoxShape.circle),
        //   ),
        // ),
        backgroundColor: primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return CustomCart();
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: 10,
                    );
                  },
                  itemCount: 2),
            )
          ],
        ),
      ),
    );
  }
}
