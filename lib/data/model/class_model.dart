import 'package:json_annotation/json_annotation.dart';

part 'class_model.g.dart';

@JsonSerializable(createToJson: false)
class ClassModel {
  final String? title, subTitle, link, thumbnail, duration;

  const ClassModel(
      {this.title, this.subTitle, this.link, this.thumbnail, this.duration});

  factory ClassModel.fromJson(Map<String, dynamic> json) =>
      _$ClassModelFromJson(json);
}
