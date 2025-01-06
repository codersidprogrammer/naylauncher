import 'package:dio/dio.dart';
class TmdbModel {
  final bool adult;
  final String backdropPath;
  final List<int> genreIds;
  final int id;
  final String originalLanguage;
  final String originalTitle;
  final String overview;
  final double popularity;
  final String posterPath;
  final DateTime releaseDate;
  final String title;
  final bool video;
  final double voteAverage;
  final int voteCount;

  TmdbModel({
    required this.adult,
    required this.backdropPath,
    required this.genreIds,
    required this.id,
    required this.originalLanguage,
    required this.originalTitle,
    required this.overview,
    required this.popularity,
    required this.posterPath,
    required this.releaseDate,
    required this.title,
    required this.video,
    required this.voteAverage,
    required this.voteCount,
  });

  factory TmdbModel.fromJson(Map<String, dynamic> json) {
    return TmdbModel(
      adult: json['adult'],
      backdropPath: json['backdrop_path'],
      genreIds: List<int>.from(json['genre_ids']),
      id: json['id'],
      originalLanguage: json['original_language'],
      originalTitle: json['original_title'],
      overview: json['overview'],
      popularity: json['popularity'].toDouble(),
      posterPath: json['poster_path'],
      releaseDate: DateTime.parse(json['release_date']),
      title: json['title'],
      video: json['video'],
      voteAverage: json['vote_average'].toDouble(),
      voteCount: json['vote_count'],
    );
  }
}

class TmdbApiResponse {
  // Define the structure based on the expected response from the TMDB API
  // Example fields:
  final int page;
  final List<TmdbModel> results;

  TmdbApiResponse({required this.page, required this.results});

  factory TmdbApiResponse.fromJson(Map<String, dynamic> json) {
    return TmdbApiResponse(
      page: json['page'],
      results:(json['results'] as List)
          .map((movie) => TmdbModel.fromJson(movie))
          .toList(),
    );
  }
}

class TmdbMediaHttpService {
  final Dio _dio;
  final String _baseUrlApi = 'https://api.themoviedb.org/3';
  final String _apiKey = 'bbea4576887e6b988a67adc4700d2eb4';

  TmdbMediaHttpService()
      : _dio = Dio(
    BaseOptions(
      headers: {'accept': 'application/json'},
      queryParameters: {'api_key': 'bbea4576887e6b988a67adc4700d2eb4'},
    ),
  );

  Future<TmdbApiResponse> getSimiliarMovies(int page, int id) async {
    final response = await _dio.get(
      '$_baseUrlApi/movie/$id/similar',
      queryParameters: {
        'language': 'en-US',
        'page': page,
      },
    );
    return TmdbApiResponse.fromJson(response.data);
  }

  Future<TmdbApiResponse> getTopRatedMovies(int page) async {
    final response = await _dio.get(
      '$_baseUrlApi/movie/top_rated',
      queryParameters: {
        'language': 'en-US',
        'page': page,
      },
    );
    return TmdbApiResponse.fromJson(response.data);
  }

  Future<TmdbApiResponse> getMoviesFromDiscover(int page) async {
    final response = await _dio.get(
      '$_baseUrlApi/discover/movie',
      queryParameters: {
        'include_adult': false,
        'include_video': false,
        'language': 'en-US',
        'sort_by': 'popularity.desc',
        'page': page,
      },
    );
    return TmdbApiResponse.fromJson(response.data);
  }
}
