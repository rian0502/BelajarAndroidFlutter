import 'package:flutter/material.dart';
import './computerHal.dart' as komputer;
import './radioHal.dart' as radio;
import './hsHal.dart' as headset;
import './smartphoneHal.dart' as hp;

void main(){
  runApp(MaterialApp(
    home: Home(),
    title: 'Tabbar Belajar',

  ));
}
class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin{
  late TabController controller;
  @override
    void initState(){
    controller = TabController(length: 4, vsync: this);
      super.initState();
    }
  @override
    void dispose(){
    controller.dispose();
    super.dispose();
   }
  @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text("Daftar Eletronik",style: TextStyle(fontFamily: 'RobotoMono',
            fontSize: 30.0,color: Colors.white,
          ),),
          bottom: TabBar(
            controller: controller, tabs: const [
              Tab(icon: Icon(Icons.computer),text: 'Komputer',),
              Tab(icon: Icon(Icons.radio),text: 'Radio',),
              Tab(icon: Icon(Icons.headphones ),text: 'Headset',),
              Tab(icon: Icon(Icons.smartphone),text: 'SmartPhone',),
          ],
          ),
        ),
        body: TabBarView(
          controller: controller,
          children: [
            komputer.ComputerHal(),
            radio.RadioHal(),
            headset.HsHal(),
            hp.SmartPhoneHal()
          ],
        ),
      );
    }
}

