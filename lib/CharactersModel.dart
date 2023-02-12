// To parse this JSON data, do
//
//     final charactersModel = charactersModelFromJson(jsonString);

import 'dart:convert';

CharactersModel charactersModelFromJson(String str) => CharactersModel.fromJson(json.decode(str));

String charactersModelToJson(CharactersModel data) => json.encode(data.toJson());

class CharactersModel {
  CharactersModel({
    required this.data,
    required this.count,
    required this.totalPages,
    required this.nextPage,
  });

  List<Datum> data;
  int count;
  int totalPages;
  String nextPage;

  factory CharactersModel.fromJson(Map<String, dynamic> json) => CharactersModel(
    data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    count: json["count"],
    totalPages: json["totalPages"],
    nextPage: json["nextPage"],
  );

  Map<String, dynamic> toJson() => {
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
    "count": count,
    "totalPages": totalPages,
    "nextPage": nextPage,
  };
}

class Datum {
  Datum({
    required this.films,
    required this.shortFilms,
    required this.tvShows,
    required this.videoGames,
    required this.parkAttractions,
    required this.allies,
    required this.enemies,
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.url,
  });

  List<String> films;
  List<String> shortFilms;
  List<String> tvShows;
  List<String> videoGames;
  List<String> parkAttractions;
  List<dynamic> allies;
  List<dynamic> enemies;
  int id;
  String name;
  String imageUrl;
  String url;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    films: List<String>.from(json["films"].map((x) => x)),
    shortFilms: List<String>.from(json["shortFilms"].map((x) => x)),
    tvShows: List<String>.from(json["tvShows"].map((x) => x)),
    videoGames: List<String>.from(json["videoGames"].map((x) => x)),
    parkAttractions: List<String>.from(json["parkAttractions"].map((x) => x)),
    allies: List<dynamic>.from(json["allies"].map((x) => x)),
    enemies: List<dynamic>.from(json["enemies"].map((x) => x)),
    id: json["_id"],
    name: json["name"],
    imageUrl: json["imageUrl"],
    url: json["url"],
  );

  Map<String, dynamic> toJson() => {
    "films": List<dynamic>.from(films.map((x) => x)),
    "shortFilms": List<dynamic>.from(shortFilms.map((x) => x)),
    "tvShows": List<dynamic>.from(tvShows.map((x) => x)),
    "videoGames": List<dynamic>.from(videoGames.map((x) => x)),
    "parkAttractions": List<dynamic>.from(parkAttractions.map((x) => x)),
    "allies": List<dynamic>.from(allies.map((x) => x)),
    "enemies": List<dynamic>.from(enemies.map((x) => x)),
    "_id": id,
    "name": name,
    "imageUrl": imageUrl,
    "url": url,
  };
}
