import 'dart:ui';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'DetailPage.dart';
import 'ProfilePage.dart';
import 'FormPage.dart';

class HomePAGE extends StatefulWidget {
  const HomePAGE({Key? key}) : super(key: key);

  @override
  State<HomePAGE> createState() => _ProfilePageState();
}

final now = DateTime.now();
String formatter = DateFormat.yMMMMd('en_US').format(now);
TextEditingController SearchController = TextEditingController();

final List<BottomNavigationBarItem> bottomItem = [
  const BottomNavigationBarItem(
    icon: Icon(Icons.home),
    label: "Home",
  ),
  const BottomNavigationBarItem(
    icon: Icon(Icons.search),
    label: "Search",
  ),
  const BottomNavigationBarItem(
    icon: Icon(Icons.person),
    label: "Profile",
  ),
];

int _indexBottom = 0;


List page = [
  HomePAGE(),
  PageForm(),
  ProfilePageSetting(name:"Home"),
];

class _ProfilePageState extends State<HomePAGE> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(130.0), // here the desired height
          child: AppBar(
              elevation: 0,
              flexibleSpace: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 30),
                    Container(
                        margin: EdgeInsets.only(left: 15),
                        child: Text(
                          formatter.toString(),
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFFFFFB72B),
                              fontSize: 26.0),
                        )),
                    Container(
                      margin: EdgeInsets.only(left: 15),
                      child: const Text("Hello, Alex!!",
                          style: TextStyle(color: Colors.grey, fontSize: 20)),
                    ),
                  ]),
              backgroundColor: Colors.transparent,
              actions: <Widget>[
                InkWell(
                  onTap: () {
                    setState(() {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context) {
                        return ProfilePageSetting(name:"Home");
                      }));
                    });
                  },
                  child: Container(
                    height: 300,
                    width: 60,
                    margin: EdgeInsets.only(right: 10, top: 10),
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: AssetImage('asset/Python.png')),
                      border: Border.all(color: Colors.transparent),
                      shape: BoxShape.circle,
                    ),
                  ),
                )
              ]),
        ),
        body: ListView(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: TextField(
                controller: SearchController,
                decoration: InputDecoration(
                    suffixIcon:
                        const Icon(Icons.search, color: Color(0xFFFFFFB72B)),
                    contentPadding: EdgeInsets.all(15),
                    filled: true,
                    fillColor: Colors.white70,
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                        borderRadius: BorderRadius.circular(10.0)),
                    hintText: 'Cari Disini',
                    hintStyle: TextStyle(color: Colors.grey)),
              ),
            ),
            const SizedBox(height: 40),
            Container(
                margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: const Text(
                  "Most Popular",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                )),
            const SizedBox(height: 30),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Wrap(
                    spacing: 40,
                    children: [
                      InkWell(
                          onTap: () {
                            setState(() {
                              Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (BuildContext context) {
                                return DetailPage(detailPage: "Machine Learning",);
                              }));
                            });
                          },
                          child: MostPopular(
                            gambar: 'asset/PythonBG.jpg',
                            name: 'Machine \nLearning',
                          )),
                      InkWell(
                        onTap: () {
                            setState(() {
                              Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (BuildContext context) {
                                return DetailPage(detailPage: "WebDev",);
                              }));
                            });
                          },
                        child: MostPopular(
                          gambar: 'asset/WebDev.jpeg',
                          name: "Web\nDevelopment",
                        ),
                      ),
                      InkWell(
                        onTap: () {
                            setState(() {
                              Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (BuildContext context) {
                                return DetailPage(detailPage: "MobileDev",);
                              }));
                            });
                          },
                        child: MostPopular(
                          gambar: 'asset/MobileApp.jpg',
                          name: 'Mobile \nDevelopment',
                        ),
                      )
                    ],
                  ),
                )),
            const SizedBox(height: 40),
            Container(
                margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: const Text(
                  "Daily Practice",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                )),
            const SizedBox(height: 30),
            Container(
                margin: const EdgeInsets.only(left: 15, right: 15),
                height: 150,
                decoration: BoxDecoration(
                    color: Color(0xFFFFFED346),
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, top: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 100,
                        child: const CircleAvatar(
                          radius: 28,
                          backgroundImage: AssetImage('asset/Python.png'),
                        ),
                      ),
                      const Text(
                        "Introduction to Python",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500, fontSize: 20),
                      )
                    ],
                  ),
                ))
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _indexBottom!=0?0:0,
          items: bottomItem,
          onTap: (int index) {
            setState(() {
              _indexBottom = index;
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
                return page[_indexBottom];
              }));
            });
          },
        ));
  }
}

class MostPopular extends StatelessWidget {
  String name = " ";
  String gambar = " ";
  MostPopular({Key? key, required this.name, required this.gambar})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
          child: Container(
              height: 150,
              width: 160,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(gambar), fit: BoxFit.fill),
                  color: Color(0xFFFFFFB72B),
                  border: Border.all(color: Colors.transparent),
                  borderRadius: BorderRadius.all(Radius.circular(20)))),
        ),
        Positioned(
          top: 100.0,
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 1.5, sigmaY: 1.5),
            child: Container(
              height: 150,
              width: 150,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 30),
          child: Container(
            child: Text(name,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white)),
          ),
        )
      ],
    );
  }
}
