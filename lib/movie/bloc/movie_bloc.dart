import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:themoviedb_repository/themoviedb_repository.dart';
import 'package:themoviez/core/get_logger.dart';

import '../models/models.dart';

part 'movie_bloc.freezed.dart';
part 'movie_event.dart';
part 'movie_state.dart';

final log = getLogger('MovieBloc');

class MovieBloc extends HydratedBloc<MovieEvent, MovieState> {
  MovieBloc({
    @required TheMovieDBRepository repository,
  })  : assert(repository != null),
        _repository = repository,
        super(const _Initial());

  final TheMovieDBRepository _repository;

  @override
  Future<void> clear() {
    log.w('clear() the cache');
    return super.clear();
  }

  @override
  MovieState fromJson(Map<String, dynamic> json) {
    log.v('fromJson was called');
    log.v(json.keys);
    log.v(json.values.runtimeType);
    try {
      final results = json['movies'] as List<dynamic>;
      final movies = results.map((e) => Movie.fromJson(json)).toList();
      return _LoadSuccess(movies);
    } catch (_) {
      return null;
    }
  }

  @override
  Map<String, dynamic> toJson(MovieState state) {
    log.v('toJson was called');
    log.v(state.runtimeType);
    return state.maybeWhen(
      loadSuccess: (List<Movie> movies) {
        log.v('${movies.runtimeType}toJson 007');
        return {'movies': movies};
      },
      orElse: () => null,
    );
  }

  @override
  Stream<MovieState> mapEventToState(MovieEvent gEvent) async* {
    yield* gEvent.map(
      fetchMovie: (event) => _fetchMovieToState(
        event,
        state,
      ),
    );
  }

  Stream<MovieState> _fetchMovieToState(
    _FetchMovie event,
    MovieState state,
  ) async* {
    yield const _LoadInProgress();
    final results = await _repository.fetchMovie();
    yield* results.when(
      success: (data) async* {
        final movies = data.map((e) {
          return Movie.fromJson(e.toJson());
        }).toList();
        yield _LoadSuccess(movies);
      },
      failure: (error) async* {
        yield _LoadFailure(NetworkExceptions.getErrorMessage(error));
      },
    );
  }
}
