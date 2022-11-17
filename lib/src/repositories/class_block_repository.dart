import 'dart:convert';

import 'package:alma/src/api/alma_api.dart';
import 'package:alma/src/models/models.dart';
import 'package:flutter/services.dart';

class ClassBlockRepository {
  ClassBlockRepository({required this.api});

  final AlmaApi api;

  Future<ClassBlock> getClassBlockByStudent() async {
    try {
      String data = await rootBundle.loadString("assets/mock/get_bloco_aula_por_aluno.json");
      return ClassBlock.fromJson(jsonDecode(data));
    } catch (e) {
      rethrow;
    }
  }

  Future<List<ClassBlock>> getAllClassBlock() async {
    return (await api.getAllClassesBlockPaginated(const PaginatedRequest(page: 1, limit: 1))).data!;
  }
}
