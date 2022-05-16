import 'package:flutter/material.dart';
import 'DetailPage.dart';

class Catalog extends StatefulWidget {
  const Catalog({Key? key}) : super(key: key);

  @override
  State<Catalog> createState() => _CatalogState();
}

List<String> Python = [
  'asset/PythonBG.jpg',
  'Pemula',
  "25 Jam",
  "Python adalah bahasa pemrograman serba guna dan populer. Python juga merupakan bahasa pertama yang bagus karena ringkas dan mudah dibaca. Bahasa yang baik untuk dimiliki di oleh programmer mana pun, Python dapat digunakan untuk segala hal mulai dari pengembangan web hingga pengembangan perangkat lunak",
  "Kursus ini merupakan pengantar yang bagus untuk konsep pemrograman dasar dan bahasa pemrograman Python. Python 3 adalah versi bahasa terbaru dengan banyak perbaikan yang dilakukan untuk meningkatkan efisiensi dan kesederhanaan kode Python yang Anda tulis.",
  "Belajar Python 3"
];

List<String> Html = [
  'asset/WebDev.jpeg',
  'Pemula',
  "9 Jam",
  "HTML adalah dasar dari semua halaman web. Tanpa HTML, Anda tidak akan dapat mengatur teks atau menambahkan gambar atau video ke halaman web Anda. HTML adalah awal dari semua yang perlu Anda ketahui untuk membuat halaman web yang menarik!",
  "Anda akan mempelajari semua tag HTML umum yang digunakan untuk menyusun halaman HTML, kerangka semua situs web. Anda juga akan dapat membuat tabel HTML untuk menyajikan data tabular secara efisien.",
  "Dasar HTML 5"
];

class _CatalogState extends State<Catalog> {
  Widget CatalogList(String judul, String gambar) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
      height: 80,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 1,
          blurRadius: 4,
          offset: Offset(0, 3), // changes position of shadow
        ),
      ], borderRadius: BorderRadius.circular(10), color: Colors.white),
      child: Row(
        children: [
          const SizedBox(
            width: 20,
          ),
          CircleAvatar(
            backgroundImage: AssetImage(gambar),
            radius: 25,
          ),
          const SizedBox(
            width: 20,
          ),
          Text(
            judul,
            style: const TextStyle(fontSize: 18),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Color(0xffffFDF3F3),
        child: ListView(
          children: [
            Container(
              height: 180,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Color(0xFFFFF2994A), Color(0xFFFFF2C94C)])),
              child: const Padding(
                padding: EdgeInsets.only(top: 70),
                child: Text("Catalog",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.bold)),
              ),
            ),
            SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Text("Language",
                  style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500)),
            ),
            InkWell(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return DetailPage(Detail: Python);
                  }));
                },
                child: CatalogList("Belajar Python", "asset/Python.png")),
            InkWell(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return DetailPage(Detail: Html);
                  }));
                },
                child: CatalogList("Belajar HTML", "asset/WebDev.jpeg")),
            CatalogList("Belajar Swift", "asset/apple-swift.jpg"),
            SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Text("Skill Path",
                  style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500)),
            ),
            CatalogList("Analisa Data (Python)", "asset/AnalyzeData.png"),
            CatalogList("Basic Machine Learning ", "asset/Python.png"),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
