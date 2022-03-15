import 'package:dartz/dartz.dart';

import '../../data/model/series_model.dart';
import '../entities/app_error.dart';

abstract class SeriesRepositories {
  Future<Either<AppError, List<SeriesItemModel>>> getSeries();
}
