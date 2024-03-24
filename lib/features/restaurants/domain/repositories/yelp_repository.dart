import 'package:login_cubit/core/error/response_state.dart';
import 'package:login_cubit/features/restaurants/domain/entities/restaurant.dart';

abstract class YelpRepository {
  Future<ResponseState<List<Restaurant>>> searchRestaurants(
      {required String location,
        required String term,
        String? openNow,
        int? radius});
}
