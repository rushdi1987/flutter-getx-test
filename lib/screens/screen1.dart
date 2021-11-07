import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_app_riverpod/screens/screen2.dart';
import 'package:flutter_app_riverpod/class/translation.dart';

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      translations: MyTranslations(),
      locale: const Locale('pt', 'BR'),
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  MyHomePage(title: 'test app'),
    );
  }
}
