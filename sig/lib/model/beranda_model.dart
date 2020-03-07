import 'dart:convert';

class Profile {
  final int id;
  final String title;
  final String content;

  Profile({
    this.id ,
    this.title,
    this.content
    });

  factory Profile.fromJson(Map<String, dynamic> map) {
    return Profile(
      id: map["id"],
      title : map["title"].toString(),
      content : map["content"].toString()
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "id" : id, 
      "title" : title, 
      "content": content
    };
  }

  @override
  String toString() {
    return 'Profile{id : $id, title : $title, content: $content}';
  }

}

List<Profile> profileFromJson(String jsonData) {
  final data = json.decode(jsonData);
  return List<Profile>.from(data.map((item) => Profile.fromJson(item)));
}

String profileToJson(Profile data) {
  final jsonData = data.toJson();
  return json.encode(jsonData);
}
