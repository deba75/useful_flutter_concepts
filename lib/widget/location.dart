import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:geolocator/geolocator.dart';

class LocationWidget extends StatefulWidget {
  const LocationWidget({super.key});

  @override
  State<LocationWidget> createState() => _LocationWidgetState();
}

class _LocationWidgetState extends State<LocationWidget> {
  Position? position;
  fetchposition() async {
    bool serviceEnabled;
    LocationPermission permission;
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      Fluttertoast.showToast(msg: 'Enable Your Location Service');
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        Fluttertoast.showToast(msg: 'You Denied Location services');
      }
    }
    if (permission == LocationPermission.deniedForever) {
      Fluttertoast.showToast(msg: 'You Denied the permission forever');
    }
    Position currentposition = await Geolocator.getCurrentPosition();
    setState(() {
      position = currentposition;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Location widget',
        ),
        backgroundColor: Colors.blue.shade800,
      ),
      backgroundColor: Colors.grey,
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(position == null ? 'Location' : position.toString(),
              style: TextStyle(fontSize: 20)),
          ElevatedButton(
              onPressed: () {
                fetchposition();
              },
              child: Text('Get Location'))
        ]),
      ),
    );
  }
}
