import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:themoviedb_repository/themoviedb_repository.dart';

import 'bloc_observer.dart';
import 'movie/bloc/movie_bloc.dart';
import 'movie/view/movie_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HydratedCubit.storage = await HydratedStorage.build();

  Bloc.observer = TheMoviezObserver();

  runApp(MyApp(
    repository: TheMovieDBRepository(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key key,
    @required TheMovieDBRepository repository,
  })  : assert(repository != null),
        _repository = repository,
        super(key: key);

  final TheMovieDBRepository _repository;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider<TheMovieDBRepository>.value(
      value: _repository,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: BlocProvider<MovieBloc>(
          create: (BuildContext context) => MovieBloc(
            repository: context.repository<TheMovieDBRepository>(),
          )..add(const MovieEvent.fetchMovie()),
          child: const MoviePage(),
        ),
      ),
    );
  }
}
