import 'dart:async';

import 'package:alma/src/models/models.dart';
import 'package:alma/src/services/navigation_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'navigation_event.dart';
part 'navigation_state.dart';
part 'navigation_bloc.freezed.dart';

class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  NavigationBloc({required this.navigationService}) : super(const NavigationState.initial()) {
    on<NavigationEvent>(_onEvent);
  }

  final NavigationService navigationService;

  List<ClassRoom>? classes;
  List<Assignment>? assignments;
  int lastClassRoomIndex = 0;
  int lastAssignmentIndex = 0;

  Future<void> _onEvent(NavigationEvent event, Emitter<NavigationState> emit) async {
    if (event is Initialise) {
      _mapInitialiseToState(event, emit);
    } else if (event is LoadResults) {
      _mapLoadResultsToState(event, emit);
    }
  }

  void _mapInitialiseToState(Initialise event, Emitter<NavigationState> emit) {
    classes = navigationService.getClasses(event.blockId);

    if (classes == null) {
      emit(const Error(message: 'Não foi encontrada uma aula'));
      return;
    }
    lastClassRoomIndex = 0;
    final classroom = classes![lastClassRoomIndex];
    emit(ClassRoomLoaded(classRoom: classroom));
  }

  void _mapLoadResultsToState(LoadResults event, Emitter<NavigationState> emit) {
    if (classes == null) {
      emit(const Error(message: 'Não há aula para ser feita'));
      return;
    }

    final currentClass = classes![lastClassRoomIndex];
    final hasAssignment = navigationService.hasAssignmentToDo(currentClass.id!);

    if (!hasAssignment) {
      lastClassRoomIndex++;

      if (lastClassRoomIndex > classes!.length - 1) {
        emit(const Ended());
        return;
      }

      final nextClass = classes![lastClassRoomIndex];
      emit(ClassRoomLoaded(classRoom: nextClass));
      return;
    }

    final assignment = navigationService.getNextAssignments(currentClass.id!);
    if (assignment == null) {
      emit(const Ended());
      return;
    }

    emit(AssignmentLoaded(assignment: assignment));
  }
}
