import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';

class Hospital extends StatefulWidget {
  const Hospital({Key? key}) : super(key: key);

  @override
  State<Hospital> createState() => _HospitalState();
}

class _HospitalState extends State<Hospital> {
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
        title: const Text('Hospital',style: TextStyle(color: Colors.black),),
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
                        _changeLocation(9.023929198929357, 38.85565984095024,);
                      },
                      child: hotels('ICMC', Colors.blue,
                          AssetImage('asset/image/icmc.jpg'))),
                  GestureDetector(
                      onTap: () {
                        _changeLocation(9.011935922382465, 38.73813508460492,);
                      },
                      child: hotels('Balcha', Colors.greenAccent,
                          AssetImage('asset/image/bal.jpg'))),
                  GestureDetector(
                      onTap: () {
                        _changeLocation(9.047290112290481, 38.72756920640709,);
                      },
                      child: hotels('St Paulous', Colors.red,
                          AssetImage('asset/image/paul.jpg'))),
                  GestureDetector(
                      onTap: () {
                        _changeLocation(9.012936799244924, 38.754912669754006,);

                      },
                      child: hotels('Bethzatha General', Colors.blueAccent,
                          AssetImage('asset/image/zew.jpg'))),
                  GestureDetector(
                      onTap: () {
                        _changeLocation(9.01925304619184, 38.80986783843382,);
                      },
                      child: hotels('St Yared General', Colors.purpleAccent,
                          AssetImage('asset/image/styared.jpg'))),
                  GestureDetector(
                      onTap: () {
                        _changeLocation(9.018713267250737, 38.75639738614948);
                      },
                      child: hotels('Zewditu Memorial', Colors.pinkAccent,
                          AssetImage('asset/image/zew.jpg'))),
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
            '${name} Hospital',
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
