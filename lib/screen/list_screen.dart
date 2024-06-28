import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../const_widget.dart/const.dart';
import '../const_widget.dart/models.dart';
import '../widget/furniture_list_view.dart';
import 'detail_screen.dart';

class OfficeFurnitureListScreen extends StatelessWidget {
  const OfficeFurnitureListScreen({super.key});

  Widget _searchBar() {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Search',
        prefixIcon: const Icon(Icons.search, color: Colors.blue),
        suffixIcon: const Icon(Icons.menu, color: Colors.blue),
        contentPadding: const EdgeInsets.all(7),
        border: textFieldStyle,
        focusedBorder: textFieldStyle,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Future<Widget?> navigate(Furniture furniture) {
      return Navigator.push(
        context,
        PageRouteBuilder(
          transitionDuration: const Duration(seconds: 1),
          pageBuilder: (_, __, ___) =>
              OfficeFurnitureDetailScreen(furniture: furniture),
        ),
      );
    }

    return Scaffold(
        // backgroundColor: Colors.transparent,
        body: Container(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      color: Colors.blue,
      child: Column(
        children: [
          Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: Colors.white),
              height: 47,
              child: _searchBar()),

          const SizedBox(
            height: 10,
          ),
          Container(
            child: const Text(
              'Categories',
              style: TextStyle(color: Colors.black),
            ),
          ),
          // Container(
          //   alignment: Alignment.center,
          //   child: const Text(
          //     'Categories:',
          //     style: TextStyle(fontWeight: FontWeight.bold),
          //   ),
          // ),
          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.symmetric(horizontal: 5),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.blue),
            height: 60,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  height: 35,
                  child: const Text('airpods'),
                ),
                Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  height: 35,
                  child: const Text('casques'),
                ),
                Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  height: 35,
                  child: const Text('chargeures'),
                ),
                Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  height: 35,
                  child: const Text('cables'),
                ),
                Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  height: 35,
                  child: const Text('casques'),
                ),
                Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  height: 35,
                  child: const Text('souris'),
                ),
                Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  height: 35,
                  child: const Text('claviers'),
                ),
                Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  height: 35,
                  child: const Text('swatchs'),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(
                  left: 10, right: 10, bottom: 4, top: 10),
              decoration: BoxDecoration(
                  color: Colors.grey[50],
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15))),
              child: ListView(children: [
                FurnitureListView(
                  furnitureList: AppData.furnitureList,
                  onTap: navigate,
                ),
                const Text("Popular", style: h2Style),
                FurnitureListView(
                  furnitureList: AppData.furnitureList,
                  isHorizontal: false,
                  onTap: navigate,
                ),
              ]),
            ),
          ),
        ],
      ),
    ));
  }
}
