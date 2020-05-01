// To parse this JSON data, do
//
//     final data = dataFromJson(jsonString);

import 'dart:convert';

class Data {
    int id;
    String namawisata;
    String alamatwisata;
    String kategori;
    String wilayah;
    String fasilitas;
    String informasi;
    String latitude;
    String longitude;
    String foto;
    String video;
    String status;
    dynamic createdAt;
    dynamic updatedAt;

    Data({
        this.id,
        this.namawisata,
        this.alamatwisata,
        this.kategori,
        this.wilayah,
        this.fasilitas,
        this.informasi,
        this.latitude,
        this.longitude,
        this.foto,
        this.video,
        this.status,
        this.createdAt,
        this.updatedAt,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        namawisata: json["namawisata"],
        alamatwisata: json["alamatwisata"],
        kategori: json["kategori"],
        wilayah: json["wilayah"],
        fasilitas: json["fasilitas"],
        informasi: json["informasi"],
        latitude: json["latitude"],
        longitude: json["longitude"],
        foto: json["foto"],
        video: json["video"],
        status: json["status"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "namawisata": namawisata,
        "alamatwisata": alamatwisata,
        "kategori": kategori,
        "wilayah": wilayah,
        "fasilitas": fasilitas,
        "informasi": informasi,
        "latitude": latitude,
        "longitude": longitude,
        "foto": foto,
        "video": video,
        "status": status,
        "created_at": createdAt,
        "updated_at": updatedAt,
    };
}

List<Data> dataFromJson(String jsonData){
  final data = json.decode(jsonData);
  return List<Data>.from(data.map((item) => Data.fromJson(item)));
}

String dataToJson(Data data){
  final jsonData = data.toJson();
  return json.encode(jsonData);
}