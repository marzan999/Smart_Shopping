// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:smart_shopping/model/data.dart';

class ClothsPage extends StatefulWidget {
  const ClothsPage({super.key});

  @override
  State<ClothsPage> createState() => _ClothsPageState();
}

class _ClothsPageState extends State<ClothsPage> {
  final product_list3 = Product.clothList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // elevation: 0,
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.people,
          color: Colors.black,
        ),
        title: Text(
          'Cloths',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.40,
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: PageView.builder(
                  itemCount: product_list3.length,
                  itemBuilder: ((context, index) {
                    var product3 = product_list3[index];
                    return Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 370,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Colors.teal,
                                borderRadius: BorderRadius.circular(25),
                                image: DecorationImage(
                                    image: AssetImage(
                                      product3.image,
                                    ),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                      ],
                    );
                  })),
            ),
          ),
          // SizedBox(
          //   height: MediaQuery.of(context).size.height * 0.10,
          // ),
        ],
      ),
    );
  }
}
