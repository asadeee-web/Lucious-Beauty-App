import 'package:lucious_beauty/core/constants/strings.dart';
import 'package:lucious_beauty/core/model/booking.dart';
import 'package:lucious_beauty/core/model/booking_navigation.dart';
import 'package:lucious_beauty/core/others/base_view_model.dart';

class BookingViewModel extends BaseViewModel {
  List<BookingNavigation> listbooking = [
    BookingNavigation("1", "$dynamicAssets/images/nails.png",
        "Sat, 22 August 2022", "Salon", "Classic Manicure", "30 min 50 AED"),
    BookingNavigation("2", "$dynamicAssets/images/nails.png",
        "Sat, 22 August 2022", "Home", "Classic Manicure", "30 min 50 AED")
  ];
  List<BookingNavigation> listupcommingbooking = [
    BookingNavigation("1", "$dynamicAssets/images/nails.png",
        "Sat, 22 August 2022", "", "Classic Manicure", "30 min 50 AED"),
    BookingNavigation("2", "$dynamicAssets/images/nails.png",
        "Sat, 22 August 2022", "", "Classic Manicure", "30 min 50 AED"),
    BookingNavigation("2", "$dynamicAssets/images/nails.png",
        "Sat, 22 August 2022", "", "Classic Manicure", "30 min 50 AED")
  ];
}
