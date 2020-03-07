import 'package:flutter/material.dart';
import 'package:sig/beranda/beranda_appbar.dart';

class BerandaPage extends StatefulWidget {
  @override
   _BerandaPageState createState() => new  _BerandaPageState();
}

class _BerandaPageState extends State<BerandaPage> {

  @override
  Widget build(BuildContext context) {
    return new SafeArea(
      child: Scaffold(
        appBar: new SigAppBar(),
            body: Container(),
      ),      
    );
  }
}

class Halamanberanda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: new Text("Sig Wisata Tegal"),
        ),
        body: new Container(
          padding: EdgeInsets.all(20.0),
          child: new Center(
            child: new Text("tatih."),
          )
        )
    );
  }
}