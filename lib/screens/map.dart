import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class MyMap extends StatefulWidget {
  @override
  _MyMapState createState() => _MyMapState();
}

class _MyMapState extends State<MyMap> {
  GoogleMapController mapController;
  BitmapDescriptor pinLocationIcon;
  Set<Marker> _markers={};
  Completer<GoogleMapController> _controller=Completer();

  final LatLng _center = const LatLng(45.521563, -122.677433);
  void _onMapCreated(GoogleMapController controller){
    mapController=controller;
  }

  @override
  void initState() {
    // TODO: implement initState
    setCustomMapPin();
  }

  void setCustomMapPin() async{
    pinLocationIcon = await BitmapDescriptor.fromAssetImage(ImageConfiguration(devicePixelRatio: 2.5), 'assets/images/girl_img.jpg');
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Map"),
          backgroundColor: Colors.brown[700],
        ),
        body: GoogleMap(
        onTap: (pos) {
          print(pos);
          Marker m =
              Marker(markerId: MarkerId('0'), icon: pinLocationIcon, position: pos);
          setState(() {
            _markers.add(m);
          });
        },

          markers: _markers,
          myLocationEnabled: true,
         
          onMapCreated: _onMapCreated,
          
          initialCameraPosition: CameraPosition(
            target: _center,
            zoom: 11.0,
          ),
          
        ),
      ),
    );
  }
}