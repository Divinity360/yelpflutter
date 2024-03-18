import 'dart:io';
import 'package:dio/dio.dart';
import 'package:login_cubit/core/constants/constants.dart';
import 'package:login_cubit/features/signUp/domain/entities/state.dart';
import '../../data/repositories/i_signup_repositories.dart';

class SignUpRepositories extends ISignUpRepositories {
  SignUpRepositories(Dio dio) : super(dio);

  @override
  Future<List<States>?> fetchStates() async {
    final response = await dio.get('${Constants.FETCH_STATES}');
    if (response.statusCode == HttpStatus.ok) {
      return (response.data as List)
          .map((json) => States.fromJson(json))
          .toList();
    } else {
      throw Exception();
    }
  }

  @override
  Future<List<String>?> fetchCities(States state) async {
    final response =
        await dio.get('${Constants.FETCH_STATES}/${state.name}/cities');
    if (response.statusCode == HttpStatus.ok && response.data is List) {
      print(response.data.runtimeType);
      return List<String>.from(response.data as List);
    } else {
      throw Exception();
    }
  }
}
