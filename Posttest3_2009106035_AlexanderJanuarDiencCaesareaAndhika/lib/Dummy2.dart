import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: MainPage(), theme: ThemeData(fontFamily: 'Poppins'));
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var tinggi = MediaQuery.of(context).size.height;
    var lebar = MediaQuery.of(context).size.width;

    List<String> nama = ["Python", "JavaScript", "Golang"];
    List<String> gambar = [
      "asset/Python2.png",
      "asset/JS.png",
      "asset/Golang.png"
    ];
    List<Color> colors = [
      Color(0xFFFF3674A5),
      Color(0xFFFFFED346),
      Color.fromARGB(255, 42, 185, 207)
    ];

    return Scaffold(
      backgroundColor: Color(0xffffFDF3F3),
      appBar: AppBar(
          backgroundColor: Color(0xFFFFFED346),
          centerTitle: true,
          title: const Text("Alexander Januar\n\t\t  2009106035",
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              )),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(60),
                  bottomLeft: Radius.circular(60)))),
      body: Container(
          child: ListView(children: <Widget>[
        Header(
          judul: "Courses",
          warna: Colors.white,
          warnatext: Colors.black,
        ),
        SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: [
              for (int i = 0; i < 3; i++)
                MainCourses(
                  name: nama[i],
                  gambar: gambar[i],
                  color: colors[i],
                )
            ])),
        Header(
            judul: "Python",
            warna: Color(0XFFFF48465C),
            warnatext: Colors.white),
        SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: [
              CoursesBox(
                judul: '1. Introduction',
              ),
              CoursesBox(
                judul: '2. Variable',
              ),
              CoursesBox(
                judul: '3. Numbers',
              )
            ])),
        MainCourses(
          name: "Knowledge Test",
          gambar: "asset/QuestionMark.png",
          color: Color.fromARGB(255, 42, 185, 207),
        ),
        Center(
            //Ini Button
            child: Container(
                margin: EdgeInsets.all(30),
                padding: EdgeInsets.only(top: 10),
                height: tinggi / 17,
                width: lebar / 1.5,
                decoration: BoxDecoration(
                    color: Color(0xFFFF28D719),
                    borderRadius: BorderRadius.circular(10)),
                child: const Text(
                  "Start Code",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                )))
      ])),
    );
  }
}

class MainCourses extends StatelessWidget {
  String name = " ";
  String gambar = " ";
  Color color = Color(0xffffFDF3F3);
  MainCourses(
      {Key? key, required this.name, required this.gambar, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        margin: EdgeInsets.fromLTRB(15, 30, 15, 30),
        elevation: 10,
        color: color,
        child: SizedBox(
            width: 180,
            height: 180,
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 40,
                    child: CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage(gambar),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ), //SizedBox
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ), //Textstyle
                  )
                ],
              ),
            )));
  }
}

class Header extends StatelessWidget {
  String judul = " ";
  Color warna = Colors.white;
  Color warnatext = Colors.white;

  Header(
      {Key? key,
      required this.judul,
      required this.warna,
      required this.warnatext})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var tinggi = MediaQuery.of(context).size.height;

    return Container(
      padding: const EdgeInsets.only(top: 10.0),
      margin: const EdgeInsets.fromLTRB(15, 30, 220, 0),
      height: tinggi / 17,
      decoration: BoxDecoration(
        color: warna,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        judul,
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 18, color: warnatext, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class CoursesBox extends StatelessWidget {
  CoursesBox({Key? key, required this.judul}) : super(key: key);
  String judul = " ";

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 220,
        height: 130,
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Container(
              padding: EdgeInsets.only(top: 15, left: 15),
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                      image: AssetImage('asset/Bubles.jpg'), fit: BoxFit.fill)),
              child: Text(judul,
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ))),
        ));
  }
}
