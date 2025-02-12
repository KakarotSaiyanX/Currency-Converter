import 'package:currency_converter/currency_converter_material_page.dart';
import 'package:flutter/material.dart';

void main(){
    runApp( MyApp());
}
//state - a data which determine how should ui should behave or look like.

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: CurrencyConverterMaterialPage()
    );
  }
}