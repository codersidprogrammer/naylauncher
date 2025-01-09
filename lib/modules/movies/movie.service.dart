import 'package:naylauncher/core/services/api.service.dart';
import 'package:naylauncher/modules/movies/movie.model.dart';

class MovieService extends ApiService {
  Future<List<MovieModel>> getDiscover() async {
    final response = await instance().get('/movie/dummy/all?type=discover');
    final result = transformDto<List<dynamic>>(response);
    return result.map((dto) => MovieModel.fromJson(dto)).toList();
  }

  Future<MovieModel> getDetail(String type, String oblixId) async {
    final response = await instance().get('/movie/$type/detail?oblix_id=$oblixId');
    final result = transformDto<dynamic>(response);
    return MovieModel.fromJson(result);
  }

  String getImageUrl(int tmdbId, String type) {
    return 'http://192.168.1.6:8000/cdn/${tmdbId}_$type.jpg';
  }
}