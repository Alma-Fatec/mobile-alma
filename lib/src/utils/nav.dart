import 'package:flutter/material.dart';

push(BuildContext context, Widget widget) {
  return Navigator.push(
    context,
    MaterialPageRoute(builder: (context) {
      return widget;
    }),
  );
}

pushReplace(BuildContext context, Widget widget, {required bool replace}) {
  return Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) {
      return widget;
    }),
    result: replace,
  );
}
