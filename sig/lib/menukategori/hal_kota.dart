import 'package:flutter/material.dart';
import 'package:sig/model/ApiServices.dart';
import 'package:sig/model/beranda_model.dart';

class Kota extends StatefulWidget {
  @override
  _KotaScreenState createState() => _KotaScreenState();
}

class _KotaScreenState extends State<Kota> {
  Apiservice apiService;

  @override
  void initState() {
    super.initState();
    apiService = Apiservice();
  }

  @override
  
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
        ),
    );
  }

  Widget _buildListView(List<Data> profiles) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: ListView.builder(
        itemBuilder: (context, index) {
          Data profile = profiles[index];
          return Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Card(
              elevation: 8.0,
              margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
              child: Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 3.0, vertical: 3.0),
                  leading: Container(
                    padding: EdgeInsets.all(10.0),
                    decoration: new BoxDecoration(
                        border: new Border(
                            right: new BorderSide(width: 1.0, color: Colors.white24))),
                    child: Icon(
                      Icons.location_on, color: Colors.white, size: 40.0,
                    ),
                  ),
                  title: Text(
                    profile.title,
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),

                  subtitle: Row(
                    children: <Widget>[
                      Icon(Icons.linear_scale, color: Colors.yellowAccent),
                      Text(profile.content, style: TextStyle(color: Colors.white))
                    ],
                  ),
                  trailing:
                  Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 30.0)
                ),
              ),
            ),
          );
        },
        itemCount: profiles.length,
      ),
    );
  }
}