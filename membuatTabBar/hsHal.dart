import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HsHal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: const [
            Padding(padding: EdgeInsets.all(20.0)),
            Icon(Icons.headphones ,size: 50.0,color: Colors.deepOrange,),
            Padding(padding:  EdgeInsets.all(20.0)),
            Text('Headset',style: TextStyle(fontSize: 30.0,color: Colors.deepOrangeAccent),),
          ],
        ),
      ),
    );
  }
}
