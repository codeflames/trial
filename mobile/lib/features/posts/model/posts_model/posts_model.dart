// ignore_for_file: depend_on_referenced_packages

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'posts_model.g.dart';

@JsonSerializable()
class PostsModel extends Equatable {
  final int? userId;
  final int? id;
  final String? title;
  final String? body;

  const PostsModel({this.userId, this.id, this.title, this.body});

  factory PostsModel.fromJson(Map<String, dynamic> json) {
    return _$PostsModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PostsModelToJson(this);

  PostsModel copyWith({
    int? userId,
    int? id,
    String? title,
    String? body,
  }) {
    return PostsModel(
      userId: userId ?? this.userId,
      id: id ?? this.id,
      title: title ?? this.title,
      body: body ?? this.body,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [userId, id, title, body];
}
