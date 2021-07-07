import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_ui/common/config.dart';
import 'package:flutter_whatsapp_ui/styles/styles.dart';

import 'screens/whatsapp/whatsapp.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    appTheme.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter WhatsApp UI',
      theme: whatsAppThemeLight(),
      darkTheme: whatsAppThemeDark(),
      themeMode: appTheme.currentTheme(),
      home: DefaultTabController(
        initialIndex: 1,
        length: 4,
        child: WhatsAppBody(),
      ),
    );
  }
}
