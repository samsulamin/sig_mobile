import 'package:flutter/material.dart';
import 'package:sig/beranda/beranda_appbar.dart';
import 'package:sig/constant.dart';
import 'package:sig/model/ApiServices.dart';
import 'package:sig/model/model_wisata.dart';

class HomeScreen extends StatefulWidget {
  //static String tag = 'login-page';
  @override
  InstagramCards createState() => new InstagramCards();
}

class InstagramCards extends State<HomeScreen> {
  @override
  Apiservice apiService;

  @override
  void initState() {
    super.initState();
    apiService = Apiservice();
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: FutureBuilder(
        future: apiService.getProfiles(),
        builder: (BuildContext context, AsyncSnapshot<List<Data>> snapshot) {
          if (snapshot.hasError) {
            return Center(
              child: Text(
                  "Something wrong with message: ${snapshot.error.toString()}"),
            );
          } else if (snapshot.connectionState == ConnectionState.done) {
            List<Data> profiles = snapshot.data;
            return _buildListView(profiles);
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      )
    );
  }

  Widget _buildListView(List<Data> profiles) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: ListView.builder(
        itemBuilder: (context, index) {
          Data profile = profiles[index];
            return new Container(
              child: new Column(
                children: <Widget>[
                  new Container(
                    child: Image.asset(
                      'assets/wt_baru1.png',
                      width: 300,
                      height: 300,
                      fit: BoxFit.cover,
                    ),
                  ),
                  new Container(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      children: [
                        Expanded(
                          /*1*/
                          child: Column(
                            //crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              /*2*/
                              Row(
                                children: <Widget>[
                                  IconButton(
                                    icon: Icon(
                                      Icons.star_border, color: Color(0xff000000),
                                    ),
                                  
                                  onPressed:null ),
                                  IconButton(icon: Icon(Icons.send, color: Color(0xff000000)), 
                                  onPressed:null ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        /*3*/
                        Icon(
                          Icons.star,
                          color: GojekPallete.icon,
                        ),
                        Icon(
                          Icons.star,
                          color: GojekPallete.icon,
                        ),
                        /*3*/
                        Icon(
                          Icons.star_border,
                          color: GojekPallete.icon,
                        ),
                      ],
                    ),
                  ),
                  new Container(
                    //color: GojekPallete.green,
                    padding: const EdgeInsets.only(left: 20, top: 10.0, right: 20, bottom:10.0),
                    child: Text(
                      profile.namawisata,
                      softWrap: true,
                    ),
                  )
                ],
              )
          );
        },
        itemCount: profiles.length,
      ),
    );
  } 
}