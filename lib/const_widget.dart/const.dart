import 'package:flutter/material.dart';

import 'models.dart';
// import 'dart:ui';

import '../widget/fade_in_animation.dart';

class AppAsset {
  const AppAsset._();

  static const comharStandingDesk1 = "assets/images/comhar_standing_desk_1.jpg";
  static const comharStandingDesk2 = "assets/images/comhar_standing_desk_2.jpg";
  static const comharStandingDesk3 = "assets/images/comhar_standing_desk_3.jpg";
  static const comharStandingDesk4 = "assets/images/comhar_standing_desk_4.jpg";
  static const comharStandingDesk5 = "assets/images/comhar_standing_desk_5.jpg";
  static const comharStandingDesk6 = "assets/images/comhar_standing_desk_6.jpg";
  static const comharStandingDesk7 = "assets/images/comhar_standing_desk_7.jpg";

  static const ergonomicGamingDesk1 =
      "assets/images/ergonomic_gaming_desk_1.jpg";
  static const ergonomicGamingDesk2 =
      "assets/images/ergonomic_gaming_desk_2.jpg";
  static const ergonomicGamingDesk3 =
      "assets/images/ergonomic_gaming_desk_3.jpg";
  static const ergonomicGamingDesk4 =
      "assets/images/ergonomic_gaming_desk_4.jpg";
  static const ergonomicGamingDesk5 =
      "assets/images/ergonomic_gaming_desk_5.jpg";

  static const kanaBambooDesk1 = "assets/images/kana_bamboo_desk_1.jpg";
  static const kanaBambooDesk2 = "assets/images/kana_bamboo_desk_2.jpg";
  static const kanaBambooDesk3 = "assets/images/kana_bamboo_desk_3.jpg";
  static const kanaBambooDesk4 = "assets/images/kana_bamboo_desk_4.jpg";
  static const kanaBambooDesk5 = "assets/images/kana_bamboo_desk_5.jpg";
  static const kanaBambooDesk6 = "assets/images/kana_bamboo_desk_6.jpg";

  static const soutienOfficeChair1 = "assets/images/soutien_office_chair_1.jpg";
  static const soutienOfficeChair2 = "assets/images/soutien_office_chair_2.jpg";
  static const soutienOfficeChair3 = "assets/images/soutien_office_chair_3.jpg";
  static const soutienOfficeChair4 = "assets/images/soutien_office_chair_4.jpg";
  static const soutienOfficeChair5 = "assets/images/soutien_office_chair_5.jpg";
  static const soutienOfficeChair6 = "assets/images/soutien_office_chair_6.jpg";

  static const theodoreStandingDesk1 =
      "assets/images/theodore_standing_desk_1.jpg";
  static const theodoreStandingDesk2 =
      "assets/images/theodore_standing_desk_2.jpg";
  static const theodoreStandingDesk3 =
      "assets/images/theodore_standing_desk_3.jpg";
  static const theodoreStandingDesk4 =
      "assets/images/theodore_standing_desk_4.jpg";
  static const theodoreStandingDesk5 =
      "assets/images/theodore_standing_desk_5.jpg";

  static const profilePic = "assets/images/profile_pic.png";
  static const githubPic = "assets/images/github.png";

  static const emptyCart = "assets/images/empty_cart.png";
  static const emptyFavorite = "assets/images/empty_favorite.png";
}

class AppColor {
  const AppColor._();

  static const lightOrange = Color(0xFFFAA33C);
  static const lightBlack = Color(0xFF101725);
}

const h1Style = TextStyle(
    fontSize: 60,
    color: Colors.black,
    fontFamily: "Poppins",
    height: 1.4,
    fontWeight: FontWeight.w900);

const h2Style = TextStyle(
    fontSize: 22,
    color: Colors.black,
    fontFamily: "Poppins",
    fontWeight: FontWeight.w600);

const h3Style = TextStyle(
    fontFamily: "Poppins",
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: Colors.black);

const h4Style = TextStyle(
    fontFamily: "Poppins",
    fontSize: 15,
    fontWeight: FontWeight.bold,
    color: Colors.black);

const h5Style = TextStyle(
    fontFamily: "Poppins",
    fontSize: 20,
    fontWeight: FontWeight.w300,
    color: Colors.black);

const bodyStyle1 = TextStyle(
    fontFamily: "Poppins",
    fontSize: 18,
    fontWeight: FontWeight.w100,
    color: Colors.black);

final textFieldStyle = OutlineInputBorder(
  borderRadius: BorderRadius.circular(15),
  borderSide: const BorderSide(color: Colors.grey, width: 1.0),
);

class AppTheme {
  const AppTheme._();

  static ThemeData lightTheme = ThemeData(
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColor.lightBlack,
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    ),
  );
}

extension StringExtension on String {
  String get addOverFlow {
    if (length < 15) {
      return this;
    } else {
      return "${substring(0, 15)}...";
    }
  }
}

