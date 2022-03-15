import 'package:json_annotation/json_annotation.dart';

import 'class_model.dart';
import 'instructor_model.dart';

part 'series_model.g.dart';

@JsonSerializable(createToJson: false)
class SeriesItemModel {
  final String? title, about, totalRunTime, difficulty, intensity;
  final InstructorModel? instructor;
  final List<ClassModel> classes;

  const SeriesItemModel(
      {this.title,
      this.instructor,
      this.classes = const [],
      this.about,
      this.totalRunTime,
      this.difficulty,
      this.intensity});

  factory SeriesItemModel.fromJson(Map<String, dynamic> json) =>
      _$SeriesItemModelFromJson(json);
}

