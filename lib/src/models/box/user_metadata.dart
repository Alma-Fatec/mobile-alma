import 'package:objectbox/objectbox.dart';

import '../user/user.dart';

@Entity()
class UserMetadata {
  UserMetadata({this.userId, this.currentBlockId});

  factory UserMetadata.fromUser(User user) => UserMetadata(userId: user.id!);

  int? id;
  String? userId;
  String? currentBlockId;
  String? lastClassId;
  int? lastAssignmentId;
}
