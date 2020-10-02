// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'movie_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$MovieDetailsEventTearOff {
  const _$MovieDetailsEventTearOff();

// ignore: unused_element
  _FetchMovieDetails fetchMovieDetails(int movie_id) {
    return _FetchMovieDetails(
      movie_id,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $MovieDetailsEvent = _$MovieDetailsEventTearOff();

/// @nodoc
mixin _$MovieDetailsEvent {
  int get movie_id;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetchMovieDetails(int movie_id),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchMovieDetails(int movie_id),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetchMovieDetails(_FetchMovieDetails value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchMovieDetails(_FetchMovieDetails value),
    @required Result orElse(),
  });

  $MovieDetailsEventCopyWith<MovieDetailsEvent> get copyWith;
}

/// @nodoc
abstract class $MovieDetailsEventCopyWith<$Res> {
  factory $MovieDetailsEventCopyWith(
          MovieDetailsEvent value, $Res Function(MovieDetailsEvent) then) =
      _$MovieDetailsEventCopyWithImpl<$Res>;
  $Res call({int movie_id});
}

/// @nodoc
class _$MovieDetailsEventCopyWithImpl<$Res>
    implements $MovieDetailsEventCopyWith<$Res> {
  _$MovieDetailsEventCopyWithImpl(this._value, this._then);

  final MovieDetailsEvent _value;
  // ignore: unused_field
  final $Res Function(MovieDetailsEvent) _then;

  @override
  $Res call({
    Object movie_id = freezed,
  }) {
    return _then(_value.copyWith(
      movie_id: movie_id == freezed ? _value.movie_id : movie_id as int,
    ));
  }
}

/// @nodoc
abstract class _$FetchMovieDetailsCopyWith<$Res>
    implements $MovieDetailsEventCopyWith<$Res> {
  factory _$FetchMovieDetailsCopyWith(
          _FetchMovieDetails value, $Res Function(_FetchMovieDetails) then) =
      __$FetchMovieDetailsCopyWithImpl<$Res>;
  @override
  $Res call({int movie_id});
}

/// @nodoc
class __$FetchMovieDetailsCopyWithImpl<$Res>
    extends _$MovieDetailsEventCopyWithImpl<$Res>
    implements _$FetchMovieDetailsCopyWith<$Res> {
  __$FetchMovieDetailsCopyWithImpl(
      _FetchMovieDetails _value, $Res Function(_FetchMovieDetails) _then)
      : super(_value, (v) => _then(v as _FetchMovieDetails));

  @override
  _FetchMovieDetails get _value => super._value as _FetchMovieDetails;

  @override
  $Res call({
    Object movie_id = freezed,
  }) {
    return _then(_FetchMovieDetails(
      movie_id == freezed ? _value.movie_id : movie_id as int,
    ));
  }
}

/// @nodoc
class _$_FetchMovieDetails implements _FetchMovieDetails {
  const _$_FetchMovieDetails(this.movie_id) : assert(movie_id != null);

  @override
  final int movie_id;

  @override
  String toString() {
    return 'MovieDetailsEvent.fetchMovieDetails(movie_id: $movie_id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FetchMovieDetails &&
            (identical(other.movie_id, movie_id) ||
                const DeepCollectionEquality()
                    .equals(other.movie_id, movie_id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(movie_id);

  @override
  _$FetchMovieDetailsCopyWith<_FetchMovieDetails> get copyWith =>
      __$FetchMovieDetailsCopyWithImpl<_FetchMovieDetails>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetchMovieDetails(int movie_id),
  }) {
    assert(fetchMovieDetails != null);
    return fetchMovieDetails(movie_id);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchMovieDetails(int movie_id),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchMovieDetails != null) {
      return fetchMovieDetails(movie_id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetchMovieDetails(_FetchMovieDetails value),
  }) {
    assert(fetchMovieDetails != null);
    return fetchMovieDetails(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchMovieDetails(_FetchMovieDetails value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchMovieDetails != null) {
      return fetchMovieDetails(this);
    }
    return orElse();
  }
}

abstract class _FetchMovieDetails implements MovieDetailsEvent {
  const factory _FetchMovieDetails(int movie_id) = _$_FetchMovieDetails;

  @override
  int get movie_id;
  @override
  _$FetchMovieDetailsCopyWith<_FetchMovieDetails> get copyWith;
}

/// @nodoc
class _$MovieDetailsStateTearOff {
  const _$MovieDetailsStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

// ignore: unused_element
  _LoadSuccess loadSuccess(Movie movie) {
    return _LoadSuccess(
      movie,
    );
  }

// ignore: unused_element
  _LoadFailure loadFailure(String message) {
    return _LoadFailure(
      message,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $MovieDetailsState = _$MovieDetailsStateTearOff();

/// @nodoc
mixin _$MovieDetailsState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(Movie movie),
    @required Result loadFailure(String message),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(Movie movie),
    Result loadFailure(String message),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $MovieDetailsStateCopyWith<$Res> {
  factory $MovieDetailsStateCopyWith(
          MovieDetailsState value, $Res Function(MovieDetailsState) then) =
      _$MovieDetailsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$MovieDetailsStateCopyWithImpl<$Res>
    implements $MovieDetailsStateCopyWith<$Res> {
  _$MovieDetailsStateCopyWithImpl(this._value, this._then);

  final MovieDetailsState _value;
  // ignore: unused_field
  final $Res Function(MovieDetailsState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$MovieDetailsStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'MovieDetailsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(Movie movie),
    @required Result loadFailure(String message),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(Movie movie),
    Result loadFailure(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements MovieDetailsState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(
          _LoadInProgress value, $Res Function(_LoadInProgress) then) =
      __$LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadInProgressCopyWithImpl<$Res>
    extends _$MovieDetailsStateCopyWithImpl<$Res>
    implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(
      _LoadInProgress _value, $Res Function(_LoadInProgress) _then)
      : super(_value, (v) => _then(v as _LoadInProgress));

  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;
}

/// @nodoc
class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'MovieDetailsState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(Movie movie),
    @required Result loadFailure(String message),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(Movie movie),
    Result loadFailure(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements MovieDetailsState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({Movie movie});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$MovieDetailsStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object movie = freezed,
  }) {
    return _then(_LoadSuccess(
      movie == freezed ? _value.movie : movie as Movie,
    ));
  }
}

/// @nodoc
class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.movie) : assert(movie != null);

  @override
  final Movie movie;

  @override
  String toString() {
    return 'MovieDetailsState.loadSuccess(movie: $movie)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.movie, movie) ||
                const DeepCollectionEquality().equals(other.movie, movie)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(movie);

  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(Movie movie),
    @required Result loadFailure(String message),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(movie);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(Movie movie),
    Result loadFailure(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(movie);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements MovieDetailsState {
  const factory _LoadSuccess(Movie movie) = _$_LoadSuccess;

  Movie get movie;
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$MovieDetailsStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(_LoadFailure(
      message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.message) : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'MovieDetailsState.loadFailure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailure &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(Movie movie),
    @required Result loadFailure(String message),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(Movie movie),
    Result loadFailure(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements MovieDetailsState {
  const factory _LoadFailure(String message) = _$_LoadFailure;

  String get message;
  _$LoadFailureCopyWith<_LoadFailure> get copyWith;
}
