import 'package:flutter/material.dart';
import 'package:live_shoptoyts_start_6avril2022/image_container.dart';

import 'models/toy.dart';



class ToyDetailPage extends StatelessWidget {

  // objet passé au moment de la navigation 
  final Toy toyParse;

  const ToyDetailPage({ Key? key,required this.toyParse }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Details")),
      body: Center(
        child: Column(children: [
         _buildBanner(),
         _buildMain(context)
        ],)
      ),

    );
  }

  Widget _buildBanner(){
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ImageContainer(url:toyParse.img,width: 200,heigth: 200,),
      ),
      );
  }

  Widget _buildMain(BuildContext context){
    return Padding(padding:const EdgeInsets.all(8.0),
      child: Column(children: [
        Text(toyParse.name,
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        Padding(padding: const EdgeInsets.all(10.0)),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(toyParse.description, style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w300),),
        )

      ]),
    
    );
  }
}