// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:smart_shopping/model/data.dart';

class FoodPage extends StatefulWidget {
  const FoodPage({super.key});

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  final product_list2 = Product.foodList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // elevation: 0,
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.food_bank,
          color: Colors.black,
        ),
        title: Text(
          'Food',
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
              child: PageView.builder(
                  itemCount: product_list2.length,
                  itemBuilder: ((context, index) {
                    var product2 = product_list2[index];
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
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.yellow,
            ),
          ),
        ],
      ),
    );
  }
}
