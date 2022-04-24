import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  DetailPage({Key? key, required this.detailPage}) : super(key: key);
  String detailPage = " ";
  @override
  Widget build(BuildContext context) {
    return detailPage == "Machine Learning"
        ? const MachineLearningDetails()
        : (detailPage == "WebDev")
            ? WebDetails()
            : MobileDetails();
  }
}

class MachineLearningDetails extends StatelessWidget {
  const MachineLearningDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Learn Machine Learning",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          elevation: 2,
          backgroundColor: Color(0xFFFFFFB72B),
        ),
        body: ListView(
          children: [
            Container(
                height: 220,
                color: Color(0xFFFFFFB72B),
                padding: const EdgeInsets.only(left: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    SizedBox(height: 30),
                    Text("Learning Path",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Color.fromARGB(186, 53, 103, 197))),
                    Text("Learn Machine Learning",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.white)),
                    SizedBox(height: 10),
                    Text(
                        "Machine Learning adalah bidang ilmu data yang didedikasikan untuk memungkinkan komputer belajar dari data",
                        style: TextStyle(color: Colors.white))
                  ],
                )),
            SizedBox(height: 30),
            Container(
              padding: const EdgeInsets.only(left: 30),
              margin: const EdgeInsets.only(left: 15, right: 15),
              height: 170,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFFFFFFB72B)),
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    Row(
                      children: const [
                        Icon(Icons.stairs_sharp),
                        Text("\tLangkah 1"),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Text("\tBelajar Visualisasi Data",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 15),
                    Row(
                      children: const [
                        Icon(Icons.timelapse_outlined, color: Colors.green),
                        Text("\t16 Jam"),
                        SizedBox(width: 10),
                        Icon(Icons.star, color: Colors.yellow),
                        Text("\t4.86"),
                        SizedBox(width: 20),
                        Icon(Icons.bar_chart, color: Colors.blue),
                        Text("\tDasar"),
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: const [
                        Icon(Icons.book, color: Colors.grey),
                        Text("\t50 Modul"),
                      ],
                    ),
                  ]),
            ),
            SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.only(left: 30),
              margin: const EdgeInsets.only(left: 15, right: 15),
              height: 170,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFFFFFFB72B)),
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    Row(
                      children: const [
                        Icon(Icons.stairs_sharp),
                        Text("\tLangkah 2"),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Text("\tDasar Python",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 15),
                    Row(
                      children: const [
                        Icon(Icons.timelapse_outlined, color: Colors.green),
                        Text("\t20 Jam"),
                        SizedBox(width: 10),
                        Icon(Icons.star, color: Colors.yellow),
                        Text("\t4.74"),
                        SizedBox(width: 20),
                        Icon(Icons.bar_chart, color: Colors.blue),
                        Text("\tDasar"),
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: const [
                        Icon(Icons.book, color: Colors.grey),
                        Text("\t45 Modul"),
                      ],
                    ),
                  ]),
            ),
            SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.only(left: 30),
              margin: const EdgeInsets.only(left: 15, right: 15),
              height: 170,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFFFFFFB72B)),
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    Row(
                      children: const [
                        Icon(Icons.stairs_sharp),
                        Text("\tLangkah 3"),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Text("\tBelejar Machine Learning Untuk Pemula",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 15),
                    Row(
                      children: const [
                        Icon(Icons.timelapse_outlined, color: Colors.green),
                        Text("\t30 Jam"),
                        SizedBox(width: 10),
                        Icon(Icons.star, color: Colors.yellow),
                        Text("\t4.80"),
                        SizedBox(width: 20),
                        Icon(Icons.bar_chart, color: Colors.blue),
                        Text("\tPemula"),
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: const [
                        Icon(Icons.book, color: Colors.grey),
                        Text("\t56 Modul"),
                      ],
                    ),
                  ]),
            ),
            SizedBox(height: 30),
          ],
        ));
  }
}

