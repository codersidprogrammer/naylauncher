import 'package:get/get.dart';
import 'package:naylauncher/core/base.controller.dart';
import 'package:naylauncher/modules/tmdb/get-movies.service.dart';


class UIMoviesController extends BaseController {

  final TmdbMediaHttpService service = TmdbMediaHttpService();
  final dataResponse = TmdbApiResponse(page: 1, results: []).obs;

  @override
  void onInit() async {
    final res = await service.getSimiliarMovies(1, 746036);
    dataResponse.value = res;
  }
}
