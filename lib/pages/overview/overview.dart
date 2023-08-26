import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:udemy_project/constants/controller.dart';
import 'package:udemy_project/helpers/responsive.dart';
import 'package:udemy_project/pages/overview/widgets/overview_cards_large.dart';
import 'package:udemy_project/pages/overview/widgets/overview_cards_medium.dart';
import 'package:udemy_project/pages/overview/widgets/overview_cards_small.dart';

import '../../widgets/custom_text.dart';

class OverViewPage extends StatelessWidget {
  const OverViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(
          () => Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                    top: ResponsiveWidget.isSmallScreen(context) ? 56 : 6),
                child: CustomText(
                  text: menuController.activeItem.value,
                  size: 24,
                  weight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Expanded(
            child: ListView(
          children: [
            if (ResponsiveWidget.isLargeScreen(context) ||
                ResponsiveWidget.isMediumScreen(context))
              if (ResponsiveWidget.isCustomSize(context))
                const OverviewCardsMediumScreen()
              else
                const OverviewCardsLargeScreen()
            else
              const OverviewCardsSmallScreen()
          ],
        ))
      ],
    );
  }
}
