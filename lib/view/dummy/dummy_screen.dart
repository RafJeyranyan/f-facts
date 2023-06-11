import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/style.dart';
import '../../cubits/dummy/dummy_cubit.dart';
import '../../cubits/dummy/dummy_state.dart';
import 'football/fact_card.dart';
import 'football/facts_list_screen.dart';
import 'football/single_fact_screen.dart';

class DummyScreen extends StatelessWidget {
  const DummyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<DummyScreenCubit>(
        create: (_) => DummyScreenCubit(),
        child: BlocBuilder<DummyScreenCubit, DummyScreenState>(
          builder: (context, state) {
            switch (state.stage) {
              case DummyScreenStage.display:
                return DisplayDummyScreen();
              case DummyScreenStage.loading:
                return Center(
                  child: CircularProgressIndicator(),
                );
            }
          },
        ));
  }
}

class DisplayDummyScreen extends StatelessWidget {
  const DisplayDummyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<DummyScreenCubit>();

    return WillPopScope(
        child: SafeArea(
          child: Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
              title: Text(
                "Football Facts",
              ),
              centerTitle: true,
              backgroundColor: AppColors.primary,
            ),
            backgroundColor: AppColors.greenBackGround,
            body: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  ...cubit.state.volcanoes.map(
                    (e) => Column(
                      children: [
                        const SizedBox(
                          height: 30.0,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => FactsScreen(
                                      footballFact: e,
                                    )));
                          },
                          child: FactsCard(
                            title: e.title ?? "",
                            url: e.url ?? "",
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 40,),
                  Center(
                      child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => InterestingFactsScreen()));
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.customGreen, elevation: 0),
                    child: Text(
                      "More Facts",
                      style: TextStyle(
                        letterSpacing: 0.9,
                      ),
                    ),
                  ),),
                  const SizedBox(height: 100,)
                ],
              ),
            ),
          ),
        ),
        onWillPop: () async {
          return false;
        });
  }
}
