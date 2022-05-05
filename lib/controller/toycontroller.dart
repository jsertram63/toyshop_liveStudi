import 'package:live_shoptoyts_start_6avril2022/models/repository.dart';
import 'package:live_shoptoyts_start_6avril2022/models/toy.dart';
import 'package:live_shoptoyts_start_6avril2022/models/toy_repository.dart';

class ToyController {
  final Repository _repository = ToyRepository();
  Future<List<Toy>> fetchToys() {
    print("Repository");
  return _repository.getToys();
}
  Future createToys(){
    return _repository.postToys();
  }

}