import 'package:flutter/material.dart';
import 'package:sig/constant.dart';

class Halamanwisata extends StatefulWidget {
  static String tag = 'login-page';
  @override
  _WisataPageState createState() => new _WisataPageState();
}

class _WisataPageState extends State<Halamanwisata> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("SIG Wisata Tegal"),
      ),
      body: DaftarWisata(),
    );
  }
}

class DaftarWisata extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
        child: ListView(
          children: <Widget>[
              Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: <Widget>[
                     Container(
                       width: 50.0,
                       height: 100.0,                      
                       //color: Colors.blue,
                       //child: new Icon(Icons.home, color: Colors.white, size: 50.0,),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            decoration: new BoxDecoration(
                              color: Colors.indigoAccent[100],
                              borderRadius: new BorderRadius.only(
                              topLeft:  const  Radius.circular(10.0),
                              bottomLeft: const  Radius.circular(10.0))
                            ),
                            child: IconButton(
                              icon: Icon(Icons.location_on),
                              color: Colors.white,
                              iconSize: 35,
                              onPressed: () {},
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(15.0),
                          height: 100.0,
                          color: Colors.indigo,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Rita Park", style: TextStyle(color: Colors.white, fontSize: 20.0)),
                              Text("Alamat: Jl.......", style: TextStyle(color: Colors.white),)
                            ],
                          ),
                        ),
                      ),

                     Container(
                       width: 50.0,
                       height: 100.0,                      
                       //color: Colors.blue,
                       //child: new Icon(Icons.home, color: Colors.white, size: 50.0,),
                      child: InkWell(
                        //borderRadius: BorderRadius.circular(20),
                        //splashColor: GojekPallete.green,
                        //highlightColor: GojekPallete.green,
                        child: Container(
                          decoration: new BoxDecoration(
                            color: Colors.indigoAccent[100],
                            borderRadius: new BorderRadius.only(
                            topRight:  const  Radius.circular(10.0),
                            bottomRight: const  Radius.circular(10.0))
                          ),
                          child: IconButton(
                            icon: Icon(Icons.fullscreen),
                            color: Colors.white,
                            iconSize: 35,
                            onPressed: () {},
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              
          ],
        ),
      );
  }
}