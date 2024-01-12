// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'joke_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JokeModel _$JokeModelFromJson(Map<String, dynamic> json) => JokeModel(
      error: json['error'] as bool?,
      category: json['category'] as String?,
      type: json['type'] as String?,
      setup: json['setup'] as String?,
      delivery: json['delivery'] as String?,
      joke: json['joke'] as String?,
      flags: json['flags'] == null
          ? null
          : FlagsModel.fromJson(json['flags'] as Map<String, dynamic>),
      id: json['id'] as int?,
      safe: json['safe'] as bool?,
      lang: json['lang'] as String?,
    );

Map<String, dynamic> _$JokeModelToJson(JokeModel instance) => <String, dynamic>{
      'error': instance.error,
      'category': instance.category,
      'type': instance.type,
      'setup': instance.setup,
      'delivery': instance.delivery,
      'joke': instance.joke,
      'flags': instance.flags,
      'id': instance.id,
      'safe': instance.safe,
      'lang': instance.lang,
    };
