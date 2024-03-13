import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lucious_beauty/core/constants/colors.dart';
import 'package:lucious_beauty/screens/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(
        MediaQuery.of(context).size.width,
        MediaQuery.of(context).size.width,
      ),
      builder: ((context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSwatch().copyWith(
              primary: primaryColor,
              secondary: whiteColor,
              
            ),
            canvasColor: whiteColor,
            useMaterial3: true,
          ),
          home: SplashScreen(),
        );
      }),
    );
  }
}
