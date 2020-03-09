//carousel
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:sig/menukategori/halaman_kategori.dart';
import 'package:sig/menukategori/kategori_edukasi.dart';
import 'package:sig/menukategori/kategori_religi.dart';
import 'package:sig/menukategori/kategori_kuliner.dart';
import 'package:sig/menukategori/kategori_sfoto.dart';
import 'package:sig/menukategori/kategori_dll.dart';
//import 'package:sig/constant.dart';

void main() {
  runApp(new MaterialApp(
    title: "My Apps",
    home: new Halamanberanda(),
  ));
}

class Halamanberanda extends StatefulWidget {
  Halamanberanda() : super();
  //final String title = "Carousel Demo";
  @override
  CarouselDemoState createState() => CarouselDemoState();
}
 
class CarouselDemoState extends State<Halamanberanda> {
  //
  CarouselSlider carouselSlider;
  int _current = 0;
  List imgList = [
    'https://i.imgur.com/CZgLcn1.jpg',
    'https://i.imgur.com/nOJRvTF.jpg',
    'https://i.imgur.com/CHnfm6c.jpg',
    'https://i.imgur.com/0R6mUSG.jpg',
    'https://i.imgur.com/MkhM3Mw.jpg'
  ];
 
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }
 
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
        title: new Text("Wisata Tegal"),
      ),
      body: new Container(
        child: new ListView(
          physics: ClampingScrollPhysics(),
          children: <Widget>[
            new Container(
              padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
              color: Colors.white,
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  _akun(),
                ],
              ),
            ),
            new Container(
              padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
              color: Colors.white,
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  _menukategori(),
                ],
              ),
            ),
            new Container(
              padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
              color: Colors.white,
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  _carousel(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

Widget _carousel() {
  return new Container(
      height: 500.0,
      child: new Column(
        children: <Widget>[
            carouselSlider = CarouselSlider(
              height: 410.0,
              initialPage: 0,
              enlargeCenterPage: true,
              autoPlay: true,
              reverse: false,
              enableInfiniteScroll: true,
              autoPlayInterval: Duration(seconds: 2),
              autoPlayAnimationDuration: Duration(milliseconds: 2000),
              pauseAutoPlayOnTouch: Duration(seconds: 10),
              scrollDirection: Axis.horizontal,
              onPageChanged: (index) {
                setState(() {
                  _current = index;
                });
              },
              items: imgList.map((imgUrl) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 10.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Image.network(
                        imgUrl,
                        fit: BoxFit.fill,
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            /*SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: map<Widget>(imgList, (index, url) {
                return Container(
                  width: 10.0,
                  height: 10.0,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _current == index ? Colors.redAccent : Colors.green,
                  ),
                );
              }),
            ),*/
          ],
      )
    );
  }

  Widget _menukategori() {
    return new Container(
        height: 240.0,
        decoration: new BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [const Color(0xff3164bd), const Color(0xff295cb5)],
            ),
            borderRadius: new BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))),
        child: new Column(
          children: <Widget>[
            new Container(
              padding: EdgeInsets.all(12.0),
              decoration: new BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [const Color(0xff3164bd), const Color(0xff295cb5)],
                  ),
                  borderRadius: new BorderRadius.only(
                      topLeft: new Radius.circular(3.0),
                      topRight: new Radius.circular(3.0))),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new Text(
                    "KATEGORI",
                    style: new TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                        fontFamily: "NeoSansBold"),
                  ),
                  new Container(
                    child: new Text(
                      "Wisata Tegal",
                      style: new TextStyle(
                          fontSize: 14.0,
                          color: Colors.white,
                          fontFamily: "NeoSansBold"),
                    ),
                  )
                ],
              ),
            ),
            new Container(
              padding: EdgeInsets.only(left: 32.0, right: 32.0, top: 12.0, bottom: 15.0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new IconButton(
                        icon: new Image.asset(
                          "assets/icons/mountain.png",
                          width: 35.0,
                          height: 35.0,
                          ), 
                        onPressed: (){
                          Route route = MaterialPageRoute(builder: (context) => HalamanAlam());
                          Navigator.push(context, route);
                        }),
                      new Padding(
                        padding: EdgeInsets.only(top: 10.0),
                      ),
                      new Text(
                        "Alam",
                        style: TextStyle(color: Colors.white, fontSize: 12.0),
                      )
                    ],
                  ),
                  new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new IconButton(
                        icon: new Image.asset(
                          "assets/icons/math.png",
                          width: 35.0,
                          height: 35.0,
                          ), 
                        onPressed: (){
                          Route route = MaterialPageRoute(builder: (context) => HalamanEdukasi());
                          Navigator.push(context, route);
                        }),
                      new Padding(
                        padding: EdgeInsets.only(top: 5.0),
                      ),
                      new Text(
                        "Edukasi",
                        style: TextStyle(color: Colors.white, fontSize: 12.0),
                      )
                    ],
                  ),
                  new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new IconButton(
                        icon: new Image.asset(
                          "assets/icons/islam.png",
                          width: 35.0,
                          height: 35.0,
                          ), 
                        onPressed: (){
                          Route route = MaterialPageRoute(builder: (context) => HalamanReligi());
                          Navigator.push(context, route);
                        }),
                      new Padding(
                        padding: EdgeInsets.only(top: 5.0),
                      ),
                      new Text(
                        "Religi",
                        style: TextStyle(color: Colors.white, fontSize: 12.0),
                      )
                    ],
                  ),
                  new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new IconButton(
                        icon: new Image.asset(
                          "assets/icons/breakfast.png",
                          width: 35.0,
                          height: 35.0,
                          ), 
                        onPressed: (){
                          Route route = MaterialPageRoute(builder: (context) => HalamanKuliner());
                          Navigator.push(context, route);
                        }),
                      new Padding(
                        padding: EdgeInsets.only(top: 5.0),
                      ),
                      new Text(
                        "Kuliner",
                        style: TextStyle(color: Colors.white, fontSize: 12.0),
                      )
                    ],
                  ),
                ],
              ),
            ),
            new Container(
              padding: EdgeInsets.only(left: 32.0, right: 32.0, bottom: 25.0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new IconButton(
                        icon: new Image.asset(
                          "assets/icons/instant.png",
                          width: 35.0,
                          height: 35.0,
                          ), 
                        onPressed: (){
                          Route route = MaterialPageRoute(builder: (context) => HalamanSfoto());
                          Navigator.push(context, route);
                        }),
                      new Padding(
                        padding: EdgeInsets.only(top: 5.0),
                      ),
                      new Text(
                        "Spot Foto",
                        style: TextStyle(color: Colors.white, fontSize: 12.0),
                      )
                    ],
                  ),
                  new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new IconButton(
                        icon: new Image.asset(
                          "assets/icons/city.png",
                          width: 35.0,
                          height: 35.0,
                          ), 
                        onPressed: null),
                      new Padding(
                        padding: EdgeInsets.only(top: 5.0),
                      ),
                      new Text(
                        "Kota Tegal",
                        style: TextStyle(color: Colors.white, fontSize: 12.0),
                      )
                    ],
                  ),
                  new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new IconButton(
                        icon: new Image.asset(
                          "assets/icons/mountains.png",
                          width: 35.0,
                          height: 35.0,
                          ), 
                        onPressed: null),
                      new Padding(
                        padding: EdgeInsets.only(top: 5.0),
                      ),
                      new Text(
                        "Kab. Tegal",
                        style: TextStyle(color: Colors.white, fontSize: 12.0),
                      )
                    ],
                  ),
                  new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new IconButton(
                        icon: new Image.asset(
                          "assets/icons/tuk-tuk.png",
                          width: 35.0,
                          height: 35.0,
                          ), 
                        onPressed: (){
                          Route route = MaterialPageRoute(builder: (context) => HalamanDll());
                          Navigator.push(context, route);
                        }),
                      new Padding(
                        padding: EdgeInsets.only(top: 5.0),
                      ),
                      new Text(
                        "Lain-lain",
                        style: TextStyle(color: Colors.white, fontSize: 12.0),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ));
  }
  Widget _akun() {
    return new Container(
        height: 65.0,
        decoration: new BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [const Color(0xff3164bd), const Color(0xff295cb5)]
            ),
            borderRadius: new BorderRadius.all(Radius.circular(15))),
        child: new Column(
          children: <Widget>[
            new Container(
              padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 5.0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Image.asset(
                        "assets/icons/profile.png",
                        width: 55.0,
                        height: 55.0,
                      ),
                    ],
                  ),
                  new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Text(
                        "M. Ridho Sukron",
                        style: TextStyle(color: Colors.white, fontSize: 18.0),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        )
      );
  }
}

