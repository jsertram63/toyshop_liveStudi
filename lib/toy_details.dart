import 'package:flutter/material.dart';

class ToyDetailPage extends StatelessWidget {

  const ToyDetailPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Details")),
      body: Center(
        child: Text("Details d'un cours"),
      ),

    );
  }
}