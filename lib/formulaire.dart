import 'package:flutter/material.dart';
import 'controller/toycontroller.dart';


class Formulaire extends StatefulWidget {
  const Formulaire({ Key? key }) : super(key: key);
  @override
  State<Formulaire> createState() => _FormulaireState();
}

class _FormulaireState extends State<Formulaire> {
  final _controller = ToyController();


   var nomJouet = "";
  var description = "";
  var age = "";
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(decoration: InputDecoration(hintText:"Entrez nom du jouet",
        border:OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
        onChanged: (value){
          nomJouet = value;
        },),
      ),
       Padding(
         padding: const EdgeInsets.all(8.0),
         child: TextField(decoration: InputDecoration(hintText:"Entrez description du jouet",
      border:OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
      onChanged: (value){
          description = value;
      
      },),
       ),
       Padding(
         padding: const EdgeInsets.all(8.0),
         child: TextField(decoration: InputDecoration(hintText:"age conseillé",
      border:OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
      onChanged: (value){
          age = value;
      },
      ),
       ),
       ElevatedButton(onPressed: (){
         print("Boutton valider pressé");
        
        _controller.createToys();
       }, child: Text("Valider"))
      
      
      
      
      ]
    );
  }
}