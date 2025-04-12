import 'package:abo_halab_app/app/resource/utils/custom_size.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../resource/app_colors/app_colors.dart';

class MapWidget extends StatefulWidget {
  @override
  _MapWidgetState createState() => _MapWidgetState();
}

class _MapWidgetState extends State<MapWidget> {
  late GoogleMapController mapController;
  final LatLng _center =
      const LatLng(23.8103, 90.4125); // Coordinates for Dhaka
  final Set<Marker> _markers = {}; // Set to hold markers

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 1,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            child: GoogleMap(
              initialCameraPosition: CameraPosition(
                target: _center,
                zoom: 14.0,
              ),
              onMapCreated: (GoogleMapController controller) {
                mapController = controller;
              },
              markers: _markers,
            ),
          ),
          heightBox5,
          Padding(
            padding: EdgeInsets.all(8),
            child: Row(
              children: [
                Icon(Icons.location_on, color: AppColors.mainColor),
                widthBox5,
                CustomText(
                  title: '58/34/71, Uttara, Dhaka',
                  fontSize: 16,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _markers.add(Marker(
      markerId: MarkerId("1"),
      position: _center,
      infoWindow: InfoWindow(
        title: "Uttara, Dhaka",
        snippet: "This is the location",
      ),
    ));
  }
}
