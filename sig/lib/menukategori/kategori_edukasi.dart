import 'package:flutter/material.dart';
import 'package:sig/menukategori/hal_kab.dart' as kab;
import 'package:sig/menukategori/kategori_wilayah/kota_kat_edukasi.dart' as kota;

class HalamanEdukasi extends StatefulWidget {
  @override
  _HalamanEdukasiState createState() => _HalamanEdukasiState();
}

class _HalamanEdukasiState extends State<HalamanEdukasi> with SingleTickerProviderStateMixin{
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
        title: new Text("WISATA EDUKASI"),
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
          new kota.KotaKatEdukasi(),
          new kab.Kabupaten()
        ],
      ),
    );
  }
}