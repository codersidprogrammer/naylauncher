import 'package:get/get.dart';
import 'package:naylauncher/core/base.controller.dart';
import 'package:naylauncher/modules/movies/movie.model.dart';
import 'package:naylauncher/modules/movies/movie.service.dart';
import 'package:naylauncher/modules/tmdb/get-movies.service.dart';


class UIHomeController extends BaseController {

  final TmdbMediaHttpService service = TmdbMediaHttpService();
  final dataResponse = TmdbApiResponse(page: 1, results: []).obs;

  final movieDiscoverData = List<MovieModel>.empty(growable: true).obs;
  final MovieService movieService = MovieService();

  @override
  void onInit() async {
    final movieResponse = await movieService.getDiscover();
    movieDiscoverData.value = movieResponse;

    final res = await service.getSimiliarMovies(1, 746036);
    dataResponse.value = res;
  }
}
