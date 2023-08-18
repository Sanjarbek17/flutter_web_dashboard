import 'package:flutter/material.dart';
import 'package:udemy_project/widgets/large_screen.dart';
import 'package:udemy_project/widgets/small_screen.dart';

import 'helpers/responsive.dart';

class SiteLayout extends StatelessWidget {
  const SiteLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: ResponsiveWidget(
        largeScreen: LargeScreen(),
        smallScreen: SmallScreen(),
        mediumScreen: Text("Print"),
      ),
    );
  }
}
