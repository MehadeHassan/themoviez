import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../movie_details/view/movie_details_page.dart';
import '../bloc/movie_bloc.dart';
import '../models/models.dart';

class MoviePage extends StatelessWidget {
  const MoviePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SizedBox(
        height: MediaQuery.of(context).size.height * 0.3,
        child: Center(
          child: BlocBuilder<MovieBloc, MovieState>(
            builder: (context, state) {
              return state.when(
                initial: () => const Text('Initial'),
                loadInProgress: () => const CircularProgressIndicator(),
                loadSuccess: (List<Movie> movies) => ViewOverview(
                  movies: movies,
                ),
                loadFailure: (String message) => Text(message),
              );
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.bloc<MovieBloc>()..clear(),
      ),
    );
  }
}

class ViewOverview extends StatelessWidget {
  const ViewOverview({
    Key key,
    this.movies,
  }) : super(key: key);

  final List<Movie> movies;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.all(8),
      physics: const BouncingScrollPhysics(),
      itemCount: movies.length,
      itemBuilder: (BuildContext context, int index) {
        const String url = 'https://image.tmdb.org/t/p/original';
        final String image = movies[index].poster_path;

        return GestureDetector(
          onTap: () {
            Navigator.of(context)
                .push(MovieDetailsPage.route(movie_id: movies[index].id));
          },
          child: Card(
            margin: const EdgeInsets.all(10),
            child: Container(
              height: 250,
              width: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    url + image,
                  ),
                  fit: BoxFit.fill,
                ),
              ),
              child: Text(movies[index].title),
            ),
          ),
        );
      },
    );
  }
}
