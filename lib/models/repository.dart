
import 'package:live_shoptoyts_start_6avril2022/models/toy.dart';

abstract class Repository {
    // Mot clé : FUTURE va permettre de faire des requêtes asynchrones
    Future<List<Toy>> getToys();

}