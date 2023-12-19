import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:riverpodproject/features/movies/controller/movies_controller.dart';
import 'package:riverpodproject/features/movies/model/movies_model/movies_model.dart';

void main() {
  // ensureInitialized
  WidgetsFlutterBinding.ensureInitialized();

  group('MoviesController', () {
    final MoviesController moviesController = MoviesController();
    test('loadMovies', () async {
      // final moviesController = MoviesController();
      await moviesController.loadMovies();
      expect(moviesController.moviesList!.length, 3);
    });

    test('fetchMovie', () async {
      final fetchedMovieList = await moviesController.fetchMovie();
      final transformedMoviesList =
          fetchedMovieList.map((e) => MoviesModel.fromJson(e)).toList();
      expect(transformedMoviesList.length > 1, true);
    });

    test('filterMovies', () async {
      await moviesController.filterMovies('dog');
      expect(moviesController.filteredMoviesList?.length, 2);
    });
  });
}
