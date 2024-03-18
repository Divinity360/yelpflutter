import 'package:dio/dio.dart';
import 'package:login_cubit/features/signUp/domain/entities/state.dart';

abstract class ISignUpRepositories{
  final Dio dio;

  ISignUpRepositories(this.dio);

  Future<List<States>?> fetchStates();

  Future<List<String>?> fetchCities(States state);

}