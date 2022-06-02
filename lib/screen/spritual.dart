import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';

class Spiritual extends StatefulWidget {
  const Spiritual({Key? key}) : super(key: key);

  @override
  State<Spiritual> createState() => _SpritualState();
}

class _SpritualState extends State<Spiritual> {
  double lat = 9.0203;
  double lng = 38.7600;
  void _changeLocation(double a, double b) {
    setState(() {
      lat = a;
      lng = b;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text('Spiritual',style: TextStyle(color: Colors.black),),
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
                        _changeLocation(9.037298774978076, 38.75122100446584,);
                      },
                      child: hotels('St. George', Colors.blue,
                          AssetImage('asset/image/Stgeorge.jpg'))),
                  GestureDetector(
                      onTap: () {
                        _changeLocation(9.031067841059665, 38.76648549851402,);
                      },
                      child: hotels('Holy Trinity Catherdal', Colors.greenAccent,
                          AssetImage('asset/image/holytrinity.jpg'))),
                  GestureDetector(
                      onTap: () {
                        _changeLocation(9.035661122730904, 38.740368246987046,);
                      },
                      child: hotels('Kidus Raguel', Colors.red,
                          AssetImage('asset/image/raguel.jpg'))),
                  GestureDetector(
                      onTap: () {
                        _changeLocation(9.010730802745181, 38.736850499453006,);

                      },
                      child: hotels('Lideta le Mariam', Colors.blueAccent,
                          AssetImage('asset/image/lideta.jpg'))),
                  GestureDetector(
                      onTap: () {
                        _changeLocation(9.050536512809346, 38.76251672914123,);
                      },
                      child: hotels('Miskaye Hizunan Medhanealem', Colors.purpleAccent,
                          AssetImage('asset/image/miskaye.jpg'))),
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
            '${name} Bete Kristiaan',
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
          enableScrollWheel: true
      ),
      layers: [
        TileLayerOptions(
          maxZoom: 25,
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
