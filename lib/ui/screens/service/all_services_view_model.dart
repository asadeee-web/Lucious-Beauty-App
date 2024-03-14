import 'package:lucious_beauty/core/constants/strings.dart';
import 'package:lucious_beauty/core/model/all_services.dart';
import 'package:lucious_beauty/core/others/base_view_model.dart';

class AllServicesVeiwModel extends BaseViewModel {
  List<AllServices> listAllServices = [
   AllServices(id: "1", image: "$iconsPath/Nails.png", title: "Nails"),
   AllServices(id: "1", image: "$iconsPath/Hair.png", title: "Hairs"),
   AllServices(id: "1", image: "$iconsPath/Facial.png", title: "Facial"),
   AllServices(id: "1", image: "$iconsPath/Massage.png", title: "Massage"),
   AllServices(id: "1", image: "$iconsPath/working_icon.png", title: "Waxing"),
   AllServices(id: "1", image: "$iconsPath/threading_icon.png", title: "Threading"),
   AllServices(id: "1", image: "$iconsPath/person_icon.png", title: "NUltralucious\n7D hifu"),
   AllServices(id: "1", image: "$iconsPath/slim_icon.png", title: "Lucious slim RF\ncavitation"),



  ];
}
