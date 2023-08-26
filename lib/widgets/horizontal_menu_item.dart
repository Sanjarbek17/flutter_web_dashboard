// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:udemy_project/constants/controller.dart';
import 'package:udemy_project/constants/style.dart';
import 'package:udemy_project/widgets/custom_text.dart';

class HorizontalMenuItem extends StatelessWidget {
  final String itemName;
  final Function()? onTap;

  const HorizontalMenuItem({super.key, required this.itemName, required this.onTap});

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: onTap,
      onHover: (value) {
        value ? menuController.onHover(itemName) : menuController.onHover("not hovering");
      },
      child: Obx(
        () => Container(
          color: menuController.isHovering(itemName) ? lightGrey.withOpacity(.1) : Colors.transparent,
          child: Row(children: [
            Visibility(
              visible: menuController.isHovering(itemName) || menuController.isActive(itemName),
              maintainSize: true,
              maintainState: true,
              maintainAnimation: true,
              child: Container(width: 6, height: 40, color: dark),
            ),
            SizedBox(width: _width / 80),
            Padding(
              padding: const EdgeInsets.all(16),
              child: menuController.returnIconFor(itemName),
            ),
            if (!menuController.isActive(itemName))
              Flexible(
                  child: CustomText(
                text: itemName,
                color: menuController.isHovering(itemName) ? dark : lightGrey,
              ))
            else
              Flexible(
                child: CustomText(text: itemName, color: dark, size: 18, weight: FontWeight.bold),
              )
          ]),
        ),
      ),
    );
  }
}
