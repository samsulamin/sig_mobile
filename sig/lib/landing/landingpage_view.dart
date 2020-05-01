import 'package:flutter/material.dart';
import 'package:sig/beranda/halaman_beranda.dart';
import 'package:sig/beranda/halaman_login.dart';
import 'package:sig/beranda/halaman_wisata.dart';
import 'package:sig/beranda/halaman_tentang.dart';
import 'package:sig/beranda/wisata.dart';
import 'package:sig/model/beranda_model.dart';
import 'package:sig/menukategori/halaman_kategori.dart';
import 'package:sig/constant.dart';

void main() {
  runApp(new MaterialApp(
    title: "My Apps",
    home: new Halamannav(),
  ));
}

class Halamannav extends StatefulWidget {
  @override
  _HalamannavState createState() => _HalamannavState();
}

class _HalamannavState extends State {
  int _selectedIndex = 0;

  final _widgetOptions = [
    Halamanberanda(),
    MapSample(),
    Halamantentang(),
    LoginPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Beranda'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.map),
              title: Text('Peta Wisata'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.info),
              title: Text('Tentang Kami'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Login'),
            ),
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          fixedColor: GojekPallete.green,
          onTap: _onItemTapped,
        ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}