import 'package:flutter/material.dart';
import 'package:my_first_portfolio/auth/ProductTour1.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => const ProductTour1(),
                ),
              );
            },
            child: SizedBox(
              height: 932,
              width: 430,
              child: Image.asset(
                "assets/welcome.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
