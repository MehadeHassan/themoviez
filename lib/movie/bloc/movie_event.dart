part of 'movie_bloc.dart';

@freezed
abstract class MovieEvent with _$MovieEvent {
  const factory MovieEvent.fetchMovie() = _FetchMovie;
}
