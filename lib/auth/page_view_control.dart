import 'package:flutter/material.dart';
import 'package:my_first_portfolio/auth/product_tour1.dart';
import 'package:my_first_portfolio/auth/product_tour2.dart';
import 'package:my_first_portfolio/auth/product_tour3.dart';

class PageViev extends StatefulWidget {
  const PageViev({super.key});

  @override
  State<PageViev> createState() => _PageVievState();
}

class _PageVievState extends State<PageViev> {
  PageController pageController = PageController();

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        onPageChanged: (value) {
          index = value;
        },
        children: const [
          ProductTour1(),
          ProductTour2(),
          ProductTour3(),
        ],
      ),
    );
  }
}
