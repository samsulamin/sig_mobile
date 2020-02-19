import 'package:flutter/material.dart';

void main(){
  runApp(
    new MaterialApp(
      title: "Halaman Wisata",
      home: new Halamanwisata(),
    )
  );
}


class Halamanwisata extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("My Apps"),
      ),
      body: new Container(
        child: ListView(
          children: <Widget>[
              Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: <Widget>[
                     Container(
                       width: 100.0,
                       height: 100.0,
                       color: Colors.blue,
                       child: new Icon(Icons.home, color: Colors.white, size: 50.0,),
                     ),
                     Expanded(
                       child: Container(
                         padding: EdgeInsets.all(15.0),
                         height: 100.0,
                         color: Colors.blue[200],
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: <Widget>[
                             Text("Artikel 1", style: TextStyle(color: Colors.white, fontSize: 15.0)),
                             Text("Ini adalah contoh artikel pada listview dengan versi custom", style: TextStyle(color: Colors.white),)
                           ],
                         ),
                       ),
                     )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: <Widget>[
                     Container(
                       width: 100.0,
                       height: 100.0,
                       color: Colors.blue,
                       child: new Icon(Icons.home, color: Colors.white, size: 50.0,),
                     ),
                     Expanded(
                       child: Container(
                         padding: EdgeInsets.all(15.0),
                         height: 100.0,
                         color: Colors.blue[200],
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: <Widget>[
                             Text("Artikel 2", style: TextStyle(color: Colors.white, fontSize: 15.0)),
                             Text("Ini adalah contoh artikel pada listview dengan versi custom", style: TextStyle(color: Colors.white),)
                           ],
                         ),
                       ),
                     )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: <Widget>[
                     Container(
                       width: 100.0,
                       height: 100.0,
                       color: Colors.blue,
                       child: new Icon(Icons.home, color: Colors.white, size: 50.0,),
                     ),
                     Expanded(
                       child: Container(
                         padding: EdgeInsets.all(15.0),
                         height: 100.0,
                         color: Colors.blue[200],
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: <Widget>[
                             Text("Artikel 3", style: TextStyle(color: Colors.white, fontSize: 15.0)),
                             Text("Ini adalah contoh artikel pada listview dengan versi custom", style: TextStyle(color: Colors.white),)
                           ],
                         ),
                       ),
                     )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: <Widget>[
                     Container(
                       width: 100.0,
                       height: 100.0,
                       color: Colors.blue,
                       child: new Icon(Icons.home, color: Colors.white, size: 50.0,),
                     ),
                     Expanded(
                       child: Container(
                         padding: EdgeInsets.all(15.0),
                         height: 100.0,
                         color: Colors.blue[200],
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: <Widget>[
                             Text("Artikel 4", style: TextStyle(color: Colors.white, fontSize: 15.0)),
                             Text("Ini adalah contoh artikel pada listview dengan versi custom", style: TextStyle(color: Colors.white),)
                           ],
                         ),
                       ),
                     )
                  ],
                ),
              ),
              
          ],
        ),
      ),
    );
  }
}