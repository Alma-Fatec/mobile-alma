import 'package:alma/src/models/box/option_box.dart';
import 'package:json_annotation/json_annotation.dart';

part 'options.g.dart';

@JsonSerializable()
class Option {
  Option({this.text, this.file, this.isCorrect});

  factory Option.fromJson(Map<String, dynamic> json) => _$OptionFromJson(json);

  factory Option.fromBox(OptionBox box) => Option(text: box.text, file: box.file, isCorrect: box.isCorrect);

  Map<String, dynamic> toJson() => _$OptionToJson(this);

  OptionBox toBox() => OptionBox(text: text, file: file, isCorrect: isCorrect);

  final String? text;
  final String? file;
  final bool? isCorrect;
}