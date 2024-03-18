
import 'package:flutter_test/flutter_test.dart';
import 'package:login_cubit/features/signUp/presentation/basicInfo/statesBloc/states_bloc.dart';
import 'package:login_cubit/features/signUp/presentation/basicInfo/statesBloc/states_event.dart';
import 'package:login_cubit/features/signUp/domain/repositories/signup_repositories.dart';
import 'package:mockito/mockito.dart';

class MockSignUpRepositories extends Mock implements SignUpRepositories {}

void main() {
  group('StatesBloc', () {
    SignUpRepositories? signUpRepository;
    StatesBloc? statesBloc;

    setUp(() {
      signUpRepository = MockSignUpRepositories();
      statesBloc = StatesBloc(signUpRepository: signUpRepository);
    });

    test('throws AssertionError if SignUpRepositories is null', () {
      expect(
            () => StatesBloc(signUpRepository: null),
        throwsA(isAssertionError),
      );
    });

});}