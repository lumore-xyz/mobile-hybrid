import 'package:flutter/material.dart';
import 'package:lumore/components/headers/home_appbar.dart';
import 'package:lumore/constants/constant.dart';

class Home extends StatelessWidget{
  const Home({super.key});

  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        CustomAppBar(),
        Expanded(
          child: Container(
            margin: EdgeInsets.all(context.screenHeight * 0.007),
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color(0xFFF1E9DA),
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        ),
      ],
    );
  }
}