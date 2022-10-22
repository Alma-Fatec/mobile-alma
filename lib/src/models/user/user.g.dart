// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

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
      socialName: json['socialName'] as String?,
      isActive: json['isActive'] as bool?,
      updatedAt: json['updatedAt'] as String?,
      createdAt: json['createdAt'] as String?,
      role: json['role'] as String?,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'password': instance.password,
      'phone': instance.phone,
      'cpf': instance.cpf,
      'role': instance.role,
      'socialName': instance.socialName,
      'isActive': instance.isActive,
      'updatedAt': instance.updatedAt,
      'createdAt': instance.createdAt,
    };
