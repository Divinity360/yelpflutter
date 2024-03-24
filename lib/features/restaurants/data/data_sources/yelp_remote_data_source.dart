
import 'package:login_cubit/features/restaurants/domain/entities/restaurant.dart';

abstract class YelpRemoteDataSource {
  Future<List<Restaurant>> searchRestaurants(
      {required String location,
      required String term,
      String? openNow,
      int? radius});

}
