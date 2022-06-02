import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';

class Food extends StatefulWidget {
  const Food({Key? key}) : super(key: key);

  @override
  State<Food> createState() => _FoodState();
}

class _FoodState extends State<Food> {
  double lat = 9.050309031193668;
  double lng = 38.76218221170474;
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
        title: const Text('Restaurants',style: TextStyle(color: Colors.black),),
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
                        _changeLocation(9.038637, 38.762191,);
                      },
                      child: hotels('Lucy Bar and', Colors.blue,
                          AssetImage('asset/image/12.jpg'))),
                  GestureDetector(
                      onTap: () {
                        _changeLocation(8.981865800000005, 38.69821563069293,);
                      },
                      child: hotels('Sami Cafe and', Colors.greenAccent,
                          AssetImage('asset/image/sami.jpg'))),
                  GestureDetector(
                      onTap: () {
                        _changeLocation(9.021464050921418, 38.77421026087675,);
                      },
                      child: hotels('Dashen Traditional', Colors.red,
                          AssetImage('asset/image/dashen.jpg'))),
                  GestureDetector(
                      onTap: () {
                        _changeLocation(9.005830187698702, 38.79385586575565,);

                      },
                      child: hotels('Belvedere', Colors.blueAccent,
                          AssetImage('asset/image/belver.jpg'))),
                  GestureDetector(
                      onTap: () {
                        _changeLocation(9.00135954457875, 38.78118047614929,);
                      },
                      child: hotels('2000 Habesha', Colors.purpleAccent,
                          AssetImage('asset/image/2000.jpg'))),
                  GestureDetector(
                      onTap: () {
                        _changeLocation(8.991032135784913, 38.7936500786186);
                      },
                      child: hotels('Yod Abyssinia', Colors.pinkAccent,
                          AssetImage('asset/image/yod.jpg'))),
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
            '${name} Restaurant',
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
