import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_designs/src/pages/basico_page.dart';
import 'package:flutter_designs/src/pages/botones_page.dart';
import 'package:flutter_designs/src/pages/scroll_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    // SystemChrome.setSystemUIOverlayStyle(
    //   SystemUiOverlayStyle.light.copyWith(
    //     statusBarBrightness: Brightness.dark
    //   )
    // ); usado en el curso pero no funcionó

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.light
    )); // encontrado en SO falta ver si funciona en iOS

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diseños',
      initialRoute: 'botones',
      routes: {
        'basico': (BuildContext context) => BasicoPage(),
        'scroll': (BuildContext context) => ScrollPage(),
        'botones': (BuildContext context) => BotonesPage(),
      }
    );
  }
}