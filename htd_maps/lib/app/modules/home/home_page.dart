import 'dart:async';
import 'dart:io';
import 'dart:typed_data';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'home_controller.dart';
import 'dart:ui' as ui;
import 'package:flutter_cache_manager/flutter_cache_manager.dart';

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

  Future<BitmapDescriptor> getBytesFromAsset(String path) async {
    final int targetWidth = 100;
    final File markerImageFile =
        await DefaultCacheManager().getSingleFile(path);

    final Uint8List markerImageBytes = await markerImageFile.readAsBytes();
    final Codec markerImageCodec = await instantiateImageCodec(
      markerImageBytes,
      targetWidth: targetWidth,
    );
    final FrameInfo frameInfo = await markerImageCodec.getNextFrame();
    final ByteData byteData = await frameInfo.image.toByteData(
      format: ImageByteFormat.png,
    );
    final Uint8List resizedMarkerImageBytes = byteData.buffer.asUint8List();
    return BitmapDescriptor.fromBytes(resizedMarkerImageBytes);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: FutureBuilder<BitmapDescriptor>(
          future: getBytesFromAsset(
              'https://www.irmasclarissas.org.br/wp-content/uploads/2015/08/Map-Marker-PNG-File.png'),

          //Caso voce queira consumir um Png local
          //If u wanna use a local asset
          // future: BitmapDescriptor.fromAssetImage(
          //     ImageConfiguration(devicePixelRatio: 1, size: Size(10, 10)),
          //     'assets/marker.png'),
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
