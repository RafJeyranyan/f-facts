import 'package:flutter/material.dart';


import '../../../core/entities/entities.dart';
import '../../../core/style.dart';

class FactsScreen extends StatelessWidget {
  final FootballFact footballFact;

  const FactsScreen({Key? key, required this.footballFact}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            footballFact.title ?? "",
            style: AppTextStyle.titleSmall,
          ),
          elevation: 0,
          centerTitle: true,
          backgroundColor: AppColors.content,
        ),
        backgroundColor: AppColors.greenBackGround,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: size.width,
                height: 400,
                child: Image.asset(
                  footballFact.url ?? "",
                  fit: BoxFit.fill,
                ),
              ),

              const SizedBox(
                height: 30,
              ),
               Container(
                   padding: EdgeInsets.symmetric(horizontal: 8.0,vertical: 16.0),

                   decoration: BoxDecoration(
                       borderRadius: AppBorderRadius.defaultBorderRadius,
                       color: AppColors.content
                   ),
                   child: SingleChildScrollView(
                     child: Text(
                       footballFact.facts ?? "",
                       style: AppTextStyle.facts,
                       maxLines: null,
                     ),
                   ),
                 ),
            ],
          ),
        ),
      ),
    );
  }
}
