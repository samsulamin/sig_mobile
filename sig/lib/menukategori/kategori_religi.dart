import 'package:flutter/material.dart';
import 'package:sig/menukategori/hal_kab.dart' as kab;
//import 'package:sig/menukategori/hal_kota.dart' as kota;
import 'package:sig/menukategori/kategori_wilayah/kota_kat_religi.dart' as kota;

class HalamanReligi extends StatefulWidget {
  @override
  _HalamanReligiState createState() => _HalamanReligiState();
}

class _HalamanReligiState extends State<HalamanReligi> with SingleTickerProviderStateMixin{
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
      appBar: new AppBar(
        title: new Text("WISATA RELIGI"),
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
          new kota.KotaKatReligi(),
          new kab.Kabupaten()
        ],
      ),
    );
  }
}