part of 'time_tracker_bloc.dart';

@freezed
abstract class TimeTrackerState with _$TimeTrackerState {
  const factory TimeTrackerState.initial({
    @Default(TimeTrackerStatus.initial) TimeTrackerStatus status,
    @Default(Duration.zero) Duration totalTimeDuration,
    Duration? reminderDuration
  }) = _Initial;

  factory TimeTrackerState.fromJson(Map<String, dynamic> json) =>
      _$TimeTrackerStateFromJson(json);
}
