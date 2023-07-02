// import 'dart:async';
//
// import 'package:flutter/material.dart';
// import 'package:flutter_polyline_points/flutter_polyline_points.dart';
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
//     return position;
//   }
//
//   //31.407400, 31.808690
//   //31.037468, 31.387453
//   double originLatitude = 31.407400, originLongitude = 31.808690;
//   double destLatitude = 31.037468, destLongitude = 31.387453;
//   Map<PolylineId, Polyline> polylines = {};
//   List<LatLng> polylineCoordinates = [];
//   PolylinePoints polylinePoints = PolylinePoints();
//   String googleAPiKey = "AIzaSyDZnXt5NZJnsntMked4qGtDaBO2lVxuDWM";
//
//   Set<Marker> myMarkers = {};
//
//   @override
//   void initState() {
//     getCurrentPosition();
//     myMarkers.add(
//       Marker(
//         markerId: const MarkerId('1'),
//         position: const LatLng(31.407400, 31.808690),
//         icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
//       ),
//     );
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
//       target: LatLng(31.037468, 31.387453),
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
//           markers: myMarkers,
//           mapType: MapType.normal,
//           polylines: Set<Polyline>.of(polylines.values),
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
//   addPolyLine() {
//     PolylineId id = const PolylineId("poly");
//     Polyline polyline = Polyline(
//       polylineId: id,
//       color: Colors.red,
//       points: polylineCoordinates,
//       width: 4,
//     );
//     polylines[id] = polyline;
//     setState(() {});
//   }
//
//   getPolyline() async {
//     PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
//         googleAPiKey,
//         PointLatLng(originLatitude, originLongitude),
//         PointLatLng(destLatitude, destLongitude),
//         travelMode: TravelMode.driving,
//         wayPoints: [PolylineWayPoint(location: "Sabo, Yaba Lagos Nigeria")]);
//     // if (result.points.isNotEmpty) {
//     //   result.points.forEach((PointLatLng point) {
//     //
//     //   });
//     // }
//     polylineCoordinates.add(LatLng(originLatitude, originLongitude));
//     polylineCoordinates.add(LatLng(destLatitude, destLongitude));
//     addPolyLine();
//   }
//
//   Future<void> _goToTheLake() async {
//     myMarkers.add(
//       Marker(
//         markerId: const MarkerId('2'),
//         position: const LatLng(31.037468, 31.387453),
//         icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
//       ),
//     );
//     getPolyline();
//     final GoogleMapController controller = await _controller.future;
//     await controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
//     setState(() {});
//   }
// }

//mapKey  AIzaSyDZnXt5NZJnsntMked4qGtDaBO2lVxuDWM
