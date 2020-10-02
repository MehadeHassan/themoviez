part of 'movie_bloc.dart';

@freezed
abstract class MovieState with _$MovieState {
  const factory MovieState.initial() = _Initial;
  const factory MovieState.loadInProgress() = _LoadInProgress;
  const factory MovieState.loadSuccess(List<Movie> movies) = _LoadSuccess;
  const factory MovieState.loadFailure(String message) = _LoadFailure;
}
