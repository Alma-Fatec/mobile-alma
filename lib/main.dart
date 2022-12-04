import 'package:alma/alma_app.dart';
import 'package:alma/src/utils/objectbox.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final directory = await getApplicationDocumentsDirectory();
  ObjectBoxProvider.get().init(directory.path);

  runApp(const AlmaApp());
}
