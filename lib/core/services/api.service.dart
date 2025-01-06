import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

import '../interceptor/logger-dio.interceptor.dart';

abstract class ApiService {
  Logger logger = Logger(
      printer: PrettyPrinter(
    methodCount: 2,
    dateTimeFormat: DateTimeFormat.dateAndTime,
    printEmojis: true,
  ));

  Dio instance([String baseUrl = 'http://192.168.1.32:8000/v2']) {
    final options = BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: const Duration(seconds: 50),
      contentType: Headers.jsonContentType,
      responseType: ResponseType.json,
      receiveTimeout: const Duration(seconds: 30),
    );
    return Dio(options)..interceptors.addAll([LoggerInterceptor()]);
  }

  Dio instanceAsForm([String baseUrl = 'http://192.168.1.32:8000/v2']) {
    final options = BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: const Duration(seconds: 50),
      contentType: Headers.formUrlEncodedContentType,
      responseType: ResponseType.json,
      receiveTimeout: const Duration(seconds: 30),
    );
    return Dio(options)..interceptors.addAll([LoggerInterceptor()]);
  }

  /// TransformDto will get Data on field "data" from API
  U transformDto<U>(Response<dynamic> response) {
    final U result = response.data['data'] as U;
    return result;
  }

  U transformGeneralDto<U>(Response<dynamic> response) {
    final U result = response.data as U;
    return result;
  }

  U transformSpecifiedDto<U>(Response<dynamic> response, String field) {
    final U result = response.data[field] as U;
    return result;
  }
}
