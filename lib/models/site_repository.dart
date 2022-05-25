

import 'dart:convert';
import 'package:live_shoptoyts_start_6avril2022/models/repository.dart';
import 'package:http/http.dart' as http;

import 'Site.dart';

class SiteRepository implements SRepository {


  var dataUrl = "http://137.184.217.221/app/site/";

  // URL pour inserer un lieu
  var dataUrl2 = "http://137.184.217.221/app/site/add";
 

  @override 
  Future<List<Sites>> getSite() async {
    print("Récupération des sites");
    // tableau de site à construire et à retourner
    final sites = <Sites>[];
    final uri = Uri.parse(dataUrl);
    final reponse = await http.get(uri);

  if (reponse.statusCode == 200){
    print("Récéption OK Des données");
    print(reponse.body);
    final apiReponse = json.decode(reponse.body) as Map<String,dynamic>;
    final data = apiReponse['sites'] as List;
    for (final json in data){
      sites.add(Sites.fromJson(json as Map<String,dynamic>));
    }
  }
    return sites;
  }
  

}