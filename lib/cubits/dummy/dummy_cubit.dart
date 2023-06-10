import 'package:flutter_bloc/flutter_bloc.dart';


import '../../core/entities/entities.dart';
import '../../view/dummy/football/volcanos.dart';
import 'dummy_state.dart';

class DummyScreenCubit extends Cubit<DummyScreenState> {
  DummyScreenCubit()
      : super(
            DummyScreenState(stage: DummyScreenStage.loading, volcanoes: [])) {
    load();
  }

  load() async {
    List<Volcano> volcanoesTmp = [];
    football_facts.forEach((element) {
      volcanoesTmp.add(Volcano.fromJson(element));
    });
    emit(state.copyWith(stage: DummyScreenStage.display,volcanoes: volcanoesTmp));
  }
}
