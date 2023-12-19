// ignore_for_file: depend_on_referenced_packages

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'movies_model.g.dart';

@JsonSerializable()
class MoviesModel extends Equatable {
  @JsonKey(name: 'Title')
  final String? title;
  @JsonKey(name: 'Year')
  final String? year;
  @JsonKey(name: 'Genre')
  final List<String>? genre;
  @JsonKey(name: 'Plot')
  final String? plot;
  @JsonKey(name: 'Poster')
  final String? poster;
  final String? imdbRating;
  @JsonKey(name: 'Type')
  final String? type;

  const MoviesModel({
    this.title,
    this.year,
    this.genre,
    this.plot,
    this.poster,
    this.imdbRating,
    this.type,
  });

  factory MoviesModel.fromJson(Map<String, dynamic> json) {
    return _$MoviesModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$MoviesModelToJson(this);

  MoviesModel copyWith({
    String? title,
    String? year,
    List<String>? genre,
    String? plot,
    String? poster,
    String? imdbRating,
    String? type,
  }) {
    return MoviesModel(
      title: title ?? this.title,
      year: year ?? this.year,
      genre: genre ?? this.genre,
      plot: plot ?? this.plot,
      poster: poster ?? this.poster,
      imdbRating: imdbRating ?? this.imdbRating,
      type: type ?? this.type,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      title,
      year,
      genre,
      plot,
      poster,
      imdbRating,
      type,
    ];
  }
}
