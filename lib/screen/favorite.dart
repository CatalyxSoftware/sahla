import 'package:flutter/material.dart';

import '../const_widget.dart/const.dart';
import '../widget/empty_widget.dart';
import '../widget/furniture_list_view.dart';
import 'home.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("Favorites", style: h2Style)),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              controller.favoriteFurnitureList.isNotEmpty
                  ? FurnitureListView(
                      isHorizontal: false,
                      furnitureList: controller.favoriteFurnitureList,
                    )
                  : const EmptyWidget(
                      type: EmptyWidgetType.favorite,
                      title: "Empty",
                    )
            ],
          ),
        ),
      ),
    );
  }
}
