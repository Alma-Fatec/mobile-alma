import 'package:objectbox/objectbox.dart';

@Entity()
class OptionBox {
  OptionBox({
    this.id,
    this.text,
    this.file,
    this.isCorrect,
  });

  int? id;
  String? text;
  String? file;
  bool? isCorrect;
}