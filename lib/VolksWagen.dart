import 'package:flutter/material.dart';

class VwHal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Volkswagen',style: TextStyle(color: Colors.yellow),),
        backgroundColor: Colors.black,
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Colors.yellow
        ),
      ),
    );
  }
}
