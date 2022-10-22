// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:smart_shopping/model/data.dart';

class ElectronicsPage extends StatefulWidget {
  const ElectronicsPage({super.key});

  @override
  State<ElectronicsPage> createState() => _ElectronicsPageState();
}

class _ElectronicsPageState extends State<ElectronicsPage> {
  final product_list = Product.electronicList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // elevation: 0,
          backgroundColor: Colors.white,
          leading: Icon(
            Icons.electric_bolt,
            color: Colors.black,
          ),
          title: Text(
            'Electronics',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        body: Column(
          children: [
            // Expanded(
            //   flex: 1,
            //   child: Container(
            //     color: Colors.white,
            //   ),
            // ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.10,
            ),
            Expanded(
              flex: 3,
              child: Container(
                child: PageView.builder(
                    itemCount: product_list.length,
                    itemBuilder: ((context, index) {
                      var product = product_list[index];
                      return Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(),
                            child: Image.asset(
                              product.image,
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
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.35,
            ),
            // Expanded(
            //   flex: 1,
            //   child: Container(
            //     color: Colors.white,
            //   ),
            // ),
            // Expanded(
            //   flex: 1,
            //   child: Container(
            //     color: Colors.white,
            //   ),
            // ),
            // Expanded(
            //   flex: 1,
            //   child: Container(
            //     color: Colors.white,
            //   ),
            // ),
          ],
        ));
  }
}


//  PageView.builder(
//           itemCount: product_list.length,
//           itemBuilder: ((context, index) {
//             var product = product_list[index];
//             return Stack(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(right: 10, left: 10),
//                   child: Image.asset(
//                     product.image,
//                     height: double.infinity,
//                     width: double.infinity,
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//               ],
//             );
//           })),