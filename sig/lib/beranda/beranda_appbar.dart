import 'package:flutter/material.dart';
import 'package:sig/constant.dart';

class SigAppBar extends AppBar{
  SigAppBar()
    : super(
      elevation: 0.25,
      backgroundColor: GojekPallete.green,
      flexibleSpace: _buildSigAppBar());
  static Widget _buildSigAppBar(){
    return new Container(
      padding: EdgeInsets.only(left: 16.0, right: 16.0),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          new Image.asset(
            "assets/best.png",
            height: 80.0,
            width: 50.0,
          ),
          new Container(
            child: new Row(
              children: <Widget>[
                new Container(
                  height: 28.0,
                  width: 28.0,
                  padding: EdgeInsets.all(6.0),
                  decoration: new BoxDecoration(
                    borderRadius: 
                      new BorderRadius.all(new Radius.circular(100.0)),
                    color: Colors.orangeAccent),
                  alignment: Alignment.centerRight,
                  child: new Icon(
                    Icons.location_on,
                    color: Colors.white,
                    size: 16.0,
                  ),                
                ),
                new Container(
                  padding: EdgeInsets.all(6.0),
                  decoration: new BoxDecoration(
                    borderRadius: 
                      new BorderRadius.all(new Radius.circular(5.0)),
                    color: Colors.white),
                  child: new Text(
                    "Sig Wisata Tegal",
                    style: TextStyle(fontSize: 14.0),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}