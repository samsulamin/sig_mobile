import 'package:flutter/material.dart';

void main(){
  runApp(
    new MaterialApp(
      title: "Halaman beranda",
      home: new Halamanberanda(),
    )
  );
}


class Halamanberanda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: new Text("Sig Wisata Tegal"),
        ),
        body: new Container(
          padding: EdgeInsets.all(20.0),
          child: new Center(
            child: new Text("Jangan Pernah Mundur, Walaupun Harus Tertatih."),
          )
        )
      )
    );
  }
}

