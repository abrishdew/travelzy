import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';

class SecondRoute extends StatefulWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  State<SecondRoute> createState() => _SecondRouteState();
}

class _SecondRouteState extends State<SecondRoute> {
  double lat = 9.0203;
  double lng = 38.7600;
  double zoom = 13.25;
  void _changeLocation(double a, double b, double zm) {
    setState(() {
      lat = a;
      lng = b;
      zoom = zm;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text('Hotels',style: TextStyle(color: Colors.black),),
      ),
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: sizedMap(),
          ),
          Positioned(
            left: MediaQuery.of(context).size.width * .03,
            bottom: MediaQuery.of(context).size.height * .02,
            child: Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  GestureDetector(
                      onTap: () {
                        _changeLocation(9.0304239, 38.7511453,10);
                      },
                      child: hotels('Eliana', Colors.blue,
                          AssetImage('asset/image/eliana.jpg'))),
                  GestureDetector(
                      onTap: () {
                        _changeLocation(9.016240, 38.76750,10);
                      },
                      child: hotels('Radisson Blu', Colors.greenAccent,
                          AssetImage('asset/image/radison.jpg'))),
                  GestureDetector(
                      onTap: () {
                        _changeLocation(9.0203, 38.7600,10);
                      },
                      child: hotels('Shereaton', Colors.red,
                          AssetImage('asset/image/shereaton.jpg'))),
                  GestureDetector(
                      onTap: () {
                        _changeLocation(9.01864549659, 38.7649155267,10);
                        print(zoom);
                      },
                      child: hotels('Hilton', Colors.blueAccent,
                          AssetImage('asset/image/hilton.jpg'))),
                  GestureDetector(
                      onTap: () {
                        _changeLocation(8.98796289575, 38.7898576211,10);
                      },
                      child: hotels('Skylight', Colors.purpleAccent,
                          AssetImage('asset/image/skylight.jpg'))),
                  GestureDetector(
                      onTap: () {
                        _changeLocation(38.787220, 38.757220,10);
                      },
                      child: hotels('Golden Tulip', Colors.pinkAccent,
                          AssetImage('asset/image/golden.jpg'))),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container hotels(String name, Color color, AssetImage img) {
    return Container(
      margin: EdgeInsets.all(5),
      color: Colors.white24,
      height: 200,
      child: Column(
        children: [
          Opacity(
            opacity: .8,
            child: Container(
              margin: EdgeInsets.all(10),
              width: 140,
              height: 150,
              child: Image(
                fit: BoxFit.fill,
                width: 140,
                height: 160,
                image: img,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(18))),
            ),
          ),
          Text(
            '${name} Hotel',
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }

  FlutterMap sizedMap() {
    return FlutterMap(
      options: MapOptions(
        center: LatLng(lat, lng),
        zoom: zoom,
        enableScrollWheel: true
      ),
      layers: [
        TileLayerOptions(
          maxZoom: 40,
          urlTemplate:
              "https://api.mapbox.com/styles/v1/kidus2316/cl3oveg43002t15mmldtk5pfz/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1Ijoia2lkdXMyMzE2IiwiYSI6ImNsM292ZG1yczBwcGEzZGwycHkwYm1tY2wifQ.LioBkkyiUiILrjPaXrxRFA",
          additionalOptions: {
            'access Token':
                'pk.eyJ1Ijoia2lkdXMyMzE2IiwiYSI6ImNsM292ZG1yczBwcGEzZGwycHkwYm1tY2wifQ.LioBkkyiUiILrjPaXrxRFA',
            'id': 'mapbox.mapbox-streets-v8'
          },
        ),
        MarkerLayerOptions(
          markers: [
            Marker(
              width: 16.0,
              height: 16.0,
              point: LatLng(lat, lng),
              builder: (ctx) => Container(
                child: Icon(
                  Icons.location_on,
                  color: Colors.blue[700],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
