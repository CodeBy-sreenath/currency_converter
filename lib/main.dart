import 'package:currency_converter/currency_convertor_material.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(const MYApp());
  //types of widgets
  //stateless widget
  //statefull widget
  //inherited widget
  //design are two types
  //material design
  //cupertino design
  
}
class MYApp extends StatelessWidget{
  const MYApp({super.key});
  @override
  Widget build(BuildContext context){
   // return const Text('hello,world',textDirection: TextDirection.ltr,);
   return MaterialApp(
    home:CurrencyConvertorMaterialPage()
   );
  }
  
}