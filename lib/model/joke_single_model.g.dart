// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'joke_single_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JokeSingleModel _$JokeSingleModelFromJson(Map<String, dynamic> json) =>
    JokeSingleModel(
      error: json['error'] as bool?,
      category: json['category'] as String?,
      type: json['type'] as String?,
      joke: json['joke'] as String?,
      flags: json['flags'] == null
          ? null
          : FlagsModel.fromJson(json['flags'] as Map<String, dynamic>),
      id: json['id'] as int?,
      safe: json['safe'] as bool?,
      lang: json['lang'] as String?,
    );

Map<String, dynamic> _$JokeSingleModelToJson(JokeSingleModel instance) =>
    <String, dynamic>{
      'error': instance.error,
      'category': instance.category,
      'type': instance.type,
      'joke': instance.joke,
      'flags': instance.flags,
      'id': instance.id,
      'safe': instance.safe,
      'lang': instance.lang,
    };
