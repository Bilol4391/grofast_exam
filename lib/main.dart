import 'package:flutter/material.dart';
import 'package:my_first_portfolio/auth/pageViewControl.dart';

void main() {
  runApp(const MainFile());
}

class MainFile extends StatelessWidget {
  const MainFile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PageViev(),
    );
  }
}
