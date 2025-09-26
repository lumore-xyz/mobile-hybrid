import 'package:flutter/material.dart';
import 'package:lumore/constants/constant.dart';

class Home extends StatelessWidget{
  const Home({super.key});

  @override
  Widget build(BuildContext context){
    return Container(
      margin: EdgeInsets.all(context.screenHeight * 0.007),
      width: double.infinity,
      height: double.infinity,

      decoration: BoxDecoration(
        color: const Color(0xFFF1E9DA),
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}