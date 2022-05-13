import 'package:flutter/material.dart';
import 'HomePage.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandiPage();
}

class _LandiPage extends State<LandingPage> {
  int index = 0;
  List<Color> myColorsList = [
    Color(0xFFFFFFB72B),
    Color(0xFFFFFFE61B),
    Color(0xFFFFB5FE83),
  ];

  void ColorIndex() {
    setState(() {
      index++;
      index == 3 ? index = 0 : index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffffF7F7F7),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                ColorIndex();
              },
              child: Container(
                margin: const EdgeInsets.only(left: 30, bottom: 20),
                width: 60,
                height: 60,
                child: const Icon(
                  Icons.keyboard_arrow_right_sharp,
                  size: 20,
                ),
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 7,
                    offset: Offset(0, 2),
                  ),
                ], shape: BoxShape.circle, color: myColorsList[index]),
              ),
            ),
            Container(
                padding: const EdgeInsets.only(left: 30),
                child: const Text("Online Course",
                    style:
                        TextStyle(fontWeight: FontWeight.w400, fontSize: 19))),
            Container(
                padding: const EdgeInsets.only(left: 30),
                child: const Text(
                    "Bangun Karirmu Sebagai Developer Profesional",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 30))),
            Container(
                padding: const EdgeInsets.only(left: 30, top: 20),
                child: const Text("Mulai belajar terarah dengan learning path",
                    style: TextStyle(fontSize: 14, color: Colors.grey))),
            GestureDetector(
              child: Container(
                margin: const EdgeInsets.only(left: 30, top: 30),
                child: ElevatedButton(
                  child: Text('Belajar Sekarang'),
                  onPressed: () {
                    Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (BuildContext context) {
                                return HomePage();
                              }));
                  },
                  style: ElevatedButton.styleFrom(
                      primary: myColorsList[index],
                      textStyle:
                          TextStyle(fontSize: 19, fontWeight: FontWeight.w400)),
                ),
              ),
            )
          ],
        )
        
        );
  }
}
