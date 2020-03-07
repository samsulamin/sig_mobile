import 'package:sig/model/beranda_model.dart';
import 'package:http/http.dart' show Client;

class ApiService {

  final String baseUrl = "http://10.0.2.2/wisatategal/api/v1/wisataku";
  Client client = Client();

  Future<List<Profile>> getProfiles() async {
    final response = await client.get("$baseUrl");
    if (response.statusCode == 200) {
      return profileFromJson(response.body);
    } else {
      return null;
    }
  }
}
