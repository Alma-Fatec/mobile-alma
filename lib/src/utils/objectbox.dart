import 'package:alma/objectbox.g.dart';
import 'package:alma/src/models/box/box.dart';

class ObjectBoxProvider {
  factory ObjectBoxProvider.get() => _instance;

  ObjectBoxProvider._private();

  static final ObjectBoxProvider _instance = ObjectBoxProvider._private();

  late Store _store;

  bool _initialised = false;

  void init(String path) {
    if (!_initialised) {
      _initialised = true;
      final directory = '$path/cache';
      if (Store.isOpen(directory)) {
        _store = Store.attach(getObjectBoxModel(), directory);
        return;
      }
      _store = Store(getObjectBoxModel(), directory: directory);
    }
  }

  Box<UserBox> getUserBox() => Box<UserBox>(_store);

  Box<ClassBlockBox> getClassBlockBox() => Box<ClassBlockBox>(_store);

  Box<ClassRoomBox> getClassRoomBox() => Box<ClassRoomBox>(_store);

  Box<AssignmentBox> getAssignmentBox() => Box<AssignmentBox>(_store);

  Box<UserMetadata> getUserMetadata() => Box<UserMetadata>(_store);

  void removeAll() {
    getUserBox().removeAll();
    getClassBlockBox().removeAll();
    getClassRoomBox().removeAll();
    getAssignmentBox().removeAll();
    getUserMetadata().removeAll();
  }
}
