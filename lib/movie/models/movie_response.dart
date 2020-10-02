import 'package:json_annotation/json_annotation.dart';

import 'models.dart';

part 'movie_response.g.dart';

@JsonSerializable()
class MovieResponse {
  const MovieResponse({
    this.page,
    this.total_results,
    this.total_pages,
    this.results,
  });

  factory MovieResponse.fromJson(Map<String, dynamic> json) =>
      _$MovieResponseFromJson(json);

  final int page;
  final List<Movie> results;
  final int total_pages;
  final int total_results;

  Map<String, dynamic> toJson() => _$MovieResponseToJson(this);
}
