import 'package:jokes_story/model/flags_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'joke_twopart_model.g.dart';

@JsonSerializable()
class JokeTwoPartModel {
  bool? error;
  String? category;
  String? type;
  String? setup;
  String? delivery;
  FlagsModel? flags;
  int? id;
  bool? safe;
  String? lang;

  JokeTwoPartModel({
    this.error,
    this.category,
    this.type,
    this.setup,
    this.delivery,
    this.flags,
    this.id,
    this.safe,
    this.lang,
  });

  factory JokeTwoPartModel.fromJson(Map<String, dynamic> json) =>
      _$JokeTwoPartModelFromJson(json);
  Map<String, dynamic> toJson() => _$JokeTwoPartModelToJson(this);
}
