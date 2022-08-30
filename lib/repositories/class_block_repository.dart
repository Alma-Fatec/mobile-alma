import 'dart:convert';

import 'package:alma/models/class_block/class_block.dart';
import 'package:flutter/services.dart';

class ClassBlockRepository {
  Future<ClassBlock> getClassBlockByStudent() async {
    try {
      String data = await rootBundle.loadString("assets/mock/get_bloco_aula_por_aluno.json");
      return ClassBlock.fromJson(jsonDecode(data));
    } catch (e) {
      rethrow;
    }
  }
}