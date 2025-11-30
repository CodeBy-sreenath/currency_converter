import 'package:flutter/material.dart';

class CurrencyConvertorMaterialPage extends StatelessWidget
{
  const CurrencyConvertorMaterialPage({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        //child: Text('hello world'),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text('0',style: TextStyle(
            fontSize: 20
          ),)
        ],),
      ),
    );
    
  }
}