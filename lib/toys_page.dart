import 'package:flutter/material.dart';
import 'package:live_shoptoyts_start_6avril2022/controller/toycontroller.dart';
import 'package:live_shoptoyts_start_6avril2022/models/toy_repository.dart';

import 'models/toy.dart';


// FUTURE POUR EFFECTUER LES REQUETES
// FUTUREBUILDER 

class ToysList extends StatefulWidget {
  const ToysList({ Key? key }) : super(key: key);

  @override
  State<ToysList> createState() => _ToysListState();
}

class _ToysListState extends State<ToysList> {



  final _controller = ToyController();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Toy>>(
      future: _controller.fetchToys(),
      builder:(context, snapshot) {
      final toys = snapshot.data;
      if (toys == null){
        return const Center(child: CircularProgressIndicator());
      }


      return const Text("TOYS SHOPS");

    });
  }
}