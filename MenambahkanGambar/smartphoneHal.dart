import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SmartPhoneHal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(20.0)),
            Image.asset("image/smartphone.png",width: 200.0,),
            Padding(padding:  EdgeInsets.all(20.0)),
            Text('HandPhone',style: TextStyle(fontSize: 30.0,color: Colors.deepOrangeAccent),),
          ],
        ),
      ),
    );
  }
}
