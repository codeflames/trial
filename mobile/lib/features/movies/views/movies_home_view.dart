import 'package:bodsquare_sdk/bodsquare_sdk.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpodproject/features/movies/controller/movies_controller.dart';
import 'package:riverpodproject/features/movies/model/movies_model/movies_model.dart';
import 'package:riverpodproject/features/movies/views/movie_detail_view.dart';
import 'package:riverpodproject/features/posts/views/posts_view.dart';

class MoviesHome extends ConsumerWidget {
  MoviesHome({super.key});

  final BodsquareSdk bodsquareSdk = BodsquareSdk();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<MoviesModel> movies = ref.watch(moviesProvider).movies;
    bool isLoading = ref.watch(moviesProvider).isLoading;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Pod Demo'),
        actions: [
          IconButton(
            icon: const Icon(Icons.move_up),
            onPressed: () {
              context.goNamed(
                PostsHome.routeName,
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Search',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                ref.read(moviesProvider.notifier).filterMovies(value);
              },
            ),
            Expanded(
              child: isLoading
                  ? const Center(child: CircularProgressIndicator())
                  : ListView.builder(
                      padding: const EdgeInsets.symmetric(
                          vertical: 24, horizontal: 16),
                      itemCount: movies.length,
                      itemBuilder: (context, index) {
                        return Card(
                          color: Colors.green[50],
                          child: ListTile(
                            leading: SizedBox(
                                height: 50,
                                width: 40,
                                child: Image.network(
                                    movies[index].poster.toString())),
                            title: Text(movies[index].title.toString()),
                            subtitle: Text(movies[index].plot.toString()),
                            onTap: () {
                              context.goNamed(MovieDetailView.routeName,
                                  extra: movies[index]);
                            },
                          ),
                        );
                      },
                    ),
            ),
            ElevatedButton(
                onPressed: (() {
                  bodsquareSdk.getChannels(
                      context: context,
                      email: 'yerekadonald+11@gmail.com',
                      userName: 'yerekadonald',
                      useProduction: false);
                }),
                child: const Text('Connect social media')),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
