import 'package:flutter/material.dart';
import 'package:sig/constant.dart';
import 'package:sig/menukategori/hal_kab.dart' as kab;
import 'package:sig/menukategori/hal_kota.dart' as kota;

class HalamanAlam extends StatefulWidget {
  @override
  _HalamanAlamState createState() => _HalamanAlamState();
}

class _HalamanAlamState extends State<HalamanAlam> with SingleTickerProviderStateMixin{
  TabController controller;
  @override
  void initState() {
    controller = new TabController(length: 2, vsync: this);
    super.initState();
  }
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      //backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      appBar: new AppBar(
        title: new Text("WISATA ALAM"),
        bottom: new TabBar(
          controller: controller,
          tabs: <Widget>[
            new Tab(
              icon: new Image.asset(
                "assets/icons/city.png",
                width: 35.0,
                height: 35.0,
              ),
              text: "Kota Tegal",
            ),
            new Tab(
              icon: new Image.asset(
                "assets/icons/mountain.png",
                width: 35.0,
                height: 35.0,
              ),
              text: "Kabupaten Tegal",
            ),
          ],
        ),
      ),
      body: new TabBarView(
        controller: controller,
        children: <Widget>[
          new kota.Kota(),
          new kab.Kabupaten()
        ],
      ),
    );
  }
}