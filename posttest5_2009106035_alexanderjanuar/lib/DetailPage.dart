import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class DetailPage extends StatefulWidget {
  DetailPage({Key? key,required this.Detail}) : super(key: key);

  List Detail = [
    "", //Gambar
    "", //Difficulty
    "", //Waktu Yang Diperlukan 
    "", // Deskripsi
    "", //Take-Away Skill
    "", //Judul
  ];

  @override
  State<DetailPage> createState() => _DetailPageState();
}



class _DetailPageState extends State<DetailPage> {
  bool outline = true ;

  @override
  void dispose() {
    outline = outline;
    super.dispose();
  }

  SnackBar bookmark(){
    return SnackBar(
    behavior: SnackBarBehavior.floating,
    backgroundColor: Color(0xFFFFFFB72B),
    content: outline? Text('Bookmark Telah Dihapus!!')  : Text('Bookmark Telah Ditambahkan!!'),
    margin: EdgeInsets.all(20),
    elevation: 30,
    action: SnackBarAction(
      label: 'Dismiss',
      onPressed: () {
      },
    ),
  );
  }

  Widget mycontainer(String title, String subtitle) {
    return Padding(
      padding: EdgeInsets.only(left: 25, right: 25),
      child: Column(
        children: [
          SizedBox(height: 20),
          Container(
              height: 70,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 1),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 5),
                          Text(title,
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold)),
                          const SizedBox(height: 5),
                          Text(
                            subtitle,
                          )
                        ],
                      ),
                      Icon(Icons.keyboard_arrow_right_sharp)
                    ]),
              )),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Color(0xffffFDF3F3),
        body: ListView(
          children: [
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 45,
                  height: 45,
                  child: ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context)..removeCurrentSnackBar();
                      Navigator.of(context).pop();
                    },
                    child: const Icon(Icons.arrow_back_ios_new_outlined,
                        color: Colors.black, size: 12),
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      primary: Colors.white, // <-- Button color
                      onPrimary: Colors.black, // <-- Splash color
                    ),
                  ),
                ),
                const Text(
                  "Detail Pelajaran",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: 45,
                  height: 45,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        outline = !outline;
                      }
                      );
                      ScaffoldMessenger.of(context)..removeCurrentSnackBar()..showSnackBar(bookmark());

                    },
                    child: Icon(
                        outline
                            ? Icons.bookmark_outline
                            : Icons.bookmark,
                        color: Colors.black,
                        size: 14),
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      primary: Colors.white, // <-- Button color
                      onPrimary: Colors.black, // <-- Splash color
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 28),
            Padding(
              padding:  EdgeInsets.only(left: 25.0, right: 25.0),
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 5,
                          offset: Offset(0, 1), // changes position of shadow
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: ImageFiltered(
                        imageFilter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
                        child: Image.asset(widget.Detail[0]),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 15,
                    bottom: 15,
                    child: Container(
                      width: 200,
                      height: 40,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [Color(0xFFFFF2994A), Color(0xFFFFF2C94C)]),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 20),
                          Text(
                            widget.Detail[1],
                            style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 12 + 1,
                            ),
                          ),
                          const SizedBox(width: 10),
                          const Icon(
                            Icons.brightness_1_rounded,
                            size: 10,
                            color: Colors.grey,
                          ),
                          const SizedBox(width: 10),
                          Text(
                            widget.Detail[2],
                            style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 12 + 1,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 50),
            Padding(
              padding: EdgeInsets.only(left: 25),
              child: Text(
                widget.Detail[5],
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 25, right: 25),
              child: TabBar(
                tabs: [
                  Tab(
                    text: "Overview",
                  ),
                  Tab(
                    text: "Syllabus",
                  )
                ],
                labelColor: Colors.black,
                indicatorColor: Color(0xFFFFFFB72B),
                unselectedLabelColor: Colors.grey,
              ),
            ),
            SizedBox(
              height: 500,
              child: TabBarView(children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 20),
                        const Text(
                          "Deskripsi",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Text(
                            widget.Detail[3]),
                        const SizedBox(height: 30),
                        const Text(
                          "Take - Away Skill",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Text(
                            widget.Detail[4])
                      ]),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5, right: 5),
                  child: Column(
                    children: [
                      mycontainer(
                          "Control Flow", "2 Pelajaran, 1 Kuis, 2 Projek"),
                      mycontainer("Lists", "2 Pelajaran, 2 Kuis,2 Projek"),
                      mycontainer("Function", "1 Pelajaran, 1 Kuis, 1 Projek"),
                      mycontainer("String", "2 Pelajaran, 2 Kuis, 1 Projek"),
                      mycontainer("Files", "1 Pelajaran, 1 Kuis, 1 Projek"),
                    ],
                  ),
                )
              ]),
            )
          ],
        ),
      ),
    );
  }
}
