import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpodproject/features/posts/model/posts_model/posts_model.dart';

part 'post_client.g.dart';

@RestApi()
abstract class PostsClient {
  factory PostsClient(Dio dio, {String? baseUrl}) = _PostsClient;

  @GET("/posts")
  Future<List<PostsModel>> getPosts();
}
