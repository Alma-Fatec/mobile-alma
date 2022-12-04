import 'package:alma/src/services/assignment_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'assignment_event.dart';
part 'assignment_state.dart';
part 'assignment_bloc.freezed.dart';

class AssignmentBloc extends Bloc<AssignmentEvent, AssignmentState> {
  AssignmentBloc({required this.assignmentService}) : super(const AssignmentState.initial()) {
    on<AssignmentEvent>(_onEvent);
  }

  final AssignmentService assignmentService;

  void _onEvent(AssignmentEvent event, Emitter<AssignmentState> emit) {
    if (event is CheckAsDone) {
      _mapCheckAsDoneToState(event, emit);
    }
  }

  void _mapCheckAsDoneToState(CheckAsDone event, Emitter<AssignmentState> emit) {
    emit(const Checking());
    assignmentService.checkAsDone(event.assignmentId);
    emit(const Checked());
  }
}