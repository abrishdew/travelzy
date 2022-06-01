import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travelzy/main.dart';
import 'package:travelzy/screen/hospital.dart';
import 'package:travelzy/screen/location.dart';
import 'package:travelzy/screen/recreation.dart';
import 'package:travelzy/screen/spritual.dart';
import 'package:travelzy/screen/station.dart';

import 'food.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Container(decoration: BoxDecoration(color: Colors.grey[200])),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 20, 25, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const MyApp()),
                      );
                    }, icon: const Icon(Icons.add)),
                    Column(
                      children: [
                        const Text(
                          "Current location",
                          style: TextStyle(
                              letterSpacing: .7,
                              color: Colors.grey,
                              fontSize: 13),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: const [
                              Icon(
                                Icons.location_on,
                                size: 15,
                                color: Colors.blue,
                              ),
                              Text(
                                "Kebena, Addis Ababa",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                    letterSpacing: 0.6),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const CircleAvatar(
                      foregroundImage: AssetImage('asset/image/hab.jpg'),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 25, 0, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SecondRoute()),
                        );
                      },
                      child: Container(
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                        width: 190,
                        height: 60,
                        child: Row(children: [
                          Container(
                              decoration: const BoxDecoration(
                                color: Colors.black12,
                                borderRadius:
                                BorderRadius.all(Radius.circular(10)),
                              ),
                              child: const Image(
                                image: AssetImage('asset/image/hotel.png'),
                              )),
                          const SizedBox(
                            width: 20,
                          ),
                          const Text("Hotels",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  letterSpacing: 0.6)),
                        ]),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Food()),
                        );
                      },
                      child: Container(
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                        width: 190,
                        height: 60,
                        child: Row(children: [
                          Container(
                              decoration: const BoxDecoration(
                                color: Colors.black12,
                                borderRadius:
                                BorderRadius.all(Radius.circular(10)),
                              ),
                              child: const Image(
                                image: AssetImage('asset/image/food.png'),
                              )),
                          const SizedBox(
                            width: 20,
                          ),
                          const Text("Food",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  letterSpacing: 0.6)),
                        ]),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 5, 0, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Station()),
                        );
                      },
                      child: Container(
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                        width: 190,
                        height: 60,
                        child: Row(children: [
                          Container(
                              decoration: const BoxDecoration(
                                color: Colors.black12,
                                borderRadius:
                                BorderRadius.all(Radius.circular(10)),
                              ),
                              child: const Image(
                                fit: BoxFit.fill,
                                width: 40,
                                height: 60,
                                image: AssetImage('asset/image/station.png'),
                              )),
                          const SizedBox(
                            width: 20,
                          ),
                          const Text("Stations",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  letterSpacing: 0.6)),
                        ]),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Recreation()),
                        );
                      },
                      child: Container(
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                        width: 190,
                        height: 60,
                        child: Row(children: [
                          Container(
                              // width:0,
                              decoration: const BoxDecoration(
                                color: Colors.black12,
                                borderRadius:
                                BorderRadius.all(Radius.circular(10)),
                              ),
                              child: const Image(
                                width: 40,
                                height: 60,
                                image: AssetImage('asset/image/recreation.jpg'),
                              )),
                          const SizedBox(
                            width: 20,
                          ),
                          const Text("Recreation",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  letterSpacing: 0.6)),
                        ]),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 5, 0, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Spiritual()),
                        );
                      },
                      child: Container(
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                        width: 190,
                        height: 60,
                        child: Row(children: [
                          Container(
                              decoration: const BoxDecoration(
                                color: Colors.black12,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                              child: const Image(
                                image: AssetImage('asset/image/spiritual.png'),
                              )),
                          const SizedBox(
                            width: 20,
                          ),
                          const Text("Spiritual",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  letterSpacing: 0.6)),
                        ]),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Hospital()),
                        );
                      },
                      child: Container(
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                        width: 190,
                        height: 60,
                        child: Row(children: [
                          Container(
                              decoration: const BoxDecoration(
                                color: Colors.black12,
                                borderRadius:
                                BorderRadius.all(Radius.circular(10)),
                              ),
                              child: const Image(
                                image: AssetImage('asset/image/hospital.png'),
                              )),
                          const SizedBox(
                            width: 20,
                          ),
                          const Text("Hospital",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  letterSpacing: 0.6)),
                        ]),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(25, 40, 5, 27),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Popular in town',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        TextButton(onPressed: () {}, child: Text('View')),
                      ],
                    ),
                  ),
                  Container(
                    height: 268,
                    width: double.infinity,
                    margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: ListView(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                  color: Colors.white70,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(18))),

                              height: 255,
                              // width: 150,

                              padding: EdgeInsets.all(15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 140,
                                    height: 165,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: AssetImage(
                                            'asset/image/entoto.jpg'),
                                      ),
                                    ),
                                  ),
                                  const Text(
                                    'Entoto park',
                                    style: TextStyle(
                                        height: 1.4, letterSpacing: 1.02),
                                  ),
                                  Row(
                                    children:  [
                                      Icon(
                                        Icons.location_on,
                                        size: 15,
                                        color: Colors.grey,
                                      ),
                                      SizedBox(
                                        width: 3,
                                      ),
                                      Text(
                                        'Sululta',
                                        style: TextStyle(
                                            color: Colors.grey,
                                            height: 1.4,
                                            letterSpacing: 1.02),
                                      ),
                                      IconButton(onPressed: () {
                                        final snackBar = SnackBar(
                                          content: const Text('Added to favorites.'),
                                          action: SnackBarAction(
                                            label: 'Undo',
                                            onPressed: () {
                                              // Some code to undo the change.
                                            },
                                          ),
                                        );

                                        // Find the ScaffoldMessenger in the widget tree
                                        // and use it to show a SnackBar.
                                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                                      }, icon: const Icon(Icons.favorite, color: Colors.red,))
                                      ,
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                  color: Colors.white70,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(18))),

                              height: 255,
                              // width: 150,

                              padding: EdgeInsets.all(15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 140,
                                    height: 165,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: AssetImage(
                                            'asset/image/theatre.jpg'),
                                      ),
                                    ),
                                  ),
                                  const Text(
                                    'National Theatre',
                                    style: TextStyle(
                                        height: 1.4, letterSpacing: 1.02),
                                  ),
                                  Row(
                                    children:  [
                                      Icon(
                                        Icons.location_on,
                                        size: 15,
                                        color: Colors.grey,
                                      ),
                                      SizedBox(
                                        width: 3,
                                      ),
                                      Text(
                                        'Leghar',
                                        style: TextStyle(
                                            color: Colors.grey,
                                            height: 1.4,
                                            letterSpacing: 1.02),
                                      ),
                                      IconButton(onPressed: () {
                                        final snackBar = SnackBar(
                                          content: const Text('Added to favorites.'),
                                          action: SnackBarAction(
                                            label: 'Undo',
                                            onPressed: () {
                                              // Some code to undo the change.
                                            },
                                          ),
                                        );

                                        // Find the ScaffoldMessenger in the widget tree
                                        // and use it to show a SnackBar.
                                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                                      }, icon: const Icon(Icons.favorite)),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                  color: Colors.white70,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(18))),

                              height: 255,
                              // width: 150,

                              padding: EdgeInsets.all(15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 140,
                                    height: 165,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image:
                                            AssetImage('asset/image/unity.jpg'),
                                      ),
                                    ),
                                  ),
                                  const Text(
                                    'Unity Park',
                                    style: TextStyle(
                                        height: 1.4, letterSpacing: 1.02),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.location_on,
                                        size: 15,
                                        color: Colors.grey,
                                      ),
                                      SizedBox(
                                        width: 3,
                                      ),
                                      Text(
                                        '4 Kilo',
                                        style: TextStyle(
                                            color: Colors.grey,
                                            height: 1.4,
                                            letterSpacing: 1.02),
                                      ),
                                      IconButton(onPressed: () {
                                        final snackBar = SnackBar(
                                          content: const Text('Added to favorites.'),
                                          action: SnackBarAction(
                                            label: 'Undo',
                                            onPressed: () {
                                              // Some code to undo the change.
                                            },
                                          ),
                                        );

                                        // Find the ScaffoldMessenger in the widget tree
                                        // and use it to show a SnackBar.
                                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                                      }, icon: const Icon(Icons.favorite, color: Colors.red,))
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                  color: Colors.white70,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(18))),

                              height: 250,
                              // width: 150,

                              padding: EdgeInsets.all(12.5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 140,
                                    height: 165,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: AssetImage(
                                            'asset/image/selasie.jpg'),
                                      ),
                                    ),
                                  ),
                                  const Text(
                                    'Cathedral Church',
                                    style: TextStyle(
                                        height: 1.4, letterSpacing: 1.02),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.location_on,
                                        size: 15,
                                        color: Colors.grey,
                                      ),
                                      SizedBox(
                                        width: 3,
                                      ),
                                      Text(
                                        '4 Kilo',
                                        style: TextStyle(
                                            color: Colors.grey,
                                            height: 1.4,
                                            letterSpacing: 1.02),
                                      ),
                                      IconButton(onPressed: () {
                                        final snackBar = SnackBar(
                                          content: const Text('Added to favorites.'),
                                          action: SnackBarAction(
                                            label: 'Undo',
                                            onPressed: () {
                                              // Some code to undo the change.
                                            },
                                          ),
                                        );

                                        // Find the ScaffoldMessenger in the widget tree
                                        // and use it to show a SnackBar.
                                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                                      }, icon: const Icon(Icons.favorite))
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      )),
      bottomNavigationBar: Container(
          decoration: const BoxDecoration(
              color: Colors.black87,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              )),
          padding: const EdgeInsets.all(15),
          width: 400,
          height: 60,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Icon(
                    Icons.home,
                    color: Colors.grey,
                  ),
                  Icon(
                    Icons.explore,
                    color: Colors.grey,
                  ),
                  Icon(
                    Icons.favorite_outline,
                    color: Colors.grey,
                  ),
                  Icon(
                    Icons.settings,
                    color: Colors.grey,
                  ),
                ],
              )
            ],
          )),
    );
  }
}
