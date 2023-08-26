import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'controllers/menu_controller.dart';
import 'controllers/navigation_controller.dart';
import 'layout.dart';

void main() {
  Get.put(MenuControler());
  Get.put(NavigationController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Dash',
      theme: ThemeData(
          textTheme: GoogleFonts.madaTextTheme(Theme.of(context).textTheme).apply(bodyColor: Colors.black),
          pageTransitionsTheme: const PageTransitionsTheme(
            builders: {
              TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
              TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
            },
          ),
          scaffoldBackgroundColor: Colors.white,
          primarySwatch: Colors.blue),
      home: SiteLayout(),
    );
  }
}
