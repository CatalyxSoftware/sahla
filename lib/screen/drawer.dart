import 'package:flutter/material.dart';

import 'home.dart';

class Drawer12 extends StatefulWidget {
  const Drawer12({super.key});

  @override
  State<Drawer12> createState() => _Drawer12State();
}

//
class _Drawer12State extends State<Drawer12> {
  List moreArr = [
    {
      "index": "1",
      "name": "Home",
      "image": "assets/images/ahlin.png",
      "base": 0
    },
    {
      "index": "2",
      "name": "My Orders",
      "image": "assets/images/comhar_standing_desk_1.jpg",
      "base": 0
    },
    {
      "index": "3",
      "name": "Notifications",
      "image": "assets/images/comhar_standing_desk_1.jpg",
      "base": 15
    },
    {
      "index": "4",
      "name": "Airpods",
      "image": "assets/images/kitman.jpeg",
      "base": 0
    },
    {
      "index": "5",
      "name": "chargeurs",
      "image": "assets/images/comhar_standing_desk_1.jpg",
      "base": 0
    },
    {
      "index": "6",
      "name": "screens",
      "image": "assets/images/comhar_standing_desk_1.jpg",
      "base": 0
    },
  ];

  @override
  Widget build(BuildContext context) {
    // var height12 = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.9),
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  topLeft: Radius.circular(10))),
          child: SingleChildScrollView(
              child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 46,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "More",
                        style: TextStyle(
                            color: TColor.primaryText,
                            fontSize: 20,
                            fontWeight: FontWeight.w800),
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomeScreen()));
                        },
                        icon: Image.asset(
                          "assets/images/comhar_standing_desk_1.jpg",
                          width: 25,
                          height: 25,
                        ),
                      ),
                    ],
                  ),
                ),
                ListView.builder(
                    padding: EdgeInsets.zero,
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: moreArr.length,
                    itemBuilder: (context, index) {
                      var mObj = moreArr[index] as Map? ?? {};
                      var countBase = mObj["base"] as int? ?? 0;
                      return InkWell(
                        onTap: () {
                          switch (mObj["index"].toString()) {
                            case "1":
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const HomeScreen()));

                              break;

                            case "2":
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const HomeScreen()));
                            case "3":
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const HomeScreen()));
                            case "4":
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const HomeScreen()));
                            case "5":
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const HomeScreen()));

                            default:
                          }
                        },
                        child: Container(
                          margin: const EdgeInsets.symmetric(
                              vertical: 8, horizontal: 10),
                          child: Stack(
                            alignment: Alignment.centerRight,
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 12, horizontal: 12),
                                decoration: BoxDecoration(
                                    color: TColor.textfield,
                                    borderRadius: BorderRadius.circular(5)),
                                margin: const EdgeInsets.only(right: 15),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 50,
                                      height: 50,
                                      padding: const EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                          color: TColor.placeholder,
                                          borderRadius:
                                              BorderRadius.circular(25)),
                                      alignment: Alignment.center,
                                      child: Image.asset(
                                          mObj["image"].toString(),
                                          width: 25,
                                          height: 25,
                                          fit: BoxFit.contain),
                                    ),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    Expanded(
                                      child: Text(
                                        mObj["name"].toString(),
                                        style: TextStyle(
                                            color: TColor.primaryText,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    if (countBase > 0)
                                      Container(
                                        padding: const EdgeInsets.all(4),
                                        decoration: BoxDecoration(
                                            color: Colors.red,
                                            borderRadius:
                                                BorderRadius.circular(12.5)),
                                        alignment: Alignment.center,
                                        child: Text(
                                          countBase.toString(),
                                          style: TextStyle(
                                              color: TColor.white,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                  ],
                                ),
                              ),
                              // Container(
                              //   padding: const EdgeInsets.all(8),
                              //   decoration: BoxDecoration(
                              //       color: TColor.textfield,
                              //       borderRadius: BorderRadius.circular(15)),
                              //   child: Image.asset(
                              //       "assets/images/comhar_standing_desk_1.jpg",
                              //       width: 10,
                              //       height: 10,
                              //       color: TColor.primaryText),
                              // ),
                            ],
                          ),
                        ),
                      );
                    })
              ],
            ),
          )),
        ));
  }
}

class TColor {
  static Color get primary => const Color(0xff48FCFE);
  static Color get primaryText => const Color.fromARGB(255, 0, 0, 0);
  static Color get secondaryText => const Color(0xff7C7D7E);
  static Color get textfield => const Color(0xffF2F2F2);
  static Color get placeholder => const Color.fromARGB(255, 212, 212, 212);
  static Color get white => const Color(0xffffffff);
}
