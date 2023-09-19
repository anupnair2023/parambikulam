import 'package:flutter/material.dart';
import 'package:parambikulam/login.dart';

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
      title: 'Flutter Demo',
      theme: ThemeData(
        // fontFamily: 'Kumbh Sans',
        primarySwatch: Colors.blue,
      ),
      home: const Loginpage(),
    );
  }
}
