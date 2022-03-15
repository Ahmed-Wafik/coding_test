import 'package:bloc/bloc.dart';
import 'package:coding_test/data/model/series_model.dart';
import 'package:coding_test/domain/repositories/series_repository.dart';
import 'package:dartz/dartz.dart';

import '../../../domain/entities/app_error.dart';

part 'series_state.dart';

class SeriesCubit extends Cubit<SeriesState> {
  final SeriesRepositories seriesRepositories;

  SeriesCubit(this.seriesRepositories) : super(SeriesInitial());

  getSeriesData() async {
    emit(SeriesLoading());
    final response = await seriesRepositories.getSeries();
    await Future.delayed(const Duration(seconds: 1));
    emit(SeriesData(seriesModel: response));
  }
}
