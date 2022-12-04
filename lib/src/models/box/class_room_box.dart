import 'package:alma/src/models/box/box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ClassRoomBox {
  ClassRoomBox({
    this.id,
    this.classRoomId,
    this.name,
    this.description,
    this.order,
    this.cover,
    this.block,
  });

  int? id;
  int? classRoomId;
  String? name;
  String? description;
  int? order;
  String? cover;
  ClassBlockBox? block;
}
