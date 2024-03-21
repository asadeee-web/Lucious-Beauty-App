import 'package:flutter/material.dart';
import 'package:lucious_beauty/core/constants/colors.dart';
import 'package:lucious_beauty/core/constants/styles.dart';
import 'package:lucious_beauty/ui/custom_widgets/custom_all_services.dart';
import 'package:lucious_beauty/ui/screens/root/root_screen.dart';
import 'package:lucious_beauty/ui/screens/specific_services/specific_services_screen.dart';

import 'package:lucious_beauty/ui/screens/service/all_services_view_model.dart';
import 'package:provider/provider.dart';

class ServiceScreen extends StatelessWidget {
  const ServiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => AllServicesVeiwModel(),
        child: Consumer<AllServicesVeiwModel>(
            builder: (context, model, child) => Scaffold(
                  backgroundColor: primaryColor,
                  appBar: AppBar(
                    backgroundColor: primaryColor,
                    title: Text(
                      'All Services',
                      style: headingTextStyle,
                    ),
                    leading: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => RootScreen()));
                        },
                        child: Icon(Icons.arrow_back)),
                  ),
                  body: Column(
                    children: [
                      Expanded(
                        child: GridView.builder(
                            padding: const EdgeInsets.all(20),
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    mainAxisSpacing: 15,
                                    crossAxisSpacing: 15,
                                    crossAxisCount: 2),
                            itemCount: model.listAllServices.length,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) =>
                                          SpecificServiceScreen(
                                            titlename:
                                                "${model.listAllServices[index].title}",
                                          )));
                                },
                                child: CustomAllServices(
                                    services: model.listAllServices[index]),
                              );
                            }),
                      ),
                    ],
                  ),
                )));
  }
}
