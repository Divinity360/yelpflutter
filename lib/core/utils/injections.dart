import 'package:get_it/get_it.dart';
import 'package:login_cubit/features/restaurants/data/data_sources/yelp_remote_data_source.dart';
import 'package:login_cubit/features/restaurants/data/data_sources/yelp_remote_data_source_impl.dart';
import 'package:login_cubit/features/restaurants/data/repositories/yelp_repository_impl.dart';
import 'package:login_cubit/features/restaurants/domain/repositories/yelp_repository.dart';
import 'package:login_cubit/features/restaurants/presentation/culinary_roulette/bloc/culinary_roulette_bloc.dart';
import 'package:login_cubit/features/restaurants/presentation/mystery_search/bloc/mystery_search_bloc.dart';

final getIt = GetIt.instance;

initInjections() {
  getIt.registerSingleton<YelpRemoteDataSource>(YelpRemoteDataSourceImpl());
  getIt.registerSingleton<YelpRepository>(YelpRepositoryImpl(getIt()));
  getIt.registerLazySingleton<MysterySearchBloc>(
    () => MysterySearchBloc(getIt()),
  );

  getIt.registerLazySingleton<CulinaryRouletteBloc>(
    () => CulinaryRouletteBloc(getIt()),
  );
}
