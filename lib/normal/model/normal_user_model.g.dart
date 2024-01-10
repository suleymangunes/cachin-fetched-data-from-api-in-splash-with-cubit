// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'normal_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NormalUserModel _$NormalUserModelFromJson(Map<String, dynamic> json) =>
    NormalUserModel(
      createdAt: json['createdAt'] as String?,
      name: json['name'] as String?,
      avatar: json['avatar'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$NormalUserModelToJson(NormalUserModel instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt,
      'name': instance.name,
      'avatar': instance.avatar,
      'id': instance.id,
    };
