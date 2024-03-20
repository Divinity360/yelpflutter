import 'dart:async';
import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'time_tracker_event.dart';

part 'time_tracker_state.dart';

part 'time_tracker_bloc.g.dart';

part 'time_tracker_bloc.freezed.dart';

enum TimeTrackerStatus {
  initial,
  trackTimeInProgress,
  trackTimePaused,
  trackTimeResumed,
  trackTimeElapsed
}

class TimeTrackerBloc extends Bloc<TimeTrackerEvent, TimeTrackerState> {
  TimeTrackerBloc() : super(TimeTrackerState.initial()) {
    on<_TimerStarted>(_onTimerStarted);
    on<_TimerPaused>(_onTimerPaused);
    on<_TimerResumed>(_onTimerResumed);
    on<_TimerUpdated>(_onTimerUpdated);
    on<_ReminderAdded>(_onReminderAdded);
  }

  StreamSubscription<int>? _timerSubscription;
  Stream<int> timerStream = Stream.periodic(
      Duration(seconds: 1), (computationCount) => computationCount);

  /// Timer started
  Future _onTimerStarted(
      _TimerStarted event, Emitter<TimeTrackerState> emit) async {
    _timerSubscription = timerStream.listen(
      (durationInSeconds) =>
          add(TimeTrackerEvent.timerUpdated(state.totalTimeDuration)),
    );
  }

  /// Pause time stream
  void _onTimerPaused(_TimerPaused event, Emitter<TimeTrackerState> emit) {
    _timerSubscription?.pause();
    emit(state.copyWith(status: TimeTrackerStatus.trackTimePaused));
  }

  /// Add/Update Reminder time
  void _onReminderAdded(_ReminderAdded event, Emitter<TimeTrackerState> emit) {
    emit(state.copyWith(
        reminderDuration: Duration(minutes: event.durationInMinutes)));
  }

  @override
  Future<void> close() {
    _timerSubscription?.cancel();
    return super.close();
  }

  /// Update timer duration
  void _onTimerUpdated(_TimerUpdated event, Emitter<TimeTrackerState> emit) {
    final updatedDuration = Duration(seconds: event.duration.inSeconds + 1);

    /// If reminder duration is elapsed, update state value and cancel stream subscription
    if (state.reminderDuration != null &&
        event.duration.inSeconds == state.reminderDuration!.inSeconds) {
      emit(state.copyWith(
        status: TimeTrackerStatus.trackTimeElapsed,
        totalTimeDuration: updatedDuration,
      ));
      add(TimeTrackerEvent.timerPaused());
    } else {
      emit(state.copyWith(
        status: TimeTrackerStatus.trackTimeInProgress,
        totalTimeDuration: updatedDuration,
      ));
    }
  }

  /// Resume periodic time stream
  void _onTimerResumed(_TimerResumed event, Emitter<TimeTrackerState> emit) {
    if (state.status == TimeTrackerStatus.trackTimePaused) {
      _timerSubscription?.resume();
      emit(state.copyWith(status: TimeTrackerStatus.trackTimePaused));
    }
  }

  @override
  TimeTrackerState fromJson(Map<String, dynamic> json) =>
      TimeTrackerState.fromJson(json);
}
