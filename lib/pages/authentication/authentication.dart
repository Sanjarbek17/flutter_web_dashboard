import 'package:flutter/material.dart';

import '../../widgets/custom_text.dart';

class AuthenticationPage extends StatelessWidget {
  const AuthenticationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: CustomText(text: 'Authentication'));
  }
}
