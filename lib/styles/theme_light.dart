import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_ui/styles/styles.dart';

ThemeData whatsAppThemeLight() {
  return ThemeData(
      primaryColor: WhatsAppColors.tealGreenDark,
      scaffoldBackgroundColor: WhatsAppColors.white,
      accentColor: WhatsAppColors.greyS200,
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: WhatsAppColors.lightGreen,
      ),
      iconTheme: IconThemeData(
        color: WhatsAppColors.tealGreenDark,
      ),
      buttonColor: WhatsAppColors.greyS200,
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
            color: WhatsAppColors.black,
          ),
          subtitle1: TextStyle(
            fontSize: 16.0,
            color: WhatsAppColors.greyS700,
          )),
      tabBarTheme: TabBarTheme(
        indicator: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: WhatsAppColors.white,
              width: 4.0,
            ),
          ),
        ),
        unselectedLabelColor: WhatsAppColors.white70,
        labelStyle: TextStyle(
          color: Colors.white,
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
        backgroundColor: WhatsAppColors.tealGreenDark,
        titleTextStyle: TextStyle(
          fontSize: 21.0,
          color: WhatsAppColors.white,
        ),
      ),
      dividerColor: WhatsAppColors.greyS300);
}
