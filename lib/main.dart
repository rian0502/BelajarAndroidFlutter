import 'package:flutter/material.dart';
import './allCars.dart' as cars;

void main(){
  runApp(MaterialApp(
    title: 'Belajar List View',
    home: const Home(),
    routes: <String,WidgetBuilder>{
      '/merciHal' : (BuildContext context)=> cars.MerciHal(),
      '/lamboHal' : (BuildContext context)=> cars.LamboHal(),
      '/chevrolet' : (BuildContext context)=> cars.ChevroletHal(),
      '/rollsroyce' : (BuildContext context)=> cars.RollsRoyceHal(),
      '/bentley' : (BuildContext context)=> cars.BentleyHal(),
      '/bmw' : (BuildContext context)=> cars.BmwHal(),
      '/vw' : (BuildContext context)=> cars.VwHal(),
    },
  ));
}

class Home extends StatelessWidget{
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Brand Mobil", style: TextStyle(color: Colors.yellow,fontSize: 20.0),),
        centerTitle: false,
      ),
      body: ListView(
        children: const <Widget>[
            ListItem(gambar: "https://logos-download.com/wp-content/uploads/2016/02/Bentley_logo.png", judul: "Bentley", keterangan: "Bentley Motors Limited adalah\npembuat mobil mewah dan mobil\nsports besar yang berbasis di Britania.",halTujuan: '/bentley',),
            ListItem(gambar: "http://3.bp.blogspot.com/_7u-qM2s3FOo/TNQX9P5LTPI/AAAAAAAAABM/5lRvHpmAGfk/s1600/BMW+FINAL.jpg", judul: "BMW", keterangan: "BMW, adalah sebuah perusahaan\notomotif Jerman yang memproduksi \nmobil dan sepeda motor.",halTujuan: '/bmw',),
            ListItem(gambar: "https://www.carlogos.org/logo/Chevrolet-logo-2004-1920x1080.jpg", judul: "Chevrolet",keterangan: "Chevrolet adalah sebuah merek otomotif \nAmerika Serikat yang merupakan\ndivisi dari General Motors", halTujuan: '/chevrolet',),
            ListItem(gambar: "http://2.bp.blogspot.com/-OfcGfN_fCbA/VDm59SrgofI/AAAAAAAAFfM/rOBrhFxmceg/s1600/Logo%2BLamborghini_Bull.png", judul: "Lamborghini",keterangan: "Automobili-Lamborghini S.p.A.,\nsering disebut Lamborghini\nadalah sebuah pembuat mobil di Italia.",halTujuan:'/lamboHal' ,),
            ListItem(gambar: "https://www.carlogos.org/logo/Mercedes-Benz-emblem-1926-1920x1080.png", judul: "Mercedes-Benz", keterangan: "sebuah perusahaan otomotif asal Jerman\nyang memproduksi berbagai macam\nkendaraan seperti mobil, truk, dan bus.",halTujuan: '/merciHal',),
            ListItem(gambar: "https://wallpapercave.com/wp/wp1981756.png", judul: "Rolls Royce", keterangan: "Rolls-Royce Limited adalah produsen\nmobil terkenal asal Inggris,\nyang juga memproduksi mesin pesawat.",halTujuan: '/rollsroyce',),
            ListItem(gambar: "https://d1yjjnpx0p53s8.cloudfront.net/styles/logo-original-577x577/s3/022015/new_logo_volkswagen_2.png?itok=wXMFiMha", judul: "VolksWagen", keterangan: "Volkswagen adalah sebuah\npabrikan otomotif berbasis\ndi Wolfsburg, Lower Saxony, Jerman",halTujuan:'/vw',)
        ],
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  const ListItem({required this.gambar, required this.judul, required this.keterangan, required this.halTujuan});
  final String gambar;
  final String judul;
  final String keterangan;
  final String halTujuan;
  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.all(15.0),
      child: Center(
        child: SizedBox(
          height: 100.0,
          child: Card(
            semanticContainer: true,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
            elevation: 5,
            margin: const EdgeInsets.all(5),
            child: Row(
              children: [
                Material(
                  child: InkWell(
                    child: Image(image: NetworkImage(gambar),width: 100.0,),
                    onTap: (){
                      Navigator.pushNamed(context, halTujuan);
                    },
                  ),

                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    children: [
                      Text(judul,style: const TextStyle(fontSize: 30.0, color: Colors.brown,fontWeight: FontWeight.bold),),
                      Text(keterangan,style: const TextStyle(fontSize: 13.0),)
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


