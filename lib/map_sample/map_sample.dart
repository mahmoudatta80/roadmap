// import 'dart:async';
//
// import 'package:flutter/material.dart';
// import 'package:geolocator/geolocator.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
//
// class MapSample extends StatefulWidget {
//   const MapSample({super.key});
//
//   @override
//   State<MapSample> createState() => MapSampleState();
// }
//
// class MapSampleState extends State<MapSample> {
//   static Position? position;
//
//   getCurrentPosition() async {
//     var isServiceEnable = await Geolocator.isLocationServiceEnabled();
//     if (!isServiceEnable) {
//       await Geolocator.requestPermission();
//     }
//
//     position = await Geolocator.getCurrentPosition();
//     print(position!.latitude);
//     print(position!.longitude);
//     return position;
//   }
//
//   @override
//   void initState() {
//     getCurrentPosition();
//     setState(() {});
//     super.initState();
//   }
//
//   final Completer<GoogleMapController> _controller =
//       Completer<GoogleMapController>();
//
//   static const CameraPosition _kGooglePlex = CameraPosition(
//     target: LatLng(31.407400, 31.808690),
//     zoom: 14.4746,
//   );
//
//   static const CameraPosition _kLake = CameraPosition(
//       bearing: 192.8334901395799,
//       target: LatLng(37.43296265331129, -122.08832357078792),
//       tilt: 59.440717697143555,
//       zoom: 19.151926040649414);
//
//   @override
//   Widget build(BuildContext context) {
//     if (position == null) {
//       return Container(
//         color: Colors.white,
//         width: double.infinity,
//         height: double.infinity,
//       );
//     } else {
//       return Scaffold(
//         body: GoogleMap(
//           markers: {
//             Marker(
//               markerId: MarkerId('1'),
//               position: LatLng(31.407400, 31.808690),
//               icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
//             ),
//           },
//           mapType: MapType.normal,
//           initialCameraPosition: _kGooglePlex,
//           onMapCreated: (GoogleMapController controller) {
//             _controller.complete(controller);
//           },
//         ),
//         floatingActionButton: FloatingActionButton.extended(
//           onPressed: _goToTheLake,
//           label: const Text('To the lake!'),
//           icon: const Icon(Icons.directions_boat),
//         ),
//       );
//     }
//   }
//
//   Future<void> _goToTheLake() async {
//     final GoogleMapController controller = await _controller.future;
//     await controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
//   }
// }
