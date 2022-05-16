import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'FeaturedClass.dart';
import 'package:circle_nav_bar/circle_nav_bar.dart';
import 'Catalog.dart';
import 'DetailPage.dart';
import 'ProfilePage.dart';
import 'FormPage.dart';

//Global Variabel
DateTime now = DateTime.now();
final Waktu = DateTime.parse(now.toString());

int _currentIndex = 0;

List<Widget> widgets = const [Home(), Catalog(),PageForm(),ProfilePage()];

TextEditingController SearchController = TextEditingController();
final pagecontrol = PageController();


//List DetailPageState

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


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffFDF3F3),
      body: widgets[_currentIndex],
      bottomNavigationBar: CircleNavBar(
        initIndex: 0,
        onChanged: (v) {
          setState(() {
            _currentIndex = v;
          });
        },
        activeIcons: const [
          Icon(Icons.home, color: Colors.white),
          Icon(Icons.list_alt_outlined, color: Colors.white),
          Icon(Icons.search_outlined, color: Colors.white),
          Icon(Icons.person, color: Colors.white),
        ],
        inactiveIcons: const [
          Text("Home", style: TextStyle(color: Colors.white)),
          Text("Catalog", style: TextStyle(color: Colors.white)),
          Text("Search", style: TextStyle(color: Colors.white)),
          Text("Profile", style: TextStyle(color: Colors.white),),
        ],
        gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFFFFF2994A), Color(0xFFFFF2C94C)]),
        height: 60,
        circleWidth: 55,
        // tabCurve: ,
        elevation: 10,
        color: Colors.white,
      ),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(25.0),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    Waktu.hour > 5 && Waktu.hour < 11
                        ? "Selamat Pagi"
                        : Waktu.hour > 11 && Waktu.hour < 15
                            ? "Selamat Siang"
                            : Waktu.hour > 15 && Waktu.hour < 19
                                ? "Selamat Sore"
                                : "Selamat Malam",
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 17,
                      color: Colors.grey,
                    ),
                  ),
                  const Text(
                    "Welcome, Alex",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ]),
            InkWell(
              onTap: () {},
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset("asset/Python.png", height: 40),
              ),
            ),
          ]),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
          child: TextField(
            controller: SearchController,
            decoration: InputDecoration(
                suffixIcon: const Icon(Icons.search, color: Colors.grey),
                contentPadding: const EdgeInsets.all(15),
                filled: true,
                fillColor: Colors.white70,
                border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                    borderRadius: BorderRadius.circular(30.0)),
                hintText: 'Cari Disini',
                hintStyle: const TextStyle(color: Colors.grey)),
          ),
        ),
        const SizedBox(height: 30),
        Container(
          height: 270,
          child: PageView(
            controller: pagecontrol,
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return DetailPage(Detail: Python,);
                  }));
                },
                child: FeaturedCourse(
                  gambar: 'asset/PythonBG.jpg',
                  judul: 'Python',
                  pelajaran: '14',
                  waktu: '25',
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return DetailPage(Detail: Html,);
                  }));
                },
                child: FeaturedCourse(
                  gambar: 'asset/WebDev.jpeg',
                  judul: 'HTML',
                  pelajaran: '6',
                  waktu: '9',
                ),
              ),
              FeaturedCourse(
                gambar: 'asset/apple-swift.jpg',
                judul: 'Swift',
                pelajaran: '11',
                waktu: '25',
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        Center(
            child: SmoothPageIndicator(
                controller: pagecontrol,
                count: 3,
                effect: const WormEffect(
                    dotHeight: 10,
                    dotWidth: 10,
                    activeDotColor: Color(0xFFFFFFB72B), spacing: 15))),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.all(25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Kursus Populer",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),
              ),
              Container(
                width: 80,
                height: 20,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                    });
                  },
                  child: const Text(
                    'See all',
                    style: TextStyle(color: Colors.grey),
                  ),
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    primary: Colors.white,
                    shape: const StadiumBorder(),
                  ),
                ),
              )
            ],
          ),
        ),
        Column(
          children: [
            PopularClass(),
            PopularClass(),
          ],
        )
      ],
    );
  }
}

class PopularClass extends StatelessWidget {
  const PopularClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      margin: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.grey.withOpacity(0.5), width: 0.5)),
      child: Padding(
          padding: const EdgeInsets.only(left: 20, bottom: 10, top: 10),
          child: Row(
            children: [
              Container(
                height: 90,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                    image: AssetImage('asset/AnalyzeData.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: 20),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  const Text(
                    'Skill Path',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                  ),
                  const Text(
                    'Analisa Data (Python)',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: const [
                      Text(
                        'Pemula',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(width: 10),
                      Icon(
                        Icons.brightness_1_rounded,
                        size: 10,
                        color: Color(0xFFFFFFB72B),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "12 Pelajaran",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
