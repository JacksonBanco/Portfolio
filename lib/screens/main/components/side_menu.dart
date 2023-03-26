import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'area_info_text.dart';
import 'coding.dart';
import 'my_info.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            MyInfo(),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(defaultPadding),
                child: Column(
                  children: [
                    AreaInfoText(
                      title: "Residence",
                      text: "日本",
                    ),
                    AreaInfoText(
                      title: "City",
                      text: "東京",
                    ),
                    AreaInfoText(
                      title: "Age",
                      text: "29",
                    ),
                    SizedBox(height: defaultPadding),
                    Coding(),
                    Divider(),
                    SizedBox(height: defaultPadding / 2),
                    Container(
                      margin: EdgeInsets.only(top: defaultPadding),
                      color: Color(0xFF24242E),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
