import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

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
