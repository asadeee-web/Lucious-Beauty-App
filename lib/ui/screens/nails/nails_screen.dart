import 'package:flutter/material.dart';
import 'package:lucious_beauty/core/constants/styles.dart';
import 'package:lucious_beauty/ui/screens/nails/nails_screen_view_model.dart';
import 'package:provider/provider.dart';

class NailScreen extends StatelessWidget {
  String? titlename;
  NailScreen({this.titlename, super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (create) => NailsModel(),
      child: Consumer<NailsModel>(
          builder: (context, model, child) => Scaffold(
                appBar: AppBar(
                  title: Text(
                    "Nails",
                    style: headingTextStyle,
                  ),
                ),

                //body: ,
              )),
    );
  }
}
