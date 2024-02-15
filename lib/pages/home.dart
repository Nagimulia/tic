import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List Wallpaperimages = [
    'images/slider1.jpg',
    'images/slider2.jpg',
    'images/slider3.jpg',
  ];

  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50.0, left: 20),
        child: Column(
          children: [
            Row(
              children: [
                Material(
                  elevation: 5,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(60),
                    child: Image.asset(
                      'images/gallery.jpg',
                      height: 50,
                      width: 50,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                SizedBox(width: 80),
                Text(
                  'Wallify',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Mukta'),
                ),
              ],
            ),
            SizedBox(height: 30),
            Expanded(
              child: CarouselSlider.builder(
                itemCount: Wallpaperimages.length,
                itemBuilder: (context, index, realIndex) {
                  final res = Wallpaperimages[index];
                  return buildImage(res, index);
                },
                options: CarouselOptions(
                  autoPlay: true,
                  height: MediaQuery.of(context).size.height / 1.5,
                  viewportFraction: 1,
                  enlargeCenterPage: true,
                  enlargeStrategy: CenterPageEnlargeStrategy.height,
                  onPageChanged: (index, reason) {
                    setState(() {
                      activeIndex = index;
                    });
                  },
                ),
              ),
            ),
            SizedBox(height: 20),
            Center(child: buildIndicator()),
          ],
        ),
      ),
    );
  }

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: 3,
        effect: SlideEffect(
          dotWidth: 15,
          dotHeight: 15,
          activeDotColor: Colors.black,
        ),
      );
  Widget buildImage(String urlImage, int index) => Container(
        margin: EdgeInsets.only(left: 10, right: 20),
        height: MediaQuery.of(context).size.height / 1.5,
        width: MediaQuery.of(context).size.width,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Image.asset(
            urlImage,
            fit: BoxFit.cover,
          ),
        ),
      );
}
