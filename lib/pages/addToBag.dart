import 'package:flutter/material.dart';

class AddToBag extends StatefulWidget {
  const AddToBag({Key? key}) : super(key: key);

  @override
  State<AddToBag> createState() => _AddToBagState();
}

class _AddToBagState extends State<AddToBag> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Add to Bag"),),
    );
  }
}
