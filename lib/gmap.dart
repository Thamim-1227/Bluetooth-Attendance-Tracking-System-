import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hyperev/filter.dart';
import 'package:hyperev/settings.dart';
import 'account.dart';

void main() => runApp(GMap());

class GMap extends StatefulWidget {
  @override
  _GMapState createState() => _GMapState();
}

class _GMapState extends State<GMap> {
  late GoogleMapController myController;
  final LatLng _center = const LatLng(11.0168, 76.9558);
  MapType _currentMapType = MapType.normal;
  Set<Marker> markers = {};

  void _onMapTypeButtonPressed() {
    setState(() {
      _currentMapType = _currentMapType == MapType.normal
          ? MapType.satellite
          : MapType.normal;
    });
  }

  void _onMapCreated(GoogleMapController controller) {
    setState(() {
      myController = controller;
      _addCoimbatoreMarkers();
    });
  }

  List<Marker> _coimbatoreMarkers = [];

  void _addCoimbatoreMarkers() {
    // Add a marker for Coimbatore Charging Station 1
    _coimbatoreMarkers.add(
      Marker(
        markerId: MarkerId("1"),
        position: LatLng(11.0212, 76.9485),
        infoWindow: InfoWindow(title: "HyperEV 1"),
        icon: BitmapDescriptor.defaultMarker,
      ),
    );

    // Add 5 random markers in Coimbatore
    for (int i = 2; i <= 6; i++) {
      double randomLat =
          11.0 + Random().nextDouble() * 0.2; // Generate random latitude
      double randomLng =
          76.8 + Random().nextDouble() * 0.2; // Generate random longitude

      _coimbatoreMarkers.add(
        Marker(
          markerId: MarkerId(i.toString()),
          position: LatLng(randomLat, randomLng),
          infoWindow: InfoWindow(title: "HyperEV $i"),
          icon: BitmapDescriptor.defaultMarker,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: Colors.black), // Set icon color
          foregroundColor: Colors.black,
          color: Colors.white,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('HyperEV',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 22.0)),
          actions: [
            Padding(
              padding: const EdgeInsets.all(11.0),
              child: Container(
                decoration: BoxDecoration(
                  border:
                      Border.all(color: Colors.black), // Set the border color
                  borderRadius: BorderRadius.circular(
                      10.0), // Set border radius if needed
                ),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 10.0),
                      width: 200, // Adjust the width according to your design
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: '  Search Location ...',
                            hintStyle:
                                TextStyle(color: Colors.black, fontSize: 18.0),
                            border: InputBorder.none),
                      ),
                    ),
                    IconButton(
                      padding: EdgeInsets.all(2.0),
                      icon: Icon(Icons.search, color: Colors.black),
                      onPressed: () {
                        // Implement your search functionality here
                        print('Search button pressed');
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        body: Stack(
          children: <Widget>[
            GoogleMap(
              onMapCreated: _onMapCreated,
              initialCameraPosition: CameraPosition(
                target: _center,
                zoom: 10.0,
              ),
              mapType: _currentMapType,
              markers: Set<Marker>.of(_coimbatoreMarkers),
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Align(
                alignment: Alignment.topRight,
                child: FloatingActionButton(
                  onPressed: _onMapTypeButtonPressed,
                  materialTapTargetSize: MaterialTapTargetSize.padded,
                  backgroundColor: Colors.blue,
                  child: const Icon(Icons.map, size: 36.0),
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                label: 'Account',
                icon: Icon(Icons.account_circle_sharp),
              ),
              BottomNavigationBarItem(
                label: 'Settings',
                icon: Icon(Icons.settings),
              ),
              BottomNavigationBarItem(
                label: 'Filter',
                icon: const Icon(
                    const IconData(0xf068, fontFamily: 'MaterialIcons')),
              ),
            ],
            onTap: (int index) {
              // Use Navigator to navigate to different screens
              switch (index) {
                case 0:
                  // Handle 'Charge' button click
                  // You can add your logic here
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Account()),
                  );
                  break;
                case 1:
                  // Handle 'Account' button click
                  // You can add your logic here
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SettingsLayout()),
                  );
                  break;
                case 2:
                  // Handle 'Settings' button click
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Filter()),
                  );
                  break;
              }
            }),
      ),
    );
  }
}
