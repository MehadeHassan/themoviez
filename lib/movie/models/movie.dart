import 'package:json_annotation/json_annotation.dart';

part 'movie.g.dart';

@JsonSerializable()
class Movie {
  const Movie({
    this.id,
    this.title,
    this.overview,
    this.poster_path,
  });

  factory Movie.fromJson(Map<String, dynamic> json) =>
      _$MovieFromJson(json);

  final int id;
  final String overview;
  final String poster_path;
  final String title;

  Map<String, dynamic> toJson() => _$MovieToJson(this);
}
