import 'package:alma/src/models/classroom/classroom.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recent_event.dart';
part 'recent_state.dart';
part 'recent_bloc.freezed.dart';

class RecentBloc extends Bloc<RecentEvent, RecentState> {
  RecentBloc() : super(const RecentState.initial());

  
}

