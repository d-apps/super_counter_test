import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:super_counter_test/src/controllers/controller.dart';

class ThirdScreen extends StatelessWidget {

  Controller controller = Get.find();

  @override
  Widget build(BuildContext context) {

    print("COUNTER: ${controller.counter}");

    return Scaffold(
      appBar: AppBar(
        title: Text("Tela 3"),
        centerTitle: true,
      ),

      body: Container(
        padding: const EdgeInsets.all(16),
      ),
    );

  }
}
