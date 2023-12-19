import 'dart:io';

import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';

class DioService {
  final Dio dio;

  DioService(this.dio) {
    (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (HttpClient client) {
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
      return client;
    };

    dio
      ..options.baseUrl = 'https://jsonplaceholder.typicode.com'
      // ..options.connectTimeout = 5000
      // ..options.receiveTimeout = 3000
      ..interceptors.add(LogInterceptor(requestBody: true, responseBody: true));
  }
}
