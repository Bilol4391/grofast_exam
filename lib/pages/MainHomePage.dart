import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:my_first_portfolio/pages/bagPage.dart';
import 'package:my_first_portfolio/pages/HomePage.dart';
import 'package:my_first_portfolio/pages/ProfilePage.dart';
import 'package:my_first_portfolio/pages/SearchPage.dart';

class MainHomePage extends StatefulWidget {
  const MainHomePage({Key? key}) : super(key: key);

  @override
  State<MainHomePage> createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  @override

  // ignore: override_on_non_overriding_member
  List listOfPages = [
    const HomePage(),
    const SearchPage(),
    BagPage(),
    const ProfilePage(),
  ];

  int _page = 0;

  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: listOfPages[_page],
      bottomNavigationBar: SizedBox(
        child: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: 0,
          height: 75.0,
          items: const <Widget>[
            Icon(
              Icons.home,
              size: 33,
              color: Color(0xff2AB44C),
            ),
            Icon(Icons.search_rounded, size: 33, color: Color(0xff2AB44C)),
            Icon(Icons.shopping_bag_outlined,
                size: 33, color: Color(0xff2AB44C)),
            Icon(Icons.perm_identity, size: 33, color: Color(0xff2AB44C)),
          ],
          color: Colors.white,
          buttonBackgroundColor: Colors.white,
          backgroundColor: const Color(0xff2AB44C).withOpacity(0.3),
          animationCurve: Curves.linearToEaseOut,
          animationDuration: const Duration(milliseconds: 600),
          onTap: (index) {
            setState(() {
              _page = index;
            });
          },
          letIndexChange: (index) => true,
        ),
      ),
    );
  }
}
