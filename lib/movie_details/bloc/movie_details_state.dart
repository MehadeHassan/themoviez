part of 'movie_details_bloc.dart';

@freezed
abstract class MovieDetailsState with _$MovieDetailsState {
  const factory MovieDetailsState.initial() = _Initial;
  const factory MovieDetailsState.loadInProgress() = _LoadInProgress;
  const factory MovieDetailsState.loadSuccess(Movie movie) = _LoadSuccess;
  const factory MovieDetailsState.loadFailure(String message) = _LoadFailure;

}