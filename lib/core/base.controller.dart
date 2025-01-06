import 'package:get/get.dart';
import 'package:logger/logger.dart';

abstract class BaseController extends GetxController {
  Logger logger = Logger(
    printer: PrettyPrinter(
      methodCount: 2,
      dateTimeFormat: DateTimeFormat.dateAndTime,
      printEmojis: true,
    )
  );
}