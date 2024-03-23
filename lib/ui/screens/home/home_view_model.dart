// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:lucious_beauty/core/constants/strings.dart';
import 'package:lucious_beauty/core/model/booking.dart';
import 'package:lucious_beauty/core/model/fetured_services.dart';
import 'package:lucious_beauty/core/model/our_services.dart';
import 'package:lucious_beauty/core/others/base_view_model.dart';

class HomeViewModel extends BaseViewModel {
  List<OurServices> listOurServices = [
    OurServices('1', '$iconsPath/Nails.png', "Nails"),
    OurServices('1', '$iconsPath/Hair.png', "Hairs"),
    OurServices('1', '$iconsPath/Facial.png', "Facial"),
    OurServices('1', '$iconsPath/Massage.png', "Massage"),
  ];

  List<FeaturedServices> listFeaturedServices = [
    FeaturedServices(
        '1', '$dynamicAssets/images/feet.png', "Classic Predicure"),
    FeaturedServices('1', '$dynamicAssets/images/feet.png', "Classic Predicure")
  ];

  List<Booking> listBooking = [
    Booking("1", "$dynamicAssets/images/nails.png", "Classic Maincure", "Home",
        "Sat 22 August 2022"),
    Booking("1", "$dynamicAssets/images/nails.png", "Classic Maincure", "Home",
        "Sat 22 August 2022"),
  ];
}