extension IterableExtension<T> on Iterable<T> {
  Iterable<T> distinctBy(Object Function(T e) getCompareValue) {
    var result = <T>[];
    forEach(
      (element) {
        if (!result
            .any((x) => getCompareValue(x) == getCompareValue(element))) {
          result.add(element);
        }
      },
    );
    return result;
  }
}

extension WidgetExtension on Widget {
  Widget fadeAnimation(double delay) {
    return FadeInAnimation(delay: delay, child: this);
  }
}

class AppData {
  const AppData._();

  static const dummyText =
      """Lorem Ipsum is simply dummy text of the printing and typesetting
       industry. Lorem Ipsum has been the industry's standard dummy text ever
        since the 1500s, when an unknown printer took a galley of type and
         scrambled it to make a type specimen book. It has survived not only 
         five centuries, but also the leap into electronic typesetting,
          remaining essentially unchanged. It was popularised in the 1960s with
           the release of Letraset sheets containing Lorem Ipsum passages,
            and more recently with desktop publishing software like Aldus
             PageMaker including versions of Lorem Ipsum.""";

  static List<Furniture> furnitureList = [
    Furniture(
      quantity: 1,
      isFavorite: false,
      title: 'Comhar All-in-One Standing Desk Glass',
      description: dummyText,
      price: 469.99,
      score: 3.5,
      images: [
        AppAsset.comharStandingDesk1,
        AppAsset.comharStandingDesk2,
        AppAsset.comharStandingDesk3,
        AppAsset.comharStandingDesk4,
        AppAsset.comharStandingDesk5,
        AppAsset.comharStandingDesk6,
        AppAsset.comharStandingDesk7,
      ],
      colors: <FurnitureColor>[
        FurnitureColor(color: const Color(0xFF616161), isSelected: true),
        FurnitureColor(color: const Color(0xFF424242)),
      ],
    ),
    Furniture(
      isFavorite: false,
      quantity: 1,
      title: 'Ergonomic Gaming Desk with Mouse Pad',
      description: dummyText,
      price: 299.99,
      score: 4.5,
      images: [
        AppAsset.ergonomicGamingDesk1,
        AppAsset.ergonomicGamingDesk2,
        AppAsset.ergonomicGamingDesk3,
        AppAsset.ergonomicGamingDesk4,
        AppAsset.ergonomicGamingDesk5,
      ],
      colors: <FurnitureColor>[
        FurnitureColor(color: const Color(0xFF5d4037), isSelected: true),
        FurnitureColor(color: const Color(0xFF424242)),
      ],
    ),
    Furniture(
      quantity: 1,
      isFavorite: false,
      title: 'Kana Pro Bamboo Standing Desk',
      description: dummyText,
      price: 659.99,
      score: 3.0,
      images: [
        AppAsset.kanaBambooDesk1,
        AppAsset.kanaBambooDesk2,
        AppAsset.kanaBambooDesk3,
        AppAsset.kanaBambooDesk4,
        AppAsset.kanaBambooDesk5,
        AppAsset.kanaBambooDesk6,
      ],
      colors: <FurnitureColor>[
        FurnitureColor(color: const Color(0xFF616161), isSelected: true),
        FurnitureColor(color: const Color(0xFF212121)),
      ],
    ),
    Furniture(
      quantity: 1,
      isFavorite: false,
      title: 'Soutien Ergonomic Office Chair',
      description: dummyText,
      price: 349.99,
      score: 2.5,
      images: [
        AppAsset.soutienOfficeChair1,
        AppAsset.soutienOfficeChair2,
        AppAsset.soutienOfficeChair3,
        AppAsset.soutienOfficeChair4,
        AppAsset.soutienOfficeChair5,
        AppAsset.soutienOfficeChair6,
      ],
      colors: <FurnitureColor>[
        FurnitureColor(color: const Color(0xFF455a64), isSelected: true),
        FurnitureColor(color: const Color(0xFF263238)),
      ],
    ),
    Furniture(
      quantity: 1,
      isFavorite: false,
      title: 'Theodore Standing Desk',
      description: dummyText,
      price: 499.99,
      score: 2.8,
      images: [
        AppAsset.theodoreStandingDesk1,
        AppAsset.theodoreStandingDesk2,
        AppAsset.theodoreStandingDesk3,
        AppAsset.theodoreStandingDesk4,
        AppAsset.theodoreStandingDesk5,
      ],
      colors: <FurnitureColor>[
        FurnitureColor(color: const Color(0xFF5d4037), isSelected: true),
        FurnitureColor(color: const Color(0xFF455a64)),
      ],
    ),
  ];

  static List<BottomNavigationItem> bottomNavigationItems = [
    const BottomNavigationItem(Icon(Icons.home), 'Home'),
    const BottomNavigationItem(
        Icon(Icons.add_shopping_cart_rounded), 'Shopping cart'),
    const BottomNavigationItem(Icon(Icons.bookmark), 'Favorite'),
    const BottomNavigationItem(Icon(Icons.person), 'Profile')
  ];
}
