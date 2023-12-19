// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:riverpodproject/features/movies/model/movies_model/movies_model.dart';

class MovieDetailView extends StatelessWidget {
  const MovieDetailView({
    Key? key,
    required this.movie,
  }) : super(key: key);

  final MoviesModel movie;
  static String get routeName => 'movie/detail';
  static String get routeLocation => routeName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(movie.title ?? ''),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
        child: Card(
            color: Colors.green[50],
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 150,
                    width: MediaQuery.of(context).size.width,
                    child: Image.network(movie.poster ?? ''),
                  ),
                  const SizedBox(height: 20),
                  Text('Title:\n${movie.title ?? ''}'),
                  const SizedBox(height: 20),
                  Text('Plot:\n${movie.plot ?? ''}'),
                  const SizedBox(height: 20),
                  Text('Year:\n${movie.year ?? ''}'),
                  const SizedBox(height: 20),
                  const Text('Genre: \n'),
                  Wrap(
                    children: [
                      for (var genre in movie.genre ?? []) Text(genre + ' '),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Text('Type:\n${movie.type ?? ''}'),
                  const SizedBox(height: 20),
                  Text('Imdb Rating:\n ${movie.imdbRating ?? ''}'),
                ],
              ),
            )),
      ),
    );
  }
}
