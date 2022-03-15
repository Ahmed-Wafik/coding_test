part of 'series_cubit.dart';

abstract class SeriesState {}

class SeriesLoading extends SeriesState {}
class SeriesInitial extends SeriesState{}

class SeriesData extends SeriesState {
  final Either<AppError, List<SeriesItemModel>>? seriesModel;

  SeriesData({this.seriesModel});

  SeriesData copyWith({
    Either<AppError, List<SeriesItemModel>>? seriesModel,
    bool? isLoading,
  }) {
    return SeriesData(
      seriesModel: seriesModel ?? this.seriesModel,
    );
  }
}
