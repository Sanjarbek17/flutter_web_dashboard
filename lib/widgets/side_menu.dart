import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:udemy_project/routing/routes.dart';

import 'package:udemy_project/widgets/side_menu_item.dart';

import '../constants/controller.dart';
import '../constants/style.dart';
import '../helpers/responsive.dart';
import 'custom_text.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      color: light,
      child: ListView(
        children: [
          if (ResponsiveWidget.isSmallScreen(context))
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 40),
                Row(
                  children: [
                    SizedBox(width: width / 48),
                    Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: Image.asset("assets/icons/logo.png"),
                    ),
                    const Flexible(
                      child: CustomText(text: "Dash", size: 20, weight: FontWeight.bold, color: Colors.blue),
                    ),
                    SizedBox(width: width / 48),
                  ],
                ),
                const SizedBox(height: 30),
              ],
            ),
          Divider(color: lightGrey.withOpacity(.1)),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: sideMenuItems
                .map(
                  (itemName) => SideMenuItem(
                    itemName: itemName == AuthenticationPageRoute ? "Log Out" : itemName,
                    onTap: () {
                      if (itemName == AuthenticationPageRoute) {
                        // TODO: go to authentication page
                      }
                      if (!menuController.isActive(itemName)) {
                        menuController.changeActiveitemTo(itemName);
                        if (ResponsiveWidget.isSmallScreen(context)) {
                          Get.back();
                        }
                        navigationController.navigateTo(itemName);
                      }
                    },
                  ),
                )
                .toList(),
          )
        ],
      ),
    );
  }
}
