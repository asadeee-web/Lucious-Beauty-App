// import 'package:flutter/material.dart';
// import 'package:lucious_beauty/core/enums/view_state.dart';
// import 'package:lucious_beauty/core/others/base_view_model.dart';
// import 'package:lucious_beauty/screens/booking/booking_screen.dart';
// import 'package:lucious_beauty/screens/home/home_screen.dart';
// import 'package:lucious_beauty/screens/profile/profile_screen.dart';

// class RootScreenVeiwModel extends BaseViewModel {
//   RootScreenVeiwModel(val) {
//     UpdateScreen(val);
//     notifyListeners();
//   }
//   List<Widget> allscreen = [HomeScreen(), BookingScreen(), ProfileScreen()];
//   int selectedindex = 0;
//   int selectedscreen = 0;

//   UpdateScreen(int index) {
//     setState(ViewState.busy);
//     selectedscreen = index;
//     setState(ViewState.idle);
//     selectedindex = index;
//     notifyListeners();
//   }
// }

import 'package:flutter/material.dart';
import 'package:lucious_beauty/core/enums/view_state.dart';
import 'package:lucious_beauty/core/others/base_view_model.dart';
import 'package:lucious_beauty/screens/booking/booking_screen.dart';
import 'package:lucious_beauty/screens/home/home_screen.dart';
import 'package:lucious_beauty/screens/profile/profile_screen.dart';

class RootScreenViewModel extends BaseViewModel {
  RootScreenViewModel(val) {
    UpdatedScreen(val);
    notifyListeners();
  }
  List<Widget> allScreen = [
    HomeScreen(),
    BookingScreen(),
    ProfileScreen(),
  ];
  int selectedScreen = 0;
  int selectedIndex = 0;

  UpdatedScreen(int Index) {
    setState(ViewState.busy);
    selectedScreen = Index;
    setState(ViewState.idle);
    selectedIndex = Index;
    notifyListeners();
  }
}
