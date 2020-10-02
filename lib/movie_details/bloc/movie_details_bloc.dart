import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:themoviedb_repository/themoviedb_repository.dart';
import 'package:themoviez/core/get_logger.dart';

import '../../movie/models/models.dart';

part 'movie_details_bloc.freezed.dart';
part 'movie_details_event.dart';
part 'movie_details_state.dart';

final log = getLogger('MovieDetailsBloc');

class MovieDetailsBloc
    extends HydratedBloc<MovieDetailsEvent, MovieDetailsState> {
  MovieDetailsBloc(TheMovieDBRepository repository)
      : assert(repository != null),
        _repository = repository,
        super(_Initial());

  final TheMovieDBRepository _repository;

  @override
  Future<void> clear() {
    log.w('clear() the cache');
    return super.clear();
  }

  @override
  MovieDetailsState fromJson(Map<String, dynamic> json) {
    log.v('fromJson was called');
    log.v(json.keys);
    log.v(json.values.runtimeType);

    try {
      final rawData = json['movie'];
      final movie = Movie.fromJson(rawData as Map<String, dynamic>);
      return _LoadSuccess(movie);
    } catch (_) {
      return null;
    }
  }

  @override
  Map<String, dynamic> toJson(MovieDetailsState state) {
    log.v('toJson was called');
    log.v(state.runtimeType);

    return state.maybeWhen(
      loadSuccess: (Movie movie) {
        log.v('${movie.runtimeType}toJson 007');
        return {'movie': movie};
      },
      orElse: () => null,
    );
  }

  @override
  Stream<MovieDetailsState> mapEventToState(MovieDetailsEvent gEvent) async* {
    yield* gEvent.map(
      fetchMovieDetails: (event) => _fetchMovieDetailsToState(event, state),
    );
  }

  Stream<MovieDetailsState> _fetchMovieDetailsToState(
    _FetchMovieDetails event,
    MovieDetailsState state,
  ) async* {
    /*
    yield* state.maybeWhen(
      loadSuccess: (Movie movie) async* {
        if (movie != null) {
          yield _LoadSuccess(movie);
          log.w('${movie.title} from cache 007');
          log.w('load movie from cache 007');
        }
      },
      orElse: () async* {
        log.w('orElse was called 007');
        log.w('load movie from repository 007');

        yield _LoadInProgress();
        final res = await _repository.fetchMovieDetails(event.movie_id);
        yield* res.when(
          success: (data) async* {
            yield _LoadSuccess(Movie.fromJson(data.toJson()));
          },
          failure: (error) async* {
            yield _LoadFailure(NetworkExceptions.getErrorMessage(error));
          },
        );
      },
    );
*/

    yield _LoadInProgress();
    final res = await _repository.fetchMovieDetails(event.movie_id);

    yield* res.when(
      success: (data) async* {
        final movie = Movie.fromJson(data.toJson());

        yield _LoadSuccess(movie);
      },
      failure: (error) async* {
        yield _LoadFailure(NetworkExceptions.getErrorMessage(error));
      },
    );
  }
}
