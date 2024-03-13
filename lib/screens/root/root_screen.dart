// import 'package:flutter/material.dart';
// import 'package:lucious_beauty/core/constants/colors.dart';
// import 'package:lucious_beauty/core/constants/strings.dart';
// import 'package:lucious_beauty/screens/custom_widgets/custom_bottom_navigationbar.dart';
// import 'package:lucious_beauty/screens/root/root_view_screen.dart';
// import 'package:provider/provider.dart';

// class RootScreen extends StatelessWidget {
//   final int? selectedScreen;
//   const RootScreen({Key? key, this.selectedScreen = 0}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider(
//       create: (context) => RootScreenVeiwModel(selectedScreen),
//       child: Consumer<RootScreenVeiwModel>(
//           builder: (context, model, child) => Scaffold(
//                 backgroundColor: whiteColor,

//                 ///
//                 ///body
//                 ///
//                 body: model.allscreen[model.selectedscreen],
//                 bottomNavigationBar: _bottomAppbar(model),
//               )),
//     );
//   }

//   ///
//   ///bottom app bar
//   ///
//   Widget _bottomAppbar(RootScreenVeiwModel model) {
//     return BottomAppBar(
//       color: whiteColor,
//       shape: CircularNotchedRectangle(),
//       child: SizedBox(
//         height: 68,
//         child: Padding(
//           padding: EdgeInsets.symmetric(horizontal: 15),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               CustomBottomNavigationBar(
//                   ontap: () {
//                     model.UpdateScreen(0);
//                   },
//                   currentindex: model.selectedindex,
//                   indexnumber: 0,
//                   icon: "$iconsPath/home_bottom.png"),
//               CustomBottomNavigationBar(
//                   ontap: () {
//                     model.UpdateScreen(1);
//                   },
//                   currentindex: model.selectedindex,
//                   indexnumber: 1,
//                   icon: "$iconsPath/Vector_icon.png"),
//               CustomBottomNavigationBar(
//                   ontap: () {
//                     model.UpdateScreen(2);
//                   },
//                   currentindex: model.selectedindex,
//                   indexnumber: 2,
//                   icon: "$iconsPath/person_icon2.png"),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:lucious_beauty/core/constants/colors.dart';
import 'package:lucious_beauty/core/constants/strings.dart';
import 'package:lucious_beauty/screens/custom_widgets/custom_bottom_navigationbar.dart';
import 'package:lucious_beauty/screens/root/root_view_screen.dart';
import 'package:provider/provider.dart';

class RootScreen extends StatelessWidget {
  final int? selectedScreen;
  RootScreen({super.key, this.selectedScreen = 0});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => RootScreenViewModel(selectedScreen),
      child: Consumer<RootScreenViewModel>(
          builder: (context, model, child) => Scaffold(
                backgroundColor: Colors.white,

                ///
                /// Body
                ///
                body: model.allScreen[model.selectedScreen],

                ///
                /// Bottom Bar
                ///
                bottomNavigationBar: _bottomAppbar(model),
              )),
    );

    ///
    /// Bottom Bar
    ///
  }

  Widget _bottomAppbar(RootScreenViewModel model) {
    return Theme(
      data: ThemeData(useMaterial3: false),
      child: BottomAppBar(
        color: Colors.white,
        shape: const CircularNotchedRectangle(),
        child: SizedBox(
          height: 68,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 33),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomBottomNavigator(
                  icon: '$iconsPath/home_bottom.png',
                  currentIndex: model.selectedIndex,
                  indexNumber: 0,
                  onTap: () {
                    model.UpdatedScreen(0);
                  },
                ),
                CustomBottomNavigator(
                  icon: '$iconsPath/Vector_icon.png',
                  currentIndex: model.selectedIndex,
                  indexNumber: 1,
                  onTap: () {
                    model.UpdatedScreen(1);
                  },
                ),
                CustomBottomNavigator(
                  icon: '$iconsPath/person_icon2.png',
                  currentIndex: model.selectedIndex,
                  indexNumber: 2,
                  onTap: () {
                    model.UpdatedScreen(2);
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
