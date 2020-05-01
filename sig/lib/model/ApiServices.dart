//import 'package:sig/model/beranda_model.dart';
import 'package:sig/model/model_wisata.dart';
import 'package:http/http.dart' show Client;
//import 'package:http/http.dart' show Client;

class Apiservice{
  final String baseUrl = "https://wisatategalku.000webhostapp.com/api/v1/wisataku";
  Client client = Client();

  Future<List<Data>> getProfiles() async {
    final response = await client.get("$baseUrl");
    if(response.statusCode == 200){
      return dataFromJson(response.body);
    }else{
      return null;
    }
  }
}
