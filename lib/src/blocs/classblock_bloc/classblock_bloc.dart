import 'package:alma/src/models/models.dart';
import 'package:alma/src/services/classblock_service.dart';
import 'package:alma/src/services/user_service.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'classblock_event.dart';
part 'classblock_state.dart';
part 'classblock_bloc.freezed.dart';

class ClassBlockBloc extends Bloc<ClassblockEvent, ClassblockState> {
  ClassBlockBloc({
    required this.classblockService,
    required this.userService,
  }) : super(ClassblockState()) {
    on<ClassblockEvent>(_onEvent);
  }

  final ClassblockService classblockService;
  final UserService userService;

  void _onEvent(ClassblockEvent event, Emitter<ClassblockState> emit) async {
    if (event is Init) {
      await _mapInitToState(event, emit);
    }
  }

  Future<void> _mapInitToState(Init event, Emitter<ClassblockState> emit) async {
    try {
      emit(state.copyWith(isLoading: true));
      final user = userService.getCurrentUser();
      final classBlock = await classblockService.fetchClasses(user.id!, 0);
      emit(state.copyWith(currentBlock: classBlock, isError: false, isLoading: false));
    } catch (e) {
      emit(state.copyWith(isError: true, isLoading: false));
    }
  }
}
