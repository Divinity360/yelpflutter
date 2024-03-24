import 'dart:developer';

import 'package:login_cubit/core/error/exceptions.dart';
import 'package:login_cubit/core/error/response_state.dart';
import 'package:login_cubit/features/restaurants/domain/entities/restaurant.dart';
import 'package:login_cubit/features/restaurants/domain/repositories/yelp_repository.dart';
import '../data_sources/yelp_remote_data_source.dart';

class YelpRepositoryImpl extends YelpRepository {
  final YelpRemoteDataSource yelpRemoteDataSource;

  YelpRepositoryImpl(this.yelpRemoteDataSource);

  @override
  Future<ResponseState<List<Restaurant>>> searchRestaurants(
      {required String location,
      required String term,
      String? openNow,
      int? radius}) async {
    try {
      final searchResponse =
          await yelpRemoteDataSource.searchRestaurants(location: location, term: term,openNow: openNow, radius: radius);
      return ResponseSuccess(searchResponse);
    } on ServerException catch (e) {
      log(e.message.toString());
      return ResponseFailed(e.message.toString());
    }
  }
}