class WebDetails extends StatelessWidget {
  const WebDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Learn Web Development",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          elevation: 2,
          backgroundColor: Color(0xFFFFB5FE83),
        ),
        body: ListView(
          children: [
            Container(
                height: 220,
                color: Color(0xFFFFB5FE83),
                padding: const EdgeInsets.only(left: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    SizedBox(height: 30),
                    Text("Learning Path",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Color.fromARGB(186, 53, 103, 197))),
                    Text("Learn Web Development",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.white)),
                    SizedBox(height: 10),
                    Text(
                        "Web Development adalah praktik mengembangkan situs web dan aplikasi web yang ada di internet.",
                        style: TextStyle(color: Colors.white))
                  ],
                )),
            SizedBox(height: 30),
            Container(
              padding: const EdgeInsets.only(left: 30),
              margin: const EdgeInsets.only(left: 15, right: 15),
              height: 170,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFFFFB5FE83)),
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    Row(
                      children: const [
                        Icon(Icons.stairs_sharp),
                        Text("\tLangkah 1"),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Text("\tBelajar Dasar Pemrograman Web",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 15),
                    Row(
                      children: const [
                        Icon(Icons.timelapse_outlined, color: Colors.green),
                        Text("\t55 Jam"),
                        SizedBox(width: 10),
                        Icon(Icons.star, color: Colors.yellow),
                        Text("\t4.86"),
                        SizedBox(width: 20),
                        Icon(Icons.bar_chart, color: Colors.blue),
                        Text("\tDasar - Pemula"),
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: const [
                        Icon(Icons.book, color: Colors.grey),
                        Text("\t143 Modul"),
                      ],
                    ),
                  ]),
            ),
            SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.only(left: 30),
              margin: const EdgeInsets.only(left: 15, right: 15),
              height: 190,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFFFFB5FE83)),
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    Row(
                      children: const [
                        Icon(Icons.stairs_sharp),
                        Text("\tLangkah 2"),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Text("\tBelajar Membuat Front-End Web Untuk Pemula",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 15),
                    Row(
                      children: const [
                        Icon(Icons.timelapse_outlined, color: Colors.green),
                        Text("\t46 Jam"),
                        SizedBox(width: 10),
                        Icon(Icons.star, color: Colors.yellow),
                        Text("\t4.83"),
                        SizedBox(width: 20),
                        Icon(Icons.bar_chart, color: Colors.blue),
                        Text("\tPemula"),
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: const [
                        Icon(Icons.book, color: Colors.grey),
                        Text("\t82 Modul"),
                      ],
                    ),
                  ]),
            ),
            SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.only(left: 30),
              margin: const EdgeInsets.only(left: 15, right: 15),
              height: 190,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFFFFB5FE83)),
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    Row(
                      children: const [
                        Icon(Icons.stairs_sharp),
                        Text("\tLangkah 3"),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Text("\tBelajar Fundamental Front-End Web Development",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 15),
                    Row(
                      children: const [
                        Icon(Icons.timelapse_outlined, color: Colors.green),
                        Text("\t90 Jam"),
                        SizedBox(width: 10),
                        Icon(Icons.star, color: Colors.yellow),
                        Text("\t4.88"),
                        SizedBox(width: 20),
                        Icon(Icons.bar_chart, color: Colors.blue),
                        Text("\tMenengah"),
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: const [
                        Icon(Icons.book, color: Colors.grey),
                        Text("\t137 Modul"),
                      ],
                    ),
                  ]),
            ),
            SizedBox(height: 30),
          ],
        ));
  }
}

class MobileDetails extends StatelessWidget {
  const MobileDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Learn Mobile Development",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          elevation: 2,
          backgroundColor: Color(0xFFFFFFE61B),
        ),
        body: ListView(
          children: [
            Container(
                height: 220,
                color: Color(0xFFFFFFE61B),
                padding: const EdgeInsets.only(left: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    SizedBox(height: 30),
                    Text("Learning Path",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Color.fromARGB(186, 53, 103, 197))),
                    Text("Learn Mobile Development",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.white)),
                    SizedBox(height: 10),
                    Text(
                        "Teknologi yang digunakan untuk membuat aplikasi mobile berkembang dan meningkat dengan cepat, jadi inilah saatnya untuk mulai mempelajari Pengembangan Mobile!.",
                        style: TextStyle(color: Colors.white))
                  ],
                )),
            SizedBox(height: 30),
            Container(
              padding: const EdgeInsets.only(left: 30),
              margin: const EdgeInsets.only(left: 15, right: 15),
              height: 170,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFFFFFFE61B)),
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    Row(
                      children: const [
                        Icon(Icons.stairs_sharp),
                        Text("\tLangkah 1"),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Text("\tMemulai Pemrograman Dengan Dart",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 15),
                    Row(
                      children: const [
                        Icon(Icons.timelapse_outlined, color: Colors.green),
                        Text("\t20 Jam"),
                        SizedBox(width: 10),
                        Icon(Icons.star, color: Colors.yellow),
                        Text("\t4.82"),
                        SizedBox(width: 20),
                        Icon(Icons.bar_chart, color: Colors.blue),
                        Text("\tDasar"),
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: const [
                        Icon(Icons.book, color: Colors.grey),
                        Text("\t81 Modul"),
                      ],
                    ),
                  ]),
            ),
            SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.only(left: 30),
              margin: const EdgeInsets.only(left: 15, right: 15),
              height: 190,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFFFFFFE61B)),
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    Row(
                      children: const [
                        Icon(Icons.stairs_sharp),
                        Text("\tLangkah 2"),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Text("\tBelajar Aplikasi Flutter Untuk Pemula",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 15),
                    Row(
                      children: const [
                        Icon(Icons.timelapse_outlined, color: Colors.green),
                        Text("\t40 Jam"),
                        SizedBox(width: 10),
                        Icon(Icons.star, color: Colors.yellow),
                        Text("\t4.86"),
                        SizedBox(width: 20),
                        Icon(Icons.bar_chart, color: Colors.blue),
                        Text("\tPemula"),
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: const [
                        Icon(Icons.book, color: Colors.grey),
                        Text("\t51 Modul"),
                      ],
                    ),
                  ]),
            ),
            SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.only(left: 30),
              margin: const EdgeInsets.only(left: 15, right: 15),
              height: 190,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFFFFFFE61B)),
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    Row(
                      children: const [
                        Icon(Icons.stairs_sharp),
                        Text("\tLangkah 3"),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Text("\tBelajar Fundamental Aplikasi Flutter",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 15),
                    Row(
                      children: const [
                        Icon(Icons.timelapse_outlined, color: Colors.green),
                        Text("\t70 Jam"),
                        SizedBox(width: 10),
                        Icon(Icons.star, color: Colors.yellow),
                        Text("\t4.79"),
                        SizedBox(width: 20),
                        Icon(Icons.bar_chart, color: Colors.blue),
                        Text("\tMenengah"),
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: const [
                        Icon(Icons.book, color: Colors.grey),
                        Text("\t107 Modul"),
                      ],
                    ),
                  ]),
            ),
            SizedBox(height: 30),
          ],
        ));
  }
}