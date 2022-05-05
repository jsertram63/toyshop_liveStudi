import 'package:flutter/material.dart';
import 'package:live_shoptoyts_start_6avril2022/controller/toycontroller.dart';
import 'package:live_shoptoyts_start_6avril2022/models/toy_repository.dart';
import 'toy_details.dart';

import 'models/toy.dart';

//
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
        return  Center(child: Container(child: Column(children: [
          CircularProgressIndicator(),
          Text("Chargement des données")
        ]),));
      }
      return ListView.separated(
        separatorBuilder:((context, index) => const Divider(
          height: 5,
          color: Colors.grey,
          endIndent: 50,
          indent: 50,
        )),      
        itemBuilder: (BuildContext context, int position){
          return _buildRows(toys[position]);
        }, itemCount: toys.length,);
    });
  }
  Widget _buildRows(Toy toy){
    return Padding(
      padding: const EdgeInsets.only(bottom: 20, top: 20),
      child: ListTile(
        title: Padding(padding: const EdgeInsets.only(bottom: 16.0),
        child: Text(toy.name, style: const TextStyle(fontSize: 14)),
        ),
        subtitle: Text(toy.description, style: TextStyle(fontSize: 12),) ,
        onTap: (){
          // gesture onTap (un touché sur une cellule (row))
          Navigator.of(context).push<MaterialPageRoute>(
           MaterialPageRoute(builder:   (context) => ToyDetailPage(toyParse: toy))
          );
        },
        trailing: ClipRRect(borderRadius: BorderRadius.circular(8),
        child: Image.network(toy.img),),
      ),
    );
  }

}