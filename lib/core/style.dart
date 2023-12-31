import 'package:flutter/material.dart';

abstract class AppColors{

  static const primary = Colors.black;
  static const contrast = Colors.white;

  static const background = Color(0xCDECEFEB);
  static const content = Color(0x848AA7CE);
  static const greenBackGround = Color(0xF2DBE8DB);
  static const customRed = Color(0xFFE34E4E);
  static const customGreen = Color(0x864BFF00);

}


abstract class AppTextStyle{

  static const defaultTextStyle = TextStyle(fontSize: 18.0,color: AppColors.primary,);
  static const titleSmall = TextStyle(fontSize: 24.0,color: AppColors.primary,fontWeight: FontWeight.w700);
  static const titleLarge = TextStyle(fontSize: 30.0,color: AppColors.primary,fontWeight: FontWeight.w600, letterSpacing: 1);

  static const facts = TextStyle(fontSize: 22.0,color: AppColors.primary,fontWeight: FontWeight.w400,letterSpacing: 1);

}

abstract class AppTheme{
  static BoxShadow shadow = BoxShadow(
    offset: const Offset(0, 4),
    blurRadius: 4,
    color: const Color(0xFF030303).withOpacity(0.8),
  );
}

abstract class AppBorderRadius{
  static const BorderRadius defaultBorderRadius = BorderRadius.all(Radius.circular(20.0));
}