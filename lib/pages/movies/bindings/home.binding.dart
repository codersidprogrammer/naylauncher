import 'package:get/get.dart';

import '../components/widgets/appbar/appbar.widget.controller.dart';
import '../controllers/ui-movies.controller.dart';

class MoviesBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(MoviesAppbarWidgetController());
    Get.put(UIMoviesController());
  }
}
