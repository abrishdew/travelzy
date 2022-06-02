import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';


class Recreation extends StatefulWidget {
  const Recreation({Key? key}) : super(key: key);

  @override
  State<Recreation> createState() => _RecreationState();
}

class _RecreationState extends State<Recreation> {
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
        title: const Text('Recreational Places',style: TextStyle(color: Colors.black),),
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
                        _changeLocation(9.042885246589975, 38.76180749498385,);
                      },
                      child: hotels('Lion', Colors.blue,
                          AssetImage('asset/image/anbes.jpg'))),
                  GestureDetector(
                      onTap: () {
                        _changeLocation(9.03646235767204, 38.76571746329884,);
                      },
                      child: hotels('AAU Art', Colors.greenAccent,
                          AssetImage('asset/image/aau.jpg'))),
                  GestureDetector(
                      onTap: () {
                        _changeLocation(9.018402306535222, 38.7633680668353,);
                      },
                      child: hotels('Entoto', Colors.red,
                          AssetImage('asset/image/entoto.jpg'))),
                  GestureDetector(
                      onTap: () {
                        _changeLocation(9.057382320735849, 38.73902740491424,);

                      },
                      child: hotels('Sheger', Colors.blueAccent,
                          AssetImage('asset/image/sheg.jpg'))),
                  GestureDetector(
                      onTap: () {
                        _changeLocation(9.022240772454344, 38.760003434661776,);
                      },
                      child: hotels('Friendship', Colors.purpleAccent,
                          AssetImage('asset/image/frie.jpg'))),
                  GestureDetector(
                      onTap: () {
                        _changeLocation(9.002968152822376, 38.7761164652669);
                      },
                      child: hotels('European Union', Colors.pinkAccent,
                          AssetImage('asset/image/EU.jpg'))),
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
            '${name} Park',
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
