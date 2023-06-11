// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entities.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FootballFact _$FootballFactFromJson(Map<String, dynamic> json) => FootballFact(
      title: json['title'] as String?,
      url: json['url'] as String?,
      facts: json['facts'] as String?,
    );

Map<String, dynamic> _$FootballFactToJson(FootballFact instance) =>
    <String, dynamic>{
      'title': instance.title,
      'url': instance.url,
      'facts': instance.facts,
    };
