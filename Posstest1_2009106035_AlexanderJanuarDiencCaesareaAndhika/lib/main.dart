import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var tinggi = MediaQuery.of(context).size.height;
    var lebar = MediaQuery.of(context).size.width;

    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                  'asset/digital-art-nature-mountains-portrait-display-wallpaper-preview.jpg'),
              fit: BoxFit.fill)),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            title: RichText(
                text: const TextSpan(
                    text: "Posstest 1 - Alexander",
                    style: TextStyle(
                      fontFamily: 'Leto',
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    children: [
                  TextSpan(
                      text: "\nPemograman Mobile",
                      style: TextStyle(
                        fontFamily: 'Leto',
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                      ))
                ])),
            backgroundColor: Colors.transparent,
          ),
          body: Column(children: <Widget>[
            Container(
                margin: const EdgeInsets.fromLTRB(15, 250, 15, 0),
                height: tinggi / 4,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                        text: "Alexander Januar",
                        style: TextStyle(
                          fontFamily: 'Leto',
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        children: [
                          TextSpan(
                              text: "\nDienc Caesarea Andhika",
                              style: TextStyle(
                                fontFamily: 'Leto',
                                decoration: TextDecoration.underline,
                                fontSize: 23,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey,
                              ))
                        ]))),
            Container(
                margin: EdgeInsets.fromLTRB(15, 15, 15, 0),
                width: lebar / 3,
                height: tinggi / 12,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(10),
                    gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: <Color>[
                          Color(0xFFFFF9A00),
                          Color(0xFFFFF165D),
                        ])),
                child: RichText(
                  text: const TextSpan(
                    children: [
                      WidgetSpan(
                          child:
                              Icon(Icons.account_circle, color: Colors.white)),
                      TextSpan(
                          text: " About ",
                          style: TextStyle(
                            fontFamily: 'Leto',
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                          )),
                    ],
                  ),
                )),
            Row(
              children: [
                Container(
                    width: lebar / 2.5,
                    height: tinggi / 8,
                    margin: EdgeInsets.fromLTRB(15, 15, 15, 0),
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(10),
                        gradient: const LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: <Color>[
                              Color(0xFFFFF9A00),
                              Color(0xFFFFF165D),
                            ])),
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: const TextSpan(
                        children: [
                          WidgetSpan(
                              child: Icon(Icons.assignment_ind,
                                  size: 23, color: Colors.white)),
                          TextSpan(
                              text: " \nNIM ",
                              style: TextStyle(
                                fontFamily: 'Leto',
                                fontSize: 23,
                                fontWeight: FontWeight.w600,
                              )),
                          TextSpan(
                              text: "\n2009106035 ",
                              style: TextStyle(
                                  fontFamily: 'Leto',
                                  fontSize: 18,
                                  color: Colors.grey))
                        ],
                      ),
                    )),
                Container(
                    margin: EdgeInsets.fromLTRB(30, 15, 0, 0),
                    width: lebar / 2.5,
                    height: tinggi / 8,
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(10),
                        gradient: const LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: <Color>[
                              Color(0xFFFFF9A00),
                              Color(0xFFFFF165D),
                            ])),
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: const TextSpan(
                        children: [
                          WidgetSpan(
                              child: Icon(Icons.school,
                                  size: 23, color: Colors.white)),
                          TextSpan(
                              text: " \nKelas ",
                              style: TextStyle(
                                fontFamily: 'Leto',
                                fontSize: 23,
                                fontWeight: FontWeight.bold,
                              )),
                          TextSpan(
                              text: "\nIF A 2020 ",
                              style: TextStyle(
                                  fontFamily: 'Leto',
                                  fontSize: 18,
                                  color: Colors.grey))
                        ],
                      ),
                    )),
              ],
            )
          ])),
    );
  }
}
