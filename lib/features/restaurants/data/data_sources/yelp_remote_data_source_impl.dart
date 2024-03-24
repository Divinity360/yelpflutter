import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:login_cubit/core/constants/constants.dart';
import 'package:login_cubit/core/error/exceptions.dart';
import 'package:login_cubit/features/restaurants/data/data_sources/yelp_remote_data_source.dart';
import 'package:login_cubit/features/restaurants/domain/entities/restaurant.dart';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:http/http.dart' as http;

class YelpRemoteDataSourceImpl extends YelpRemoteDataSource {
  Future<List<Restaurant>> searchRestaurants(
      {required String location,
      required String term,
      String? openNow,
      int? radius}) async {
    try {
      final yelpAPIKey = dotenv.env['YELP_API_KEY'];
      final headers = {
        'Authorization': 'Bearer $yelpAPIKey',
        'accept': 'application/json',
      };
      final queryParameters = <String, dynamic>{
        'categories': 'Restaurant',
        'sort_by': 'best_match',
        'location': location,
        'term': term,
      };
      if (openNow != null) queryParameters['open_now'] = openNow;
      if (radius != null) queryParameters['radius'] = radius;
      final uri = Uri.https(
        Constants.baseUrl,
        Constants.businessSearchUrl,
        queryParameters,
      );
      final response = await http.get(uri, headers: headers);
      log(response.body);
      if (response.statusCode == HttpStatus.ok) {
        final restaurantList = json
            .decode(response.body)['businesses']
            .map<Restaurant>((i) => Restaurant.fromJson(i))
            .toList();
        return restaurantList;
      } else {
        final errorMsg = json.decode(response.body)['error']['description'];
        throw ServerException(message: errorMsg);
      }
    } on ServerException {
      rethrow;
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }
}
