// ignore_for_file: unrelated_type_equality_checks

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class DetermineMyLocation extends StatefulWidget {
  const DetermineMyLocation({Key? key}) : super(key: key);

  @override
  State<DetermineMyLocation> createState() => _DetermineMyLocationState();
}

class _DetermineMyLocationState extends State<DetermineMyLocation> {
  late bool isServiceEnabled;
  late LocationPermission permission;
  late Position myPosition;

  Future checkPermission() async {
    isServiceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!isServiceEnabled) {
      return Geolocator.openLocationSettings();
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied ||
          permission == LocationPermission.deniedForever) {
        return Future.error('Location Permission is denied');
      }
    }
  }

  Future<Position> getPosition() async{
    myPosition = await Geolocator.getCurrentPosition();
    print(myPosition.latitude);
    return myPosition;
  }

  @override
  void initState() {
    //checkPermission();
    getPosition();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Geo Locator',
        ),
      ),
      body: Center(
        child: Column(
          children: const [
            Text(
              '',
            ),
            Text(
              '',
            ),
          ],
        ),
      ),
    );
  }
}
