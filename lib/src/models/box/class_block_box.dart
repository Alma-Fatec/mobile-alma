import 'package:objectbox/objectbox.dart';

@Entity()
class ClassBlockBox {
  ClassBlockBox({
    this.id,
    this.classBlockId,
    this.title,
    this.description,
    this.cover,
  });

  int? id;
  String? classBlockId;
  String? title;
  String? description;
  String? cover;
}
