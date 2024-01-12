import 'package:jokes_story/model/flags_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'joke_single_model.g.dart';

@JsonSerializable()
class JokeSingleModel {
  bool? error;
  String? category;
  String? type;
  String? joke;
  FlagsModel? flags;
  int? id;
  bool? safe;
  String? lang;

  JokeSingleModel({
    this.error,
    this.category,
    this.type,
    this.joke,
    this.flags,
    this.id,
    this.safe,
    this.lang,
  });

  factory JokeSingleModel.fromJson(Map<String, dynamic> json) =>
      _$JokeSingleModelFromJson(json);
  Map<String, dynamic> toJson() => _$JokeSingleModelToJson(this);
}
