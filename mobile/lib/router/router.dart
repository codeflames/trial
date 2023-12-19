import 'package:go_router/go_router.dart';
import 'package:riverpodproject/features/movies/model/movies_model/movies_model.dart';
import 'package:riverpodproject/features/movies/views/movie_detail_view.dart';
import 'package:riverpodproject/features/movies/views/movies_home_view.dart';
import 'package:riverpodproject/features/posts/views/posts_view.dart';

final GoRouter router = GoRouter(
  debugLogDiagnostics: true,
  // initialLocation: MoviesHome.routeLocation,
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => MoviesHome(),
      routes: <RouteBase>[
        GoRoute(
          path: MovieDetailView.routeLocation,
          name: MovieDetailView.routeName,
          builder: (context, state) =>
              MovieDetailView(movie: state.extra as MoviesModel),
          // name: 'movieDetail',
        ),
        GoRoute(
          path: PostsHome.routeLocation,
          name: PostsHome.routeName,
          builder: (context, state) => const PostsHome(),
        )
      ],
    ),
  ],
);
