import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:travelzy/screen/location.dart';


import 'screen/home.dart';
// import 'screen/map.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/map',
      routes: {
        '/': (context) => const MyHomePage(title: 'demo') ,
        '/home': (context) => const Home() ,
        '/map': (context) => const SecondRoute()
      } ,

      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              constraints: const BoxConstraints.expand(),
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("asset/image/lion.jpg"),
                    fit: BoxFit.cover),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              colorFilter: ColorFilter.mode(
                                  Colors.black.withOpacity(0.2),
                                  BlendMode.dstATop),
                              image: const AssetImage('asset/image/logoo.png')),

                            shape: BoxShape.circle),
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(10, 35, 35, 35),
                        child: Text('travelezy',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white70,
                              fontSize: 25,
                            )),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                        decoration: const BoxDecoration(
                            color: Colors.black87,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        padding: const EdgeInsets.all(15),
                        width: 400,
                        height: 250,
                        child: Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(9.0),
                              child: Text(
                                'Explore the World Here ',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 27,
                                    color: Colors.white),
                              ),
                            ),
                            const Text(
                              'The best travel app in the world in 2022. \n Answer of Traveler to find their Journey. ',
                              style: TextStyle(
                                  height: 1.3,
                                  fontSize: 15,
                                  color: Colors.white70),
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(20,20,20,7),
                              child: TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, '/home');
                                  },
                                  child: const Text(
                                    'Get Started',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  )),
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(25))),
                              height: 50,
                              width: double.infinity,
                            ),
                            TextButton(
                              onPressed: () {},
                              child: const Text(
                                'Already have an account?',
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    fontSize: 14,
                                    color: Colors.white,
                                letterSpacing: 0.6 ),

                              ),
                            ),
                          ],
                        )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


