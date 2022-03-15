import 'package:coding_test/data/model/class_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'instructor_model.g.dart';

@JsonSerializable(explicitToJson: true, createToJson: false)
class InstructorModel {
  final String? name, about, profilePictureUrl;

  const InstructorModel({this.name, this.about, this.profilePictureUrl});

  factory InstructorModel.fromJson(Map<String, dynamic> json) =>
      _$InstructorModelFromJson(json);
}
