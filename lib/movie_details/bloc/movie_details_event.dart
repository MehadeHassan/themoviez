part of 'movie_details_bloc.dart';

@freezed
abstract class MovieDetailsEvent with _$MovieDetailsEvent {
  const factory MovieDetailsEvent.fetchMovieDetails(int movie_id) = _FetchMovieDetails;
}
