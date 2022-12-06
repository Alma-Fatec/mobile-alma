part of 'recent_bloc.dart';

@freezed
class RecentState with _$RecentState {
  const factory RecentState.initial() = Initial;
  const factory RecentState.loaded({List<ClassRoom>? classes}) = Loaded;
  const factory RecentState.loading() = Loading;
  const factory RecentState.error() = Error;
}