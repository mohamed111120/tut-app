import 'package:flutter/material.dart';
import 'package:tut/presentation/resorces/font_manager.dart';
import 'package:tut/presentation/resorces/color_manager.dart';
import 'package:tut/presentation/resorces/styles_manager.dart';
import 'package:tut/presentation/resorces/values_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    primaryColor: ColorManager.primary,
    primaryColorLight: ColorManager.lightPrimary,
    primaryColorDark: ColorManager.darkPrimary,
    disabledColor: ColorManager.gray1,
    splashColor: ColorManager.lightPrimary,
//cardTheme
    cardTheme: CardTheme(
      color: ColorManager.white,
      shadowColor: ColorManager.gray,
      elevation: AppSize.s4,
    ),
//appBarTheme
    appBarTheme: AppBarTheme(
        centerTitle: true,
        color: ColorManager.primary,
        elevation: AppSize.s4,
        shadowColor: ColorManager.lightPrimary,
        titleTextStyle: getRegularStyle(
          fontSize: FontSizeManager.s16,
          color: ColorManager.white,
        )),
//buttonTheme
    buttonTheme: ButtonThemeData(
      shape: const StadiumBorder(),
      disabledColor: ColorManager.gray1,
      buttonColor: ColorManager.primary,
      splashColor: ColorManager.lightPrimary,
    ),
//elevatedButtonTheme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: getRegularStyle(
          color: ColorManager.white,
          fontSize: FontSizeManager.s17,
        ),
        backgroundColor: ColorManager.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            AppSize.s12,
          ),
        ),
      ),
    ),
//textTheme
    textTheme: TextTheme(
      headlineLarge: getSemiBoldStyle(
        color: ColorManager.darkGray,
        fontSize: FontSizeManager.s16,
      ),
       headlineMedium: getRegularStyle(
        color: ColorManager.darkGray,
        fontSize: FontSizeManager.s14,
      ),
      titleMedium: getMediumStyle(
        color: ColorManager.primary,
        fontSize: FontSizeManager.s16,
      ),
      displayLarge: getSemiBoldStyle(
        color: ColorManager.darkGray,
        fontSize: FontSizeManager.s16,
      ),
      bodyLarge: getRegularStyle(color: ColorManager.gray),
      bodySmall: getLightStyle(
        color: ColorManager.white,
        fontSize: FontSizeManager.s22,
      ),
    ),
//inputDecorationTheme
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(AppPadding.p8),
      hintStyle: getRegularStyle(
        color: ColorManager.gray,
        fontSize: FontSizeManager.s14,
      ),
      labelStyle: getMediumStyle(
        color: ColorManager.gray,
        fontSize: FontSizeManager.s14,
      ),
      errorStyle: getRegularStyle(
        color: ColorManager.erroe,
      ),
      //enabledBorder
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.primary,
          width: AppSize.s1_5,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(
            AppSize.s8,
          ),
        ),
      ),
      //focusedBorder
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.gray,
          width: AppSize.s1_5,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(
            AppSize.s8,
          ),
        ),
      ),
      //errorBorder
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.erroe,
          width: AppSize.s1_5,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(
            AppSize.s8,
          ),
        ),
      ),
      //focusedErrorBorder
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.primary,
          width: AppSize.s1_5,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(
            AppSize.s8,
          ),
        ),
      ),
    ),
  );
}
