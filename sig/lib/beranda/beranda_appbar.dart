import 'package:flutter/material.dart';
import 'package:sig/constant.dart';

class SigAppBar extends AppBar{
  SigAppBar()
    : super(
      elevation: 0.25,
      flexibleSpace: _buildSigAppBar());
  static Widget _buildSigAppBar(){
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: GojekPallete.green,
        title: new Text("Wisata Tegal"),
      ),
    );
  }
}