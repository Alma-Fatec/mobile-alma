import 'package:alma/blocs/classblock_bloc/classblock_event.dart';
import 'package:alma/blocs/classblock_bloc/classblock_state.dart';
import 'package:alma/models/class_block/class_block.dart';
import 'package:alma/services/classblock_service.dart';
import 'package:bloc/bloc.dart';

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
      ClassBlock classBlock = await classblockService.getClassBlockByStudent();
      emit(Loaded(classBlock));
    } catch (e) {
      emit(const Error('Falha ao recuperar bloco de aula'));
    }
  }
}
