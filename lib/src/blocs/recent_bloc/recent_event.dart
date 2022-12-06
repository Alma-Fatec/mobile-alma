part of 'recent_bloc.dart';

@freezed
class RecentEvent with _$RecentEvent {
  const factory RecentEvent.addClass({ClassRoom? classRoom}) = AddClass;
}