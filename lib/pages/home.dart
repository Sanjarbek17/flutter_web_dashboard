import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/counter_controller.dart';
import 'other.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final CounterController controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Text('Clicks : ${controller.counter.value}')),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Get.to(OtherScreen());
              },
              child: const Text('Open other screen'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.increment();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
