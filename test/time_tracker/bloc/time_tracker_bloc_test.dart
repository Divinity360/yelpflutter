// import 'package:bloc_test/bloc_test.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:login_cubit/features/time_tracker/bloc/culinary_roulette_bloc.dart';
//
// void main(){
//   group('TimeTrackerBloc', (){
//     late TimeTrackerBloc timeTrackerBloc;
//
//     setUp(() {
//       timeTrackerBloc = TimeTrackerBloc();
//     });
//
//     test('initial state is TimeTrackerState.initial()', () {
//       expect(timeTrackerBloc.state, TimeTrackerState.initial());
//     });
//
//
//     blocTest<TimeTrackerBloc, TimeTrackerState>(
//         'emits [TickerRunPause(2)] when ticker is paused at 2',
//         build: () => TimeTrackerBloc(),
//         seed: () => TimeTrackerState.initial(status: TimeTrackerStatus.trackTimeInProgress, reminderDuration: Duration(seconds: 10)),
//         act: (bloc) => bloc.add(const TimeTrackerEvent.timerPaused()),
//         expect: () => [TimeTrackerState.initial(status: TimeTrackerStatus.trackTimePaused, reminderDuration: Duration(seconds: 10))]);
//
//   });
// }