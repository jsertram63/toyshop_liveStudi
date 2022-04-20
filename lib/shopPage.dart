import 'package:flutter/material.dart';
import 'package:live_shoptoyts_start_6avril2022/toys_page.dart';

class ToyHomePage extends StatelessWidget {
  const ToyHomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const Text("Toy Store")),
      body:const ToysList(),
    );
  }
}