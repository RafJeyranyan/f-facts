import 'package:equatable/equatable.dart';

import '../../core/entities/entities.dart';

enum DummyScreenStage {
  display,
  loading,
  // error,
}

class DummyScreenState extends Equatable {
  final DummyScreenStage stage;
  final List<FootballFact> volcanoes;

  const DummyScreenState(
      {required this.stage, required this.volcanoes});

  DummyScreenState copyWith(
      {DummyScreenStage? stage,
      List<FootballFact>? volcanoes}) {
    return DummyScreenState(
        stage: stage ?? this.stage,
        volcanoes: volcanoes ?? this.volcanoes);
  }

  @override
  List<Object?> get props => [
        stage,
    volcanoes,
      ];
}
