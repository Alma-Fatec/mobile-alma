import 'package:alma/src/models/box/user_box.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  User({
    this.id,
    this.name,
    this.email,
    this.password,
    this.phone,
    this.cpf,
    this.socialName,
    this.isActive,
    this.updatedAt,
    this.createdAt,
    this.role,
  });

  String? id;
  String? name;
  String? email;
  String? password;
  String? phone;
  String? cpf;
  String? role;
  String? socialName;
  bool? isActive;
  String? updatedAt;
  String? createdAt;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  factory User.fromBox(UserBox box) => User(id: box.userId, name: box.name);

  Map<String, dynamic> toJson() => _$UserToJson(this);

  UserBox toBox() => UserBox(userId: id, name: name);
}
