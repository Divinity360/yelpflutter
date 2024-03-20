part of 'time_tracker_bloc.dart';

@freezed
abstract class TimeTrackerEvent with _$TimeTrackerEvent{
  const factory TimeTrackerEvent.timerStarted() = _TimerStarted;
  const factory TimeTrackerEvent.timerPaused() = _TimerPaused;
  const factory TimeTrackerEvent.timerResumed() = _TimerResumed;
  const factory TimeTrackerEvent.timerEnded() = _TimerEnded;
  const factory TimeTrackerEvent.reminderAdded(int durationInMinutes) = _ReminderAdded;
  const factory TimeTrackerEvent.timerUpdated(Duration duration) = _TimerUpdated;
}