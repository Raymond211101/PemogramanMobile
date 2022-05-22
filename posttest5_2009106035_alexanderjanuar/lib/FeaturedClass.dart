import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'Catalog.dart';

class FeaturedCourse extends StatefulWidget {
  FeaturedCourse(
      {Key? key,
      required this.gambar,
      required this.judul,
      required this.pelajaran,
      required this.waktu})
      : super(key: key);
  final String gambar;
  final String judul;
  final String pelajaran;
  final String waktu;

  @override
  State<FeaturedCourse> createState() => _FeaturedCourseState();
}




class _FeaturedCourseState extends State<FeaturedCourse> {
  bool isFeatured = false;

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage(widget.gambar),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              widget.judul,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Text(
                  '${widget.pelajaran} Pelajaran',
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 17,
                  ),
                ),
                const SizedBox(width: 10),
                const Icon(
                  Icons.brightness_1_rounded,
                  size: 10,
                  color: Color(0xFFFFFFB72B),
                ),
                const SizedBox(width: 10),
                Text(
                  "${widget.waktu} Jam",
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 17,
                  ),
                ),
                const SizedBox(width: 70),
                LikeButton(
                  likeBuilder: (isTapped) {},
                )
              ],
            ),
          ],
        ),
      ),
    );
  }


  Future<bool> onLikeButtonTapped(bool isLiked) async{
    ScaffoldMessenger.of(context)..removeCurrentSnackBar()..showSnackBar(
      SnackBar(
    duration: Duration(seconds: 2),
    behavior: SnackBarBehavior.floating,
    backgroundColor: Color(0xFFFFFFB72B),
    content: isLiked? Text('Dihapus Dari Favorite!!'):Text('Ditambahkan Ke Favorite!!'),
    margin: EdgeInsets.all(25),
    elevation: 30,
    action: SnackBarAction(
      label: 'Dismiss',
      onPressed: () {
      },
    ),
  ));

    return !isLiked;
  }
}


