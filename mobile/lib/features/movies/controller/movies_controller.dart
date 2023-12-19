// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpodproject/features/movies/controller/movie_state.dart';

import 'package:riverpodproject/features/movies/model/movies_model/movies_model.dart';

final moviesProvider = StateNotifierProvider<MoviesController, MovieState>(
    (ref) => MoviesController()..loadMovies());

class MoviesController extends StateNotifier<MovieState> {
  MoviesController() : super(const MovieState(movies: [], isLoading: false));

  List<MoviesModel>? moviesList = [];
  List<MoviesModel>? filteredMoviesList = [];

  /// load the movies from the json file
  ///
  loadMovies() async {
    state = state.copyWith(isLoading: true);

    final fetchedMovieList = await fetchMovie();

    final transformedMoviesList =
        fetchedMovieList.map((e) => MoviesModel.fromJson(e)).toList();
    moviesList = transformedMoviesList;
    // log(moviesList!.length.toString());

    state = state.copyWith(movies: moviesList, isLoading: false);
    // log('state: $state');
  }

  Future<List<dynamic>> fetchMovie({bool delay = true}) async {
    await Future.delayed(const Duration(seconds: 2));
    final moviesData = await rootBundle.loadString('data/movies.json');
    final moviesList = jsonDecode(moviesData) as List;
    return moviesList;
  }

  /// filter movies from the json file
  filterMovies(String filter) async {
    state = state.copyWith(isLoading: true);

    // log('state: $state');

    filteredMoviesList = moviesList
        ?.where((element) =>
            element.title?.toLowerCase().contains(filter.toLowerCase()) ??
            false)
        .toList();

    state = state.copyWith(movies: filteredMoviesList, isLoading: false);
  }
}
