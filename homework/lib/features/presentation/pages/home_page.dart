import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:homework/features/domain/models/list_view.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // PageController pageController = PageController(viewportFraction: 0.85);
  // var _currentPageValue = 0.0;

  @override
  // @override
  // void initState() {
  //   super.initState();
  //   pageController.addListener(() {
  //     setState(() {
  //       _currentPageValue = pageController.page!;
  //     });
  //   });
  // }

  // @override
  // void dispose() {
  //   pageController.dispose();
  // }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 50,
                  width: 50,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color.fromARGB(255, 79, 151, 115),
                    ),
                    child: const Icon(
                      Icons.sort,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                  width: 50,
                  child: Container(),
                ),
                SizedBox(
                  height: 50,
                  width: 50,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color.fromARGB(255, 79, 151, 115),
                    ),
                    child: const Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 200),
              child: Text(
                'Find your experience',
                style: TextStyle(fontSize: 30, fontFamily: 'Urbanist'),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 200,
              child: CarouselSlider.builder(
                  options: CarouselOptions(autoPlay: true, height: 200),
                  itemCount: 5,
                  itemBuilder: (context, index, realIndex) {
                    return _buildPageItem(index);
                  }),
            ),
            const SizedBox(
              height: 40,
            ),
            // DotsIndicator(
            //   dotsCount: 5,
            //   position: _currentPageValue.toInt(),
            //   decorator: DotsDecorator(
            //     activeColor: Color.fromARGB(255, 79, 151, 115),
            //     size: const Size.square(9.0),
            //     activeSize: const Size(18.0, 9.0),
            //     activeShape: RoundedRectangleBorder(
            //         borderRadius: BorderRadius.circular(5.0)),
            //   ),
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 100,
                  width: 100,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.lightBlueAccent,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                SizedBox(
                  height: 100,
                  width: 100,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.lightGreenAccent,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                SizedBox(
                  height: 100,
                  width: 100,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.indigoAccent),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            // DotsIndicator(
            //   dotsCount: 5,
            //   position: _currentPageValue.toInt(),
            //   decorator: DotsDecorator(
            //     activeColor: Color.fromARGB(255, 79, 151, 115),
            //     size: const Size.square(9.0),
            //     activeSize: const Size(18.0, 9.0),
            //     activeShape: RoundedRectangleBorder(
            //         borderRadius: BorderRadius.circular(5.0)),
            //   ),
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 100,
                  width: 100,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.orangeAccent,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                SizedBox(
                  height: 100,
                  width: 100,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.pinkAccent,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                SizedBox(
                  height: 100,
                  width: 100,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.purpleAccent,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: const GNav(
        backgroundColor: Color.fromARGB(255, 79, 151, 115),
        color: Colors.white,
        activeColor: Colors.white,
        gap: 10,
        tabs: [
          GButton(
            icon: Icons.home,
            text: 'Home',
          ),
          GButton(
            icon: Icons.info,
            text: 'Info',
          ),
          GButton(
            icon: Icons.settings,
            text: 'Settings',
          ),
          GButton(
            icon: Icons.person,
            text: 'Profile',
          ),
        ],
      ),
    );
  }
}

Widget _buildPageItem(int position) {
  return Container(
    height: 200,
    margin: const EdgeInsets.only(left: 5, right: 5),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.lightBlueAccent,
        image: DecorationImage(
            image: AssetImage(listView[position].image), fit: BoxFit.cover)),
  );
}
