import 'package:flutter/material.dart';

class RollsRoyceHal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Rolls Royce',style: TextStyle(color: Colors.yellow),),
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Colors.yellow
        ),
      ),
    );
  }
}
