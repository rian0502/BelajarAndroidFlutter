import 'package:flutter/material.dart';


class BmwHal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Bayerische Motoren Werke',style: TextStyle(color: Colors.yellow),),
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Colors.yellow
        ),
      ),
    );
  }
}
