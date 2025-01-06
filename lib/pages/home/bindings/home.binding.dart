import 'package:get/get.dart';

import '../components/widgets/appbar/appbar.widget.controller.dart';
import '../controllers/ui-home.controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(AppbarWidgetController());
    Get.put(UIHomeController());
  }
}
