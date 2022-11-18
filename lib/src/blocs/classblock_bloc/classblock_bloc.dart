import 'package:alma/src/models/models.dart';
import 'package:alma/src/services/classblock_service.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'classblock_event.dart';
part 'classblock_state.dart';
part 'classblock_bloc.freezed.dart';

class ClassBlockBloc extends Bloc<ClassblockEvent, ClassblockState> {
  ClassBlockBloc({
    required this.classblockService,
  }) : super(const ClassblockState.initial()) {
    on<ClassblockEvent>(_onEvent);
  }

  final ClassblockService classblockService;

  void _onEvent(ClassblockEvent event, Emitter<ClassblockState> emit) async {
    if (event is LoadClassblock) {
      await getClassBlockByStudent(emit);
    }
  }

  Future<void> getClassBlockByStudent(Emitter<ClassblockState> emit) async {
    try {
      ClassBlock classBlock = (await classblockService.getAllClassBlock())[0];
      emit(Loaded(classBlock));
    } catch (e) {
      emit(const Error('Falha ao recuperar bloco de aula'));
    }
  }

  Future<void> _mapClassBlockByBlockId(LoadClassroomByBlockId event, Emitter<ClassblockState> emit) async {
    try {
      ClassBlock classBlock = (await classblockService.getAllClassBlock())[0];
      emit(Loaded(classBlock));
    } catch (e) {
      emit(const Error('Falha ao recuperar bloco de aula'));
    }
  }
}
