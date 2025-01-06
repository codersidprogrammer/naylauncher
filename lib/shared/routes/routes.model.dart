import 'package:get/get.dart';

class RoutesModel {
  final String namePath;
  final GetPageBuilder page;
  Bindings? bindings;

  RoutesModel({required this.namePath, required this.page});
}
