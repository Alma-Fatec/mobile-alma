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
  });

  int? id;
  int? classRoomId;
  String? name;
  String? description;
  int? order;
  String? cover;
}
