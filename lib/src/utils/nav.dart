import 'package:alma/src/models/assignment/assignment.dart';
import 'package:alma/src/models/classroom/classroom.dart';
import 'package:alma/src/pages/pages.dart';
import 'package:flutter/material.dart';

abstract class Navigation {
  static Future<T?> toClasses<T extends Object>(BuildContext context, ClassRoom classRoom) async {
    final Route<T> pageRoute = MaterialPageRoute(
      settings: RouteSettings(name: ClassroomPage.route, arguments: classRoom),
      builder: (_) => ClassroomPage(classRoom: classRoom),
    );

    return Navigator.push(context, pageRoute);
  }

  static Future<T?> toAssignment<T extends Object>(BuildContext context, Assignment assignment) async {
    final Route<T> pageRoute = MaterialPageRoute(
      settings: RouteSettings(name: AssignmentPage.route, arguments: assignment),
      builder: (_) => AssignmentPage(assignment: assignment),
    );

    return Navigator.push(context, pageRoute);
  }
}
