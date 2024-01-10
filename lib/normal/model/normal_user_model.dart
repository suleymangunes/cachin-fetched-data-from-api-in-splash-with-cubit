import 'package:json_annotation/json_annotation.dart';

part 'normal_user_model.g.dart';

@JsonSerializable()
class NormalUserModel {
  final String? createdAt;
  final String? name;
  final String? avatar;
  final String? id;

  NormalUserModel({this.createdAt, this.name, this.avatar, this.id});

  factory NormalUserModel.fromJson(Map<String, dynamic> json) => _$NormalUserModelFromJson(json);

  Map<String, dynamic> toJson() => _$NormalUserModelToJson(this);
}
