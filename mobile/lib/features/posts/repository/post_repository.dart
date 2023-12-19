import 'dart:async';

import 'package:dio/dio.dart';
import 'package:riverpodproject/features/posts/model/posts_model/posts_model.dart';

import 'package:riverpodproject/features/posts/repository/post_client.dart';
import 'package:riverpodproject/services/dio_service.dart';

class PostsRepository {
  final PostsClient _postsClient = PostsClient(DioService(Dio()).dio);

  FutureOr<List<PostsModel>> getPosts() async {
    try {
      final response = await _postsClient.getPosts();
      return response;
    } catch (e) {
      // log(e.toString());
      rethrow;
    }
  }
}
