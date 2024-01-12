// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'joke_twopart_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JokeTwoPartModel _$JokeTwoPartModelFromJson(Map<String, dynamic> json) =>
    JokeTwoPartModel(
      error: json['error'] as bool?,
      category: json['category'] as String?,
      type: json['type'] as String?,
      setup: json['setup'] as String?,
      delivery: json['delivery'] as String?,
      flags: json['flags'] == null
          ? null
          : FlagsModel.fromJson(json['flags'] as Map<String, dynamic>),
      id: json['id'] as int?,
      safe: json['safe'] as bool?,
      lang: json['lang'] as String?,
    );

Map<String, dynamic> _$JokeTwoPartModelToJson(JokeTwoPartModel instance) =>
    <String, dynamic>{
      'error': instance.error,
      'category': instance.category,
      'type': instance.type,
      'setup': instance.setup,
      'delivery': instance.delivery,
      'flags': instance.flags,
      'id': instance.id,
      'safe': instance.safe,
      'lang': instance.lang,
    };
