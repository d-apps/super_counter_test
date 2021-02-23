import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:super_counter_test/src/controllers/controller.dart';
import 'package:super_counter_test/src/screens/first_screen.dart';

void main() {

  WidgetsFlutterBinding.ensureInitialized();

  //Get.put(Controller());
  //Get.put(Controller(), tag: "controller1", permanent: true);

  // ================

  /*
  Get.lazyPut<ApiMock>(() => ApiMock());

  Get.lazyPut<FirebaseAuth>(
       () {
        // ... some logic if needed
        return FirebaseAuth();
      },
      tag: Math.random().toString(),
      fenix: true
  )*/

  Get.lazyPut<Controller>( () => Controller() );


  // ================

  /*
  Get.putAsync<SharedPreferences>(() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('counter', 12345);
    return prefs;
  });

  Get.putAsync<YourAsyncClass>( () async => await YourAsyncClass() )
   */

  // ================

  //Get.create(() => Controller());

  // ================

  //Controller controller = Get.find();
  //var controller = Get.find<Controller>();
  //var / final controller = Get.find(); // Errado

  //int counter = Get.find<Controller>().counter;

  runApp(MyApp());

}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FirstScreen(),
    );
  }

}


