part of 'navigation_bloc.dart';

@freezed
class NavigationState with _$NavigationState {
  const factory NavigationState.initial() = Initial;
  const factory NavigationState.loading() = Loading;
  const factory NavigationState.classBlockLoaded({required ClassBlock classBlock}) = ClassBlockLoaded;
  const factory NavigationState.classRoomLoaded({required ClassRoom classRoom}) = ClassRoomLoaded;
  const factory NavigationState.assingmentLoaded({required Assignment assignment}) = AssignmentLoaded;
  const factory NavigationState.ended() = Ended;
  const factory NavigationState.error({required String message}) = Error;
}
