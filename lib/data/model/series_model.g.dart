// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'series_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SeriesItemModel _$SeriesItemModelFromJson(Map<String, dynamic> json) =>
    SeriesItemModel(
      title: json['title'] as String?,
      instructor: json['instructor'] == null
          ? null
          : InstructorModel.fromJson(
              json['instructor'] as Map<String, dynamic>),
      classes: (json['classes'] as List<dynamic>?)
              ?.map((e) => ClassModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      about: json['about'] as String?,
      totalRunTime: json['totalRunTime'] as String?,
      difficulty: json['difficulty'] as String?,
      intensity: json['intensity'] as String?,
    );
