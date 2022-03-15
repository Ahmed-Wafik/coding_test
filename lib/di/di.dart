import 'package:get_it/get_it.dart';

import '../data/core/local_data_service.dart';
import '../data/repositories/series/series_repository_imp.dart';
import '../domain/repositories/series_repository.dart';

final GetIt locator = GetIt.instance;

setUpLocators() {
  locator.registerSingleton<CoreAssetsReader>(AssetsReaderService());
  locator.registerSingleton<SeriesRepositories>(
      SeriesRepositoriesImp(locator.get<CoreAssetsReader>()));
}
