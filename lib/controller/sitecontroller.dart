import 'package:live_shoptoyts_start_6avril2022/models/site_repository.dart';
import '../models/Site.dart';

class SiteController {
  final SiteRepository _repository = SiteRepository();
  Future<List<Sites>> fetchSite(){
    return _repository.getSite();
  }

}