// To parse this JSON data, do
//
//     final data = dataFromJson(jsonString);

import 'dart:convert';

class Data {
    int id;
    String title;
    String content;
    DateTime createdAt;
    DateTime updatedAt;

    Data({
        this.id,
        this.title,
        this.content,
        this.createdAt,
        this.updatedAt,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        title: json["title"],
        content: json["content"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "content": content,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
    };
}

List<Data> profileFromJson(String jsonData){
  final data = json.decode(jsonData);
  return List<Data>.from(data.map((item) => Data.fromJson(item)));
}

String profileToJson(Data data){
  final jsonData = data.toJson();
  return json.encode(jsonData);
}

