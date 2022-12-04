part of 'navigation_bloc.dart';

@freezed
class NavigationEvent with _$NavigationEvent {
  const factory NavigationEvent.initialise({required String blockId}) = Initialise;
  const factory NavigationEvent.loadResults({required String blockId}) = LoadResults;
  const factory NavigationEvent.loadMoreResults() = LoadMoreResults;
}
