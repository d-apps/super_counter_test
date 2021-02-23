import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:super_counter_test/src/controllers/controller.dart';
import 'package:super_counter_test/src/model/counter.dart';
import 'package:super_counter_test/src/screens/third_screen.dart';

class SecondScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    print("COUNTER: ${Get.find<Controller>().counter}");

    return Scaffold(
      appBar: AppBar(
        title: Text("Tela 2"),
        centerTitle: true,
      ),

      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [

            ElevatedButton(
              child: Text("Go to Third Screen"),
              onPressed: (){

                Get.to(
                  ThirdScreen(),
                );

              },
            ),

          ],
        ),

      ),
    );

  }
}
