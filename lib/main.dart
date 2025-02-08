import 'package:flutter/material.dart';

void main(){
    runApp(const MyApp());
}
//state - a data which determine how should ui should behave or look like.

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: Center(child: Text("Hello world!!!!")),
        ),
    );
  }
}