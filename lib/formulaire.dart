import 'package:flutter/material.dart';
import 'controller/toycontroller.dart';



class ToyModel {
  String name;
  String img;
  String description;
  String price;
  String ref;
  String age;
  String nbPlayers;
  String timing;
  String video;

  ToyModel({required this.name,
    required this.img,
    required this.description,
    required this.price,
    required this.age,
    required this.nbPlayers,
    required this.timing,
    required this.video,
    required this.ref  
  });
}


class Formulaire extends StatefulWidget {
  const Formulaire({ Key? key }) : super(key: key);
  @override
  State<Formulaire> createState() => _FormulaireState();
}

class _FormulaireState extends State<Formulaire> {
  final _controller = ToyController();
  late ToyModel _modelToy;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _modelToy = ToyModel(name: "name", img: "img", description: "description", price: 'price', age: 'age', nbPlayers: "nbPlayers", timing: "timing", video: "video", ref: "ref");
  }


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
          setState(() {
            _modelToy.name = value;
          });
          print(value);
          
        },),
      ),
       Padding(
         padding: const EdgeInsets.all(8.0),
         child: TextField(decoration: InputDecoration(hintText:"Entrez description du jouet",
      border:OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
      onChanged: (value){
          setState(() {
            _modelToy.description = value;
          });

      },),
       ),
       Padding(
         padding: const EdgeInsets.all(8.0),
         child: TextField(decoration: InputDecoration(hintText:"age conseillé",
      border:OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
      onChanged: (value){
        setState(() {
          _modelToy.age = value;
        });
          
      },
      ),
       ),
        Padding(
         padding: const EdgeInsets.all(8.0),
         child: TextField(decoration: InputDecoration(hintText:"Entrez le prix",
      border:OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
      onChanged: (value){
        setState(() {
           _modelToy.price = value;
        });
         
      },
      ),
       ),
        Padding(
         padding: const EdgeInsets.all(8.0),
         child: TextField(decoration: InputDecoration(hintText:"Entrez la référence",
      border:OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
      onChanged: (value){
          _modelToy?.ref = value;
      },
      ),
       ),
        Padding(
         padding: const EdgeInsets.all(8.0),
         child: TextField(decoration: InputDecoration(hintText:"Entrez le nombre de joueur",
      border:OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
      onChanged: (value){
        setState(() {
               _modelToy.nbPlayers = value;
        });
     
      },
      ),
       ),
        Padding(
         padding: const EdgeInsets.all(8.0),
         child: TextField(decoration: InputDecoration(hintText:"Entrez le temps d'une partie",
      border:OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
      onChanged: (value){
          setState(() {
            _modelToy.timing = value;
          });
      },
      ),
       ),
       ElevatedButton(onPressed: () async {
         print("Boutton valider pressé");
         setState(() {
             _modelToy.img = "https://cdn3.philibertnet.com/529171-large_default/la-fin-des-artichauts.jpg";
         _modelToy.video = "https://www.youtube.com/embed/4JhFhyvGdik";
         });
       
         print(_modelToy);
        
        await _controller.createToys(_modelToy!);
        Navigator.pop(context);
       }, child: Text("Valider"))
      
      
      
      
      ]
    );
  }
}