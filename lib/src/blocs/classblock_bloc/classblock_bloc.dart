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
    if (event is LoadClassblockByUserId) {
      await getClassBlockByStudent(event, emit);
    } else if (event is LoadClassroomByBlockId) {
      await _mapClassBlockByBlockId(event, emit);
    }
  }

  Future<void> getClassBlockByStudent(LoadClassblockByUserId event, Emitter<ClassblockState> emit) async {
    try {
      List<ClassBlock> classBlock = await classblockService.getClassBlockByStudent(event.userId!);
      if (classBlock.isEmpty) {
        emit(const Error('Nenhum bloco de aula cadastrado'));
        return;
      }

      emit(Loaded(classBlock[0]));
    } catch (e) {
      emit(const Error('Falha ao recuperar bloco de aula'));
    }
  }

  Future<void> _mapClassBlockByBlockId(LoadClassroomByBlockId event, Emitter<ClassblockState> emit) async {
    try {
      ClassRoom classRoom = (await classblockService.getClassRoomByBlockId(event.blockId))[0];
      emit(ClassRoomLoaded(classRoom));
    } catch (e) {
      // TODO(siqleomei): Implement a throw error
    }
  }
}
