
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:live_shoptoyts_start_6avril2022/models/repository.dart';

import 'repository.dart';
import 'toy.dart';

class ToyRepository implements Repository {

 

  String dataUrl = "http://15.236.148.78/products/all?fbclid=IwAR21fNlKPwKyDidzqYi4NJoGBbfx2NLey0GC0mPfrRfOTj63QaXPOaDTTsU"; 
  

  @override
  Future<List<Toy>> getToys() async {

    print("getToy repository");
    // TODO: implémentation de getToys qui va aller nous récupérer nos données
    final toys  = <Toy>[];
    final uri = Uri.parse(dataUrl);
    final reponse = await http.get(uri);
    print(reponse.body);
    final apiReponse = json.decode(reponse.body) as Map<String,dynamic>;
    print(apiReponse);
    

    // await 
    return toys;

  }


}