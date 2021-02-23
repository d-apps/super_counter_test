import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:super_counter_test/src/controllers/controller.dart';
import 'package:super_counter_test/src/controllers/counter_controller.dart';
import 'package:super_counter_test/src/screens/second_screen.dart';

class FirstScreen extends StatelessWidget {

  final CounterController counterController = CounterController();

  @override
  Widget build(BuildContext context) {

    Get.find<Controller>().counter = 1;

    return Scaffold(
      appBar: AppBar(
        title: Text("Tela 1"),
        centerTitle: true,
      ),

      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

           Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [

               Obx(() => Text("Counter1: ${counterController.counter1.value}")),

               Obx(() => Text("Counter2: ${counterController.counter2.value}")),

             ],
           ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

              IconButton(
                icon: Icon(Icons.add),
                onPressed: counterController.increment1,
              ),

                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: counterController.increment2,
                )

              ],
            ),


            ElevatedButton(
              child: Text("Go to Second Screen"),
              onPressed: (){

                Get.off(
                  () => SecondScreen(),
                );

              },
            ),

          ],
        ),
      ),
    );

  }
}







