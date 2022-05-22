import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:posttest6_2009106035_alexanderjanuar/HomePage.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'controller/Contoller.dart';

class LandingPage extends StatelessWidget {
  LandingPage({Key? key}) : super(key: key);

  final _controller = PageController();
  final page = Get.put(PageControl());

  @override
  Widget build(BuildContext context) {
    bool lastPage = false;

    Widget Page(
      String Animation,
      String Title,
      Color colors,
      double width,
    ) {
      return Container(
        color: colors,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(Title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 30,
              ),
              textAlign: TextAlign.center),
          SizedBox(height: 50),
          Lottie.asset(Animation, width: width, repeat: false),
        ]),
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            onPageChanged: (index) {
              lastPage = page.OnlastPage(index);
            },
            controller: _controller,
            children: [
              Page('asset/Page1.json', "Find your favorite programming lesson",
                  Color(0xFFFFFFB72B), 250),
              Page('asset/Mobile.json', "Practice on your \nPhone or tablet",
                  Color(0xFFFFFFE61B), 350),
              Page('asset/Streak.json', "Start a coding streak",
                  Color(0xFFFFB5FE83), 300),
            ],
          ),
          Container(
            alignment: Alignment(0, 0.80),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Obx(() => page.pageNumber == 0
                    ? GestureDetector(
                        onTap: () {
                          _controller.jumpToPage(2);
                        },
                        child: Obx(() => Text(page.nameFirst.value,
                            style: const TextStyle(
                                color: Colors.black, fontSize: 14))),
                      )
                    : GestureDetector(
                        onTap: () {
                          _controller.previousPage(
                              duration: const Duration(microseconds: 500),
                              curve: Curves.easeIn);
                        },
                        child: Obx(() => Text(page.nameFirst.value,
                            style: const TextStyle(
                                color: Colors.black, fontSize: 14))),
                      )),
                SmoothPageIndicator(
                    onDotClicked: (index) {
                      _controller.jumpToPage(index);
                    },
                    controller: _controller,
                    count: 3,
                    effect: const WormEffect(
                        dotHeight: 10,
                        dotWidth: 10,
                        activeDotColor: Colors.lightBlue,
                        spacing: 15)),
                Obx(() => page.pageNumber == 2
                    ? GestureDetector(
                        onTap: () {
                          Get.to(() => HomePage());
                        },
                        child: Obx(() => Text(page.nameLast.value,
                            style: const TextStyle(
                                color: Colors.black, fontSize: 14))),
                      )
                    : page.pageNumber == 1
                        ? GestureDetector(
                            onTap: () {
                              _controller.nextPage(
                                  duration: const Duration(microseconds: 500),
                                  curve: Curves.easeIn);
                            },
                            child: Obx(() => Text(page.nameLast.value,
                                style: const TextStyle(
                                    color: Colors.black, fontSize: 14))),
                          )
                        : GestureDetector(
                            onTap: () {
                              _controller.nextPage(
                                  duration: const Duration(microseconds: 500),
                                  curve: Curves.easeIn);
                            },
                            child: Obx(() => Text(page.nameLast.value,
                                style: TextStyle(
                                    color: Colors.black, fontSize: 14))),
                          )) 
              ],
            ),
          )
        ],
      ),
    );
  }
}
