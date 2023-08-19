import 'package:flutter/material.dart';
import 'package:udemy_project/widgets/large_screen.dart';
import 'package:udemy_project/widgets/small_screen.dart';
import 'package:udemy_project/widgets/top_nav.dart';

import 'helpers/responsive.dart';

class SiteLayout extends StatelessWidget {
  SiteLayout({super.key});

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topNavigationBar(context, scaffoldKey),
      body: const ResponsiveWidget(largeScreen: LargeScreen(), smallScreen: SmallScreen()),
    );
  }
}
