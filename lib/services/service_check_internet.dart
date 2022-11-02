import '../entities/entity_service.dart';
import '../models/model_connectivity.dart';

class ServiceCheckInternet implements EntityService {
  static Future<ModelConnectivity> checkInternet() async {
    ModelConnectivity tmp = const ModelConnectivity();

    return Future.value(tmp);
  }
}
