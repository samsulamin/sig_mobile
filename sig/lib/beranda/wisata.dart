import 'package:flutter/material.dart';
import 'package:sig/model/ApiServices.dart';
import 'package:sig/model/beranda_model.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Apiservice apiService;

  @override
  void initState() {
    super.initState();
    apiService = Apiservice();
  }

  @override
  
  /*Widget build(BuildContext context) {
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
  }*/

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data Wisata"),
      ),
      body: new Container(
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
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      profile.title,
                      style: Theme.of(context).textTheme.title,
                    ),
                    Text(profile.content),
                    Text(profile.id.toString()),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        FlatButton(
                          onPressed: () {
                            // TODO: do something in here
                          },
                          child: Text(
                            "Lihat Detail",
                            style: TextStyle(color: Colors.red),
                          ),
                        ),
                      ],
                    ),
                  ],
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