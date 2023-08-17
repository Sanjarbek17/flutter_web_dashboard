import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:udemy_project/controllers/count_controller.dart';

class OtherScreen extends StatelessWidget {
  OtherScreen({super.key});

  final CounterController _controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text('Clicks: ${_controller.counter.value}')),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Get.back();
            },
            child: const Text('Open other screen'),
          ),
        ],
      ),
    );
  }
}
