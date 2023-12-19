import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpodproject/features/posts/controller/posts_state.dart';
import 'package:riverpodproject/features/posts/repository/post_repository.dart';

final postsProvider = StateNotifierProvider<PostsController, PostState>(
    (ref) => PostsController()..getPosts());

class PostsController extends StateNotifier<PostState> {
  PostsController() : super(const PostState(posts: [], isLoading: false));

  final _postsRepository = PostsRepository();

  Future getPosts() async {
    state = state.copyWith(isLoading: true);
    try {
      final response = await _postsRepository.getPosts();
      if (response.isNotEmpty) {
        state = state.copyWith(posts: response, isLoading: false);
      }
    } catch (e) {
      state = state.copyWith(isLoading: false);
      // log(e.toString());
      rethrow;
    }
  }
}
