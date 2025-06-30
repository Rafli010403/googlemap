import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MapPage extends StatelessWidget {
  final LatLng center = LatLng(-6.200000, 106.816666); // Jakarta

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Peta (OpenStreetMap)")),
      body: FlutterMap(
        options: MapOptions(
          center: center,
          zoom: 13.0,
        ),
        children: [
          TileLayer(
            urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
            subdomains: ['a', 'b', 'c'],
            userAgentPackageName: 'com.example.as_projects',
          ),
          MarkerLayer(
            markers: [
              Marker(
                point: center,
                width: 80,
                height: 80,
                child: Icon(Icons.location_pin, color: Colors.grey, size: 40),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
