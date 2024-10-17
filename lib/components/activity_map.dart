import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:url_launcher/url_launcher.dart';

class MapCard extends StatelessWidget {
  const MapCard({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      options: MapOptions(
        initialCenter: LatLng(49.61443010609209, -1.5994695422704903), // Center the map over London
        initialZoom: 10,
      ),
      children: [
        TileLayer( // Display map tiles from any source
          urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png', // OSMF's Tile Server
          userAgentPackageName: 'com.example.app',
          // And many more recommended properties!
        ),
        RichAttributionWidget( // Include a stylish prebuilt attribution widget that meets all requirments
          attributions: [
            TextSourceAttribution(
              'OpenStreetMap contributors',
              onTap: () => launchUrl(Uri.parse('https://openstreetmap.org/copyright')), // (external)
            ),
            // Also add images...
          ],
        ),
      ],
    );
  }
}


/* import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class _MapCard extends State {
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(-33.86, 151.20);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller
  }
  const MapCard({Key? key}) : super(key: key); // Ajout du paramètre key

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300, // Hauteur de la carte
      child: WebView(
        initialUrl: 'https://www.google.com/maps/@-33.86,151.20,11z', // URL de la carte
        javascriptMode: JavascriptMode.unrestricted, // Mode JavaScript
      ),
    );
  }
} */