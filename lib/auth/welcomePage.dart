import 'package:flutter/material.dart';
import 'package:my_first_portfolio/auth/ProductTour1.dart';
import 'package:my_first_portfolio/pages/HomePage.dart';
import 'package:my_first_portfolio/pages/MainHomePage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  bool isLoading = false;

  @override
  void initState() {
    isLoading;

    Future.delayed(const Duration(seconds: 4), () async {
      isLoading = false;

      SharedPreferences _store = await SharedPreferences.getInstance();
      String name = _store.getString('nickname') ?? '';

      if (name.isNotEmpty) {
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (_) => const MainHomePage()), (s) {
          return false;
        });
      } else {
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (_) => const ProductTour1()), (s) {
          return false;
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: 430,
            child: Image.asset(
              "assets/welcome.png",
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
