import 'dart:html';

import 'package:live_shoptoyts_start_6avril2022/models/repository.dart';

import 'repository.dart';
import 'toy.dart';

class ToyRepository implements Repository {

  String dataUrl = "http://15.236.148.78/products/all?fbclid=IwAR21fNlKPwKyDidzqYi4NJoGBbfx2NLey0GC0mPfrRfOTj63QaXPOaDTTsU"; 


  @override
  Future<List<Toy>> getToys() async {
    // TODO: implémentation de getToys qui va aller nous récupérer nos données
    final toys  = <Toy>[];
    // await 
    return toys;

  }


}