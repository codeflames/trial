// ignore_for_file: depend_on_referenced_packages

import 'package:equatable/equatable.dart';
import 'package:riverpodproject/features/movies/model/movies_model/movies_model.dart';

class MovieState extends Equatable {
  final List<MoviesModel> movies;
  final bool isLoading;
  const MovieState({
    required this.movies,
    required this.isLoading,
  });

  @override
  List<Object> get props => [movies];

  MovieState copyWith({
    List<MoviesModel>? movies,
    bool? isLoading,
  }) {
    return MovieState(
      isLoading: isLoading ?? this.isLoading,
      movies: movies ?? this.movies,
    );
  }

  @override
  bool get stringify => true;
}
