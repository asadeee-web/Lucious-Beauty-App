// import 'package:flutter/material.dart';
// import 'package:lucious_beauty/core/constants/colors.dart';

// class CustomBottomNavigationBar extends StatelessWidget {
//   String icon;
//   final ontap;
//   int currentindex;
//   int indexnumber;

//   CustomBottomNavigationBar(
//       {Key? key,
//       required this.icon,
//       required this.ontap,
//       required this.currentindex,
//       required this.indexnumber})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 54,
//       height: 54,
//       decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(13),
//           color: indexnumber == currentindex ? buttonColor : whiteColor),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Image.asset(
//             icon,
//             color: indexnumber == currentindex ? buttonColor : greyColor,
//             scale: 4.0,
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:lucious_beauty/core/constants/colors.dart';

class CustomBottomNavigator extends StatelessWidget {
  String icon;
  final onTap;
  int currentIndex;
  int indexNumber;
  CustomBottomNavigator(
      {Key? key,
      required this.icon,
      required this.onTap,
      required this.currentIndex,
      required this.indexNumber})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 54,
        height: 54,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13),
          color: indexNumber == currentIndex ? buttonColor : whiteColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              icon,
              color: indexNumber == currentIndex ? whiteColor : greyColor,
              //scale: 2.3,
            ),
            // Text('$text'),
          ],
        ),
      ),
    );
  }
}
