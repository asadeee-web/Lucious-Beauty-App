import 'package:flutter/material.dart';
import 'package:lucious_beauty/core/constants/colors.dart';
import 'package:lucious_beauty/core/constants/styles.dart';
import 'package:lucious_beauty/ui/custom_widgets/custom_specific_services.dart';
import 'package:lucious_beauty/ui/screens/details_screens/details_screen.dart';
import 'package:lucious_beauty/ui/screens/specific_services/specific_screen_view_model.dart';
import 'package:provider/provider.dart';

class SpecificServiceScreen extends StatelessWidget {
  String? titlename;
  SpecificServiceScreen({this.titlename, super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (create) => NailsModel(),
      child: Consumer<NailsModel>(
          builder: (context, model, child) => Scaffold(
                backgroundColor: primaryColor,
                appBar: AppBar(
                  backgroundColor: primaryColor,
                  title: Text(
                    "$titlename",
                    style: headingTextStyle,
                  ),
                ),
                body: Column(
                  children: [
                    Expanded(
                        child: GridView.builder(
                            padding: const EdgeInsets.all(20),
                            itemCount: model.listnailsmodel.length,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 15,
                              crossAxisSpacing: 15,
                            ),
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => DetailScreen()));
                                },
                                child: CustomSpecificServices(
                                  nailsservices: model.listnailsmodel[index],
                                ),
                              );
                            }))
                  ],
                ),
              )),
    );
  }
}
