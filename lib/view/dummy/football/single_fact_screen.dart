import 'package:flutter/material.dart';

import '../../../core/style.dart';
import 'facts.dart';

class InterestingFactsScreen extends StatelessWidget {
  const InterestingFactsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.greenBackGround,
      appBar: AppBar(
        centerTitle: true,
        title: Text("Interesting Facts",style: TextStyle(fontSize: 20,color: Colors.black),),
        leading: BackButton(color: Colors.black,),
        backgroundColor: AppColors.greenBackGround,

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
              SizedBox(height: 8.0,),
              ...facts.map((e) => Column(
                children: [
                  Container(
                    width: size.width,
                    padding: EdgeInsets.symmetric(horizontal: 8.0,vertical: 16.0),

                    decoration: BoxDecoration(
                        borderRadius: AppBorderRadius.defaultBorderRadius,
                        color: AppColors.content
                    ),
                    child: SingleChildScrollView(
                      child: Text(
                        e,
                        style: AppTextStyle.facts,
                        maxLines: null,
                      ),
                    ),
                  ),
                  SizedBox(height: 8.0,)
                ],
              )
              ),
          ],

        ),
      ),
    );
  }
}
