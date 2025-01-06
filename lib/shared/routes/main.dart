import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:naylauncher/pages/home/main.dart';
import 'package:naylauncher/pages/movies/main.dart';
import 'package:get/get.dart';
import 'package:naylauncher/pages/movies/views/player.view.dart';

class MainRoutes {
  static const String initialRoute = 'home';
  static List<GetPage> routes = [
    GetPage(name: "/home", page: () => HomeView(), binding: HomeBinding(), transition: Transition.fadeIn, transitionDuration: Duration(milliseconds: 500)),
    GetPage(name: "/movies", page: () => DetailView(), binding: MoviesBinding(), transition: Transition.cupertinoDialog, transitionDuration: const Duration(milliseconds: 500)),
    GetPage(name: "/movies/play", page: () => PlayerView(), binding: MoviesBinding(), transition: Transition.cupertinoDialog, transitionDuration: const Duration(milliseconds: 500)),
  ];
}
