import 'package:flutter/material.dart';

class ChevroletHal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chevrolet',style: TextStyle(color: Colors.yellow),),
        centerTitle: true,
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(
          color: Colors.yellow
        ),
      ),
    );
  }
}
