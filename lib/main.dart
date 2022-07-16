import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          systemOverlayStyle: const SystemUiOverlayStyle(statusBarColor: Colors.black,systemNavigationBarColor: Colors.black)
        )
      ),
      home: const Home(),
    );
  }
}