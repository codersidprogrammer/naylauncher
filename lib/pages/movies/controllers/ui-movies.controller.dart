import 'package:get/get.dart';
import 'package:naylauncher/core/base.controller.dart';
import 'package:naylauncher/modules/movies/movie.model.dart';
import 'package:naylauncher/modules/movies/movie.service.dart';

class UIMoviesController extends BaseController {
  final movieDetailData = MovieModel.withParams().obs;
  final MovieService movieService = MovieService();
  final moviePosterUrl = ''.obs;
  final movieBackdropUrl = ''.obs;
  final isLoading = false.obs;

  late String oblixId;
  late String type;

  @override
  void onInit() async {
    final arguments = Get.arguments as Map<String, dynamic>;
    oblixId = arguments['oblixId'];
    type = arguments['type'];
    await onGetDetail(type, oblixId);
  }

  Future<void> onGetDetail(String type, String oblixId) async {
    try {
      isLoading.value = true;

      final movieResponse = await movieService.getDetail(type, oblixId);
      print(movieResponse);
      print(movieResponse.title);
      movieDetailData.value = movieResponse;
      moviePosterUrl.value = movieService.getImageUrl(movieResponse.id, 'poster');
      movieBackdropUrl.value = movieService.getImageUrl(movieResponse.id, 'backdrop');
    } catch (e) {
      isLoading.value = false;
    } finally {
      if (isLoading.value) {
        isLoading.value = false;
      }
    }
  }
}
