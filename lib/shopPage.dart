import 'package:flutter/material.dart';
import 'package:live_shoptoyts_start_6avril2022/add_toy.dart';
import 'package:live_shoptoyts_start_6avril2022/toys_page.dart';

class ToyHomePage extends StatelessWidget {
  const ToyHomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const Text("Toy Store")),
      body:const ToysList(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed:(){
             Navigator.of(context).push<MaterialPageRoute>(
         MaterialPageRoute(builder:   (context) => const NewToy())
        );
        print("Ajout d'un jouet");
      }),
    );
  }
}