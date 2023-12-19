// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movies_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MoviesModel _$MoviesModelFromJson(Map<String, dynamic> json) => MoviesModel(
      title: json['Title'] as String?,
      year: json['Year'] as String?,
      genre:
          (json['Genre'] as List<dynamic>?)?.map((e) => e as String).toList(),
      plot: json['Plot'] as String?,
      poster: json['Poster'] as String?,
      imdbRating: json['imdbRating'] as String?,
      type: json['Type'] as String?,
    );

Map<String, dynamic> _$MoviesModelToJson(MoviesModel instance) =>
    <String, dynamic>{
      'Title': instance.title,
      'Year': instance.year,
      'Genre': instance.genre,
      'Plot': instance.plot,
      'Poster': instance.poster,
      'imdbRating': instance.imdbRating,
      'Type': instance.type,
    };
