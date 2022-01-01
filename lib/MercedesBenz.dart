import 'package:flutter/material.dart';

class MerciHal extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mercedes-Benz',style: TextStyle(color: Colors.yellow),),
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(
          color: Colors.yellow
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: [
              Image(image: NetworkImage("https://seeklogo.com/images/M/Mercedes-Benz-logo-8F1B2E9A56-seeklogo.com.png"),)
            ],
          ),
        ),
      ),
    );
  }
}
