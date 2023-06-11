import 'package:json_annotation/json_annotation.dart';

part 'entities.g.dart';

@JsonSerializable()
class FootballFact {
  String? title;
  String? url;
  String? facts;

  FootballFact({this.title, this.url, this.facts});

  factory FootballFact.fromJson(Map<String, dynamic> json) =>
      _$FootballFactFromJson(json);

  Map<String, dynamic> toJson() => _$FootballFactToJson(this);

}