import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:themoviedb_repository/themoviedb_repository.dart';

import '../bloc/movie_details_bloc.dart';

class MovieDetailsPage extends StatelessWidget {
  const MovieDetailsPage._({Key key}) : super(key: key);

  static Route route({@required int movie_id}) {
    return MaterialPageRoute<void>(
      builder: (_) => BlocProvider(
        create: (context) => MovieDetailsBloc(
          context.repository<TheMovieDBRepository>(),
        )..add(MovieDetailsEvent.fetchMovieDetails(movie_id)),
        child: const MovieDetailsPage._(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: BlocBuilder<MovieDetailsBloc, MovieDetailsState>(
          builder: (context, state) {
            return state.when(
              initial: () => const Text('Initial'),
              loadInProgress: () => const CircularProgressIndicator(),
              loadSuccess: (movie) => Text(movie.overview),
              loadFailure: (message) => Text(message),
            );
          },
        ),
      ),
    );
  }
}
