import 'package:flutter/material.dart';


class LamboHal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text('Lamborghini',style: TextStyle(color: Colors.yellow),),
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
              Image(image: NetworkImage("https://d1yjjnpx0p53s8.cloudfront.net/styles/logo-thumbnail/s3/072011/logo-lamborghini-3d.png?itok=GB4gbt-2"))
            ],
          ),
        ),
      ),
    );
  }
}