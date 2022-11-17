// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'class_block.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClassBlock _$ClassBlockFromJson(Map<String, dynamic> json) => ClassBlock(
      id: json['id'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      cover: json['cover'] as String?,
      createdAt: json['createdAt'] as String?,
      createdBy: json['created_by'] as String?,
      users: (json['users'] as List<dynamic>?)
          ?.map((e) => User.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ClassBlockToJson(ClassBlock instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'cover': instance.cover,
      'createdAt': instance.createdAt,
      'created_by': instance.createdBy,
      'users': instance.users,
    };
