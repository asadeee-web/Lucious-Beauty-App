import 'package:lucious_beauty/core/constants/strings.dart';
import 'package:lucious_beauty/core/model/nails_model.dart';
import 'package:lucious_beauty/core/others/base_view_model.dart';

class NailsModel extends BaseViewModel {
  List<nails> listnailsmodel = [
    nails(
        "$dynamicAssets/images/nails.png", "Classic Maincure", "45 min 59 AED"),
    nails(
        "$dynamicAssets/images/feet.png", "Classic Predicure", "45 min 59 AED")
  ];
}
