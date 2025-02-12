// To parse this JSON data, do
//
//     final randomjokes = randomjokesFromJson(jsonString);

import 'dart:convert';

Randomjokes randomjokesFromJson(String str) => Randomjokes.fromJson(json.decode(str));

String randomjokesToJson(Randomjokes data) => json.encode(data.toJson());

class Randomjokes {
    List<dynamic> categories;
    DateTime createdAt;
    String iconUrl;
    String id;
    DateTime updatedAt;
    String url;
    String value;

    Randomjokes({
        required this.categories,
        required this.createdAt,
        required this.iconUrl,
        required this.id,
        required this.updatedAt,
        required this.url,
        required this.value,
    });

    factory Randomjokes.fromJson(Map<String, dynamic> json) => Randomjokes(
        categories: List<dynamic>.from(json["categories"].map((x) => x)),
        createdAt: DateTime.parse(json["created_at"]),
        iconUrl: json["icon_url"],
        id: json["id"],
        updatedAt: DateTime.parse(json["updated_at"]),
        url: json["url"],
        value: json["value"],
    );

    Map<String, dynamic> toJson() => {
        "categories": List<dynamic>.from(categories.map((x) => x)),
        "created_at": createdAt.toIso8601String(),
        "icon_url": iconUrl,
        "id": id,
        "updated_at": updatedAt.toIso8601String(),
        "url": url,
        "value": value,
    };
}
