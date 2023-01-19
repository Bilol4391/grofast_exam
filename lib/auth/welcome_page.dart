import 'package:flutter/material.dart';
import 'package:my_first_portfolio/auth/page_view_control.dart';
import 'package:my_first_portfolio/pages/mainpages/main_home_page.dart';
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

      SharedPreferences store = await SharedPreferences.getInstance();
      String name = store.getString('nickname') ?? '';

      if (name.isNotEmpty) {
        // ignore: use_build_context_synchronously
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (_) => const MainHomePage()), (s) {
          return false;
        });
      } else {
        // ignore: use_build_context_synchronously
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (_) => const PageViev()), (s) {
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
