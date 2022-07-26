import 'package:json_annotation/json_annotation.dart';
part 'User.g.dart';

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
  });

  String? id;
  String? name;
  String? email;
  String? password;
  String? phone;
  String? cpf;

  @JsonKey(name: "social_name")
  String? socialName;

  @JsonKey(name: "is_active", defaultValue: true)
  bool? isActive;

  String? updatedAt;
  String? createdAt;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}
