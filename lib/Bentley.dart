import 'package:flutter/material.dart';

class BentleyHal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bentley',style: TextStyle(color: Colors.yellow),),
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(color: Colors.yellow),
        centerTitle: true,
      ),
    );
  }
}
