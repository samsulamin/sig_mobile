import 'package:flutter/material.dart';
import 'package:sig/beranda/beranda_appbar.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SigAppBar(),
      body: MapSample(),
    );
  }
}

class MapSample extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<MapSample> {
  final Set<Marker> _markers = {};
  final LatLng _currentPosition = LatLng(-6.867689, 109.1359443);
  BitmapDescriptor myIcon;

  @override
  void initState() {
      BitmapDescriptor.fromAssetImage(
          ImageConfiguration(size: Size(48, 48)), 'assets/tourism.png')
          .then((onValue) {
        myIcon = onValue;
      });
      
    _markers.add(
      Marker(
        markerId: MarkerId("-6.867689, 109.1359443"),
        position: _currentPosition,
        //icon: BitmapDescriptor.defaultMarker,
        icon: myIcon,
        //icon: Icon(icon)
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SigAppBar(),
      
      body: GoogleMap(
        mapType: MapType.hybrid,
        initialCameraPosition: CameraPosition(
          target: _currentPosition,
          zoom: 14.0,
        ),
        markers: _markers,
      ),
    );
  }
}