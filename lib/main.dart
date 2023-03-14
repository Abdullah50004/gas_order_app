import 'package:flutter/material.dart';
import 'controller/utilits/bindeing.dart';
import 'package:get/get.dart';
import 'view/screens/detalies.dart';
import 'view/screens/shocart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: 'Vazirmatn',
          textTheme: const TextTheme(
            headline1: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
            headline3: TextStyle(fontSize: 30, fontStyle: FontStyle.italic),
          )),
      home: detailesscreen(),
      initialBinding: mybinding(),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => detailesscreen()),
      ],
    );
  }
}
