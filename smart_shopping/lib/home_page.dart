// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:smart_shopping/screens/cloths.dart';
import 'package:smart_shopping/screens/electronics.dart';
import 'package:smart_shopping/screens/food.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'images/16.jpg',
                ),
                fit: BoxFit.cover),
          ),
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // SizedBox(
              //   height: MediaQuery.of(context).size.height * 0.35,
              // ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ElectronicsPage()));
                },
                child: Text(
                  'Electronics',
                  style: TextStyle(
                      fontFamily: 'MyFont',
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 31, 60, 65)),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => FoodPage()));
                },
                child: Text(
                  'Food',
                  style: TextStyle(
                      fontFamily: 'MyFont',
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 31, 60, 65)),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => ClothsPage()));
                },
                child: Text(
                  'Cloths',
                  style: TextStyle(
                      fontFamily: 'MyFont',
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 31, 60, 65)),
                ),
              ),
            ],
          ),
        )
      ],
    )
        // body: Center(
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: [
        //       // Image.asset(
        //       //   'images/bg.jpg',
        //       //   height: double.infinity,
        //       //   width: double.infinity,
        //       // ),
        //       // TextButton(
        //       //   onPressed: () {
        //       //     Navigator.of(context).push(
        //       //         MaterialPageRoute(builder: (context) => ElectronicsPage()));
        //       //   },
        //       //   child: Text(
        //       //     'Electronics',
        //       //     style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
        //       //   ),
        //       // ),
        //       // TextButton(
        //       //   onPressed: () {
        //       //     Navigator.of(context)
        //       //         .push(MaterialPageRoute(builder: (context) => FoodPage()));
        //       //   },
        //       //   child: Text(
        //       //     'Food',
        //       //     style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
        //       //   ),
        //       // ),
        //       // TextButton(
        //       //   onPressed: () {
        //       //     Navigator.of(context).push(
        //       //         MaterialPageRoute(builder: (context) => ClothsPage()));
        //       //   },
        //       //   child: Text(
        //       //     'Cloths',
        //       //     style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
        //       //   ),
        //       // ),
        //     ],
        //   ),
        // ),
        );
  }
}
