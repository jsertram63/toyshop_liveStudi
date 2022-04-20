import 'package:flutter/material.dart';
import 'package:live_shoptoyts_start_6avril2022/controller/toycontroller.dart';
import 'package:live_shoptoyts_start_6avril2022/models/toy_repository.dart';
import 'toy_details.dart';

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
      future: _controller.fetchToys(),  // <====== le controleur récupère les données 
      builder:(context, snapshot) {
      final toys = snapshot.data;
      if (toys == null){
        return const Center(child: CircularProgressIndicator());
      }
      return ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: toys.length,
        itemBuilder: (BuildContext context, int position){
          return _buildRows(toys[position]);
        });
    });
  }
  Widget _buildRows(Toy toy){
    return ListTile(
      title: Padding(padding: const EdgeInsets.only(bottom: 16.0),
      child: Text(toy.name, style: const TextStyle(fontSize: 14)),
      ),
      subtitle: Text(toy.description, style: TextStyle(fontSize: 12),) ,
      onTap: (){
        Navigator.of(context).push<MaterialPageRoute>(
         MaterialPageRoute(builder:   (context) => ToyDetailPage())
        );
      },
      trailing: ClipRRect(borderRadius: BorderRadius.circular(8),
      child: Image.network(toy.img),),
    );
  }

}