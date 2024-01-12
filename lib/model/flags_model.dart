import 'package:json_annotation/json_annotation.dart';

part 'flags_model.g.dart';

@JsonSerializable()
class FlagsModel {
  bool nsfw;
  bool religious;
  bool political;
  bool racist;
  bool sexist;
  bool explicit;

  FlagsModel({
    required this.nsfw,
    required this.religious,
    required this.political,
    required this.racist,
    required this.sexist,
    required this.explicit,
  });

  factory FlagsModel.fromJson(Map<String, dynamic> json) =>
      _$FlagsModelFromJson(json);
  Map<String, dynamic> toJson() => _$FlagsModelToJson(this);
}
