import 'dart:async';
import 'package:demoapp/Models/Json1.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:maps_launcher/maps_launcher.dart';

// ignore: must_be_immutable
class MapSample extends StatefulWidget {
  Geo? userLocation;
  MapSample(this.userLocation);
  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  Completer<GoogleMapController> _controller = Completer();

  late CameraPosition initialLocation;

  static final CameraPosition _kLake = CameraPosition(
      target: LatLng(37.43296265331129, -122.08832357078792),
      zoom: 19.151926040649414);

  @override
  void initState() {
    super.initState();
    initialLocation = CameraPosition(
      target: LatLng(double.parse(widget.userLocation!.lat),
          double.parse(widget.userLocation!.lng)),
      zoom: 14.4746,
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(),
      body: GoogleMap(
        mapType: MapType.hybrid,
        initialCameraPosition: initialLocation,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: openMyLocation,
        label: Text('To my location!'),
        icon: Icon(Icons.location_city),
      ),
    );
  }

  openMyLocation() {
MapsLauncher.launchCoordinates(
      double.parse(widget.userLocation!.lat),
      double.parse(widget.userLocation!.lng),
    );
  }

  //Future<void> _goToTheLake() async {
  //final GoogleMapController controller = await _controller.future;
  // controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  // }
}
