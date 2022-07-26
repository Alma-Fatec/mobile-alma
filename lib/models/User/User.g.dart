// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'User.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      id: json['id'] as String?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
      phone: json['phone'] as String?,
      cpf: json['cpf'] as String?,
      socialName: json['social_name'] as String?,
      isActive: json['is_active'] as bool? ?? true,
      updatedAt: json['updatedAt'] as String?,
      createdAt: json['createdAt'] as String?,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'password': instance.password,
      'phone': instance.phone,
      'cpf': instance.cpf,
      'social_name': instance.socialName,
      'is_active': instance.isActive,
      'updatedAt': instance.updatedAt,
      'createdAt': instance.createdAt,
    };
