import 'package:coding_test/core/constants/app_constant.dart';
import 'package:coding_test/data/model/series_model.dart';
import 'package:coding_test/domain/entities/app_error.dart';
import 'package:coding_test/domain/repositories/series_repository.dart';
import 'package:dartz/dartz.dart';

import '../../core/local_data_service.dart';

class SeriesRepositoriesImp implements SeriesRepositories {
  final CoreAssetsReader coreAssetsReader;

  SeriesRepositoriesImp(this.coreAssetsReader);

  @override
  Future<Either<AppError, List<SeriesItemModel>>> getSeries() async {
    try {
      final List response = await coreAssetsReader
          .readListJsonDataFromAssets(AppConstants.seriesAssetsPath);
      if (response.isNotEmpty) {
        return Right(response.map((e) => SeriesItemModel.fromJson(e)).toList());
      }

      return Left(AppError.unknown());
    } catch (e) {
      return Left(AppError.fromException(e));
    }
  }
}
