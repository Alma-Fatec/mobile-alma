import 'package:objectbox/objectbox.dart';

@Entity()
class UserBox {
  UserBox({
    this.id,
    this.userId,
    this.name,
  });

  int? id;
  String? userId;
  String? name;
}
