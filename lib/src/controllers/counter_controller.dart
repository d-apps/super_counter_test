import 'package:flutter/animation.dart';
import 'package:get/get.dart';

class CounterController extends GetxController with SingleGetTickerProviderMixin {

  CounterController(){
    onInit();
  }

  Worker updateWorker;
  Worker workers;

  final counter2 = 0.obs;
  final counter1 = 0.obs;

  void increment1() => counter1.value++;
  void decrement1() => counter1.value--;

  void increment2() => counter2.value++;
  void decrement2() => counter2.value--;

  @override
  void onInit() {

   updateWorker =  ever(
       counter1,
           (_) => print("$_ has been changed"),
       condition: counter1.value > 1000);

   workers = everAll(
       [ counter1, counter2],
       (_) => print(_)
   );

    super.onInit();
  }

  void stopWorkers(){
    updateWorker.dispose();
    workers.dispose();
  }

}