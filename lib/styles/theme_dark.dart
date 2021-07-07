import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_ui/styles/styles.dart';

ThemeData whatsAppThemeDark() {
  return ThemeData(
      primaryColor: WhatsAppColors.greyDark,
      backgroundColor: WhatsAppColors.tealGreenDark,
      scaffoldBackgroundColor: WhatsAppColors.bodyDark,
      accentColor: WhatsAppColors.bodyDark,
      floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: WhatsAppColors.tealGreen),
      iconTheme: IconThemeData(
        color: WhatsAppColors.white,
      ),
      buttonColor: WhatsAppColors.floatingDark,
      textTheme: TextTheme(
          subtitle2: TextStyle(
            fontSize: 16.0,
            color: WhatsAppColors.greyS600,
          ),
          headline1: TextStyle(
            fontSize: 16.0,
            color: WhatsAppColors.greyS700,
          ),
          headline6: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w500,
            color: WhatsAppColors.greyS300,
          ),
          subtitle1: TextStyle(
            fontSize: 16.0,
            color: WhatsAppColors.greyS300,
          )),
      tabBarTheme: TabBarTheme(
        indicator: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: WhatsAppColors.tealGreen,
              width: 4.0,
            ),
          ),
        ),
        unselectedLabelColor: WhatsAppColors.white70,
        labelColor: WhatsAppColors.tealGreen,
        labelStyle: TextStyle(
          color: WhatsAppColors.tealGreen,
          fontSize: 14.0,
          fontWeight: FontWeight.bold,
        ),
        unselectedLabelStyle: TextStyle(
          color: WhatsAppColors.white70,
          fontSize: 14.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: WhatsAppColors.greyDark,
        titleTextStyle: TextStyle(
          fontSize: 21.0,
          color: WhatsAppColors.white70,
        ),
        actionsIconTheme: IconThemeData(
          color: WhatsAppColors.white70,
        ),
      ),
      dividerColor: WhatsAppColors.bodyDark);
}
