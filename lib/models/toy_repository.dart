
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:live_shoptoyts_start_6avril2022/formulaire.dart';
import 'package:live_shoptoyts_start_6avril2022/models/repository.dart';
import 'repository.dart';
import 'toy.dart';
class ToyRepository implements Repository {

  String dataUrl = "http://15.236.148.78/products/all?fbclid=IwAR21fNlKPwKyDidzqYi4NJoGBbfx2NLey0GC0mPfrRfOTj63QaXPOaDTTsU"; 
  String dataUrl2 = "http://15.236.148.78/products/add";


  var body = {
      "name":"La Fin des Artichauts",
       "img":"https://cdn3.philibertnet.com/529171-large_default/la-fin-des-artichauts.jpg",
       "description":"La Fin des Artichauts est un jeu de cartes évolutif simple et efficace où il ne faudra pas rester planté là.",
       "price":"13.50",
       "ref":"DRW",
       "age":"à partir de 10 ans",
       "nbPlayers":"2 à 4",
       "timing":"- 30 min",
       "video":"https://www.youtube.com/embed/4JhFhyvGdik"
     };

  @override
  Future<List<Toy>> getToys() async {

    print("getToy repository");
    // TODO: implémentation de getToys qui va aller nous récupérer nos données
    final toys  = <Toy>[]; // </=========
    final uri = Uri.parse(dataUrl);
    final reponse = await http.get(uri); /// <====== http get 
    if (reponse.statusCode == 200){
      print("Réception OK");
      // decodage du json => construction d'une liste
      // 4. 
      List<dynamic> list = jsonDecode(reponse.body);
      for(int i=0; i<list.length; i++ ){
        print(i);
        print(list[i]);
        toys.add(Toy.fromJson(list[i]));
      }
    }
    // await 
    return toys;
  }
  // ENTREE : MODELE DE JOUET MODELTOY (name, description, image...)
  @override Future<void> postToys(ToyModel model)async {
    // TODO: implement postToys
    print(body);
    print("AJout d'un élément");
    final uri = Uri.parse(dataUrl2);
    final url = Uri.parse(dataUrl2);
    final headers = {"Content-type": "application/json"};
    final json = '$body';
  /*  final response = await http.post(url, headers: headers, body:jsonEncode([<String,String>{
      "name":"La Fin des Artichauts",
       "img":"https://cdn3.philibertnet.com/529171-large_default/la-fin-des-artichauts.jpg",
       "description":"La Fin des Artichauts est un jeu de cartes évolutif simple et efficace où il ne faudra pas rester planté là.",
       "price":"13.50",
       "ref":"DRW",
       "age":"à partir de 10 ans",
       "nbPlayers":"2 à 4",
       "timing":"- 30 min",
       "video":"https://www.youtube.com/embed/4JhFhyvGdik"
  }]));*/
  String nameToy = "Objectif lune";
  final response = await http.post(url, headers: headers, body:jsonEncode([<String,String>{
      "name":model.name,
       "img":model.img,
       "description":model.description,
       "price":model.price,
       "ref":model.ref,
       "age":model.age,
       "nbPlayers":model.nbPlayers,
       "timing":model.timing,
       "video":model.video
  }]));
  print('Status code: ${response.statusCode}');
  print('Body: ${response.body}');

    print("============== STATUS CODE==============");
     print(response.statusCode);
    print("============== STATUS CODE==============");

    // 
     if(response.statusCode == 200 || response.statusCode == 201){
        print("la requête a bien été enregistré sur le serveur");
     }
  }





}