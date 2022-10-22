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
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.green,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.yellow,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: PageView.builder(
                  itemCount: product_list3.length,
                  itemBuilder: ((context, index) {
                    var product2 = product_list3[index];
                    return Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10, left: 10),
                          child: Image.asset(
                            product2.image,
                            height: double.infinity,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    );
                  })),
            ),
          ),
        ],
      ),
    );
  }
}
