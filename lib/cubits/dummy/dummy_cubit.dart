import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/entities/entities.dart';
import '../../view/dummy/football/facts_data.dart';
import 'dummy_state.dart';

class DummyScreenCubit extends Cubit<DummyScreenState> {
  DummyScreenCubit()
      : super(
            DummyScreenState(stage: DummyScreenStage.loading, volcanoes: [])) {
    load();
  }

  load() async {
    List<FootballFact> volcanoesTmp = [];
    football_facts.forEach((element) {
      volcanoesTmp.add(FootballFact.fromJson(element));
    });
    emit(state.copyWith(stage: DummyScreenStage.display,volcanoes: volcanoesTmp));
  }
}
