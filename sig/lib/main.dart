import 'package:flutter/material.dart';
import 'package:sig/launcher/launcher_view.dart';
import 'package:sig/constant.dart';
import 'package:flutter/services.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SIG Wisata Tegal',
      theme: new ThemeData(
        fontFamily: 'NeoSans',
        primaryColor: GojekPallete.green,
        accentColor: GojekPallete.green,
      ),
      home: new LauncherPage(),
    );
  }
}