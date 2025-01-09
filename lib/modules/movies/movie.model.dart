import 'dart:convert';

MovieModel movieModelFromJson(String str) => MovieModel.fromJson(json.decode(str));

String movieModelToJson(MovieModel data) => json.encode(data.toJson());

class MovieModel {
  String oblixId;
  bool adult;
  String backdropPath;
  int id;
  String originalLanguage;
  String originalTitle;
  String overview;
  double popularity;
  String posterPath;
  String releaseDate;
  String title;
  double voteAverage;
  int voteCount;

  MovieModel({
    required this.oblixId,
    required this.adult,
    required this.backdropPath,
    required this.id,
    required this.originalLanguage,
    required this.originalTitle,
    required this.overview,
    required this.popularity,
    required this.posterPath,
    required this.releaseDate,
    required this.title,
    required this.voteAverage,
    required this.voteCount,
  });

  MovieModel.withParams({
    this.oblixId = '',
    this.adult = false,
    this.backdropPath = '',
    this.id = 0,
    this.originalLanguage = 'en',
    this.originalTitle = '',
    this.overview = '',
    this.popularity = 0.0,
    this.posterPath = '',
    this.title = '',
    this.voteAverage = 0.0,
    this.voteCount = 0,
    this.releaseDate = '2000-1-1',
  });

  factory MovieModel.fromJson(Map<String, dynamic> json) => MovieModel(
    oblixId: json["oblixId"],
    adult: json["adult"],
    backdropPath: json["backdrop_path"],
    id: json["id"],
    originalLanguage: json["original_language"],
    originalTitle: json["original_title"],
    overview: json["overview"],
    popularity: json["popularity"]?.toDouble(),
    posterPath: json["poster_path"],
    releaseDate: json["release_date"],
    title: json["title"],
    voteAverage: json["vote_average"]?.toDouble(),
    voteCount: json["vote_count"],
  );

  Map<String, dynamic> toJson() => {
    "oblixId": oblixId,
    "adult": adult,
    "backdrop_path": backdropPath,
    "id": id,
    "original_language": originalLanguage,
    "original_title": originalTitle,
    "overview": overview,
    "popularity": popularity,
    "poster_path": posterPath,
    "release_date": releaseDate,
    "title": title,
    "vote_average": voteAverage,
    "vote_count": voteCount,
  };
}