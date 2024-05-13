import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flavour_fusion/Views/Auth/cart_screen.dart';
import 'package:flavour_fusion/Views/Auth/home_screen.dart';
import 'package:flavour_fusion/Views/Auth/payment_methods.dart';
import 'package:flavour_fusion/Views/Auth/popular_screen.dart';
import 'package:flavour_fusion/Views/Auth/profile_view.dart';
import 'package:flavour_fusion/Views/Auth/subscribem_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class NavigatonPopular extends StatefulWidget {

  @override
  State<NavigatonPopular> createState() => _NavigatonBarState();
}

class _NavigatonBarState extends State<NavigatonPopular> {
  final GlobalKey<ScaffoldState> _homepageKey = GlobalKey();

  List<IconData> iconList = [
    Icons.house_outlined,
    FontAwesomeIcons.heart,
    Icons.shopping_cart_outlined,
    Icons.person_2_outlined
  ];

  int page = 0;
  int pageview = 0;
  PageController pageController = PageController(initialPage: 1);
  Widget pageViewSection() {
    return PageView(
        controller: pageController,
        onPageChanged: (value) {
          setState(() {
            page = value;
          });
        },
        children: [
          HomeScreen(),
          PopularScreen(),
          CartScreen(),
          Profile(),
        ]
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _homepageKey,
        body: pageViewSection(),
        floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.deepOrange,
          onPressed: (){

          },
          child: Icon(FontAwesomeIcons.magnifyingGlass),

        ),
        bottomNavigationBar: AnimatedBottomNavigationBar(
          icons: iconList,
          activeIndex: page,
          inactiveColor: Colors.black,
          splashSpeedInMilliseconds: 300,
          notchSmoothness: NotchSmoothness.softEdge,
          leftCornerRadius: 32,
          rightCornerRadius: 32,
          gapLocation: GapLocation.none,
          onTap: (p0) {
            setState(() {
              pageview = p0;
              pageController.animateToPage(p0,
                  duration: Duration(milliseconds: 200), curve: Curves.linear);
            });
          },
        )
    );
  }
}