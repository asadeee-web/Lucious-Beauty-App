import 'package:flutter/material.dart';
import 'package:lucious_beauty/core/constants/colors.dart';
import 'package:lucious_beauty/core/constants/strings.dart';
import 'package:lucious_beauty/core/constants/styles.dart';

import 'package:lucious_beauty/ui/screens/auth/login/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    init();
  }

  init() async {
    await Future.delayed(const Duration(seconds: 2));

    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => LoginScreen()));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "$dynamicAssets/images/splashscreen.png",
              scale: 3,
            ),
            Text(
              "Luciuos",
              style: headingTextStyle.copyWith(fontSize: 40),
            ),
            Text(
              "Beauty Salon",
              style: subheadingTextStyle.copyWith(
                  letterSpacing: 6, fontWeight: FontWeight.w300, fontSize: 15),
            )
          ],
        ),
      ),
    );
  }
}
