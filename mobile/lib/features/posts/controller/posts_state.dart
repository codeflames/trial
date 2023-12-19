// ignore: depend_on_referenced_packages
import 'package:equatable/equatable.dart';
import 'package:riverpodproject/features/posts/model/posts_model/posts_model.dart';

class PostState extends Equatable {
  final List<PostsModel> posts;
  final bool isLoading;
  const PostState({
    required this.posts,
    required this.isLoading,
  });

  @override
  List<Object> get props => [posts];

  PostState copyWith({
    List<PostsModel>? posts,
    bool? isLoading,
  }) {
    return PostState(
      isLoading: isLoading ?? this.isLoading,
      posts: posts ?? this.posts,
    );
  }

  @override
  bool get stringify => true;
}
