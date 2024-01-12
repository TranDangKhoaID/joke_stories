import 'package:jokes_story/model/flags_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'joke_model.g.dart';

@JsonSerializable()
class JokeModel {
  bool? error;
  String? category;
  String? type;
  String? setup;
  String? delivery;
  String? joke;
  FlagsModel? flags;
  int? id;
  bool? safe;
  String? lang;

  JokeModel({
    this.error,
    this.category,
    this.type,
    this.setup,
    this.delivery,
    this.joke,
    this.flags,
    this.id,
    this.safe,
    this.lang,
  });

  factory JokeModel.fromJson(Map<String, dynamic> json) =>
      _$JokeModelFromJson(json);
  Map<String, dynamic> toJson() => _$JokeModelToJson(this);
}
