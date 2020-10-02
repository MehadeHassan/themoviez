// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Movie _$MovieFromJson(Map<String, dynamic> json) {
  return Movie(
    id: json['id'] as int,
    title: json['title'] as String,
    overview: json['overview'] as String,
    poster_path: json['poster_path'] as String,
  );
}

Map<String, dynamic> _$MovieToJson(Movie instance) => <String, dynamic>{
      'id': instance.id,
      'overview': instance.overview,
      'poster_path': instance.poster_path,
      'title': instance.title,
    };
