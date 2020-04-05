import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller

  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(-30.0277, -51.2287),
    zoom: 14.4746,
  );

  static final CameraPosition _kLake =
      CameraPosition(target: LatLng(-29.9739656, -51.1950164), zoom: 14);

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: FutureBuilder<BitmapDescriptor>(
          future: BitmapDescriptor.fromAssetImage(
              ImageConfiguration(devicePixelRatio: 1, size: Size(10, 10)),
              'assets/marker.png'),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }

            return GoogleMap(
              markers: {
                Marker(
                  markerId: MarkerId(""),
                  icon: snapshot.data,
                  position: LatLng(-29.9739656, -51.1950164),
                )
              },
              mapType: MapType.hybrid,
              initialCameraPosition: _kGooglePlex,
              onMapCreated: (GoogleMapController controller) {
                _controller.complete(controller);
              },
            );
          }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _goToTheLake,
        label: Text('Arena do Grêmio'),
        icon: Icon(Icons.directions_boat),
      ),
    );
  }
}
