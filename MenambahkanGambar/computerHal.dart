import 'package:flutter/material.dart';


class ComputerHal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(20.0)),
            Image.asset("image/computer.png",width: 200.0,),
            Padding(padding:  EdgeInsets.all(20.0)),
            const Text('Computer',style: TextStyle(fontSize: 30.0,color: Colors.deepOrangeAccent),),
          ]
        ),
      ),
    );
  }
}
