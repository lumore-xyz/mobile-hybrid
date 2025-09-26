import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lumore/constants/constant.dart';

class Heading extends StatelessWidget {
  const Heading({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: context.screenHeight* 0.025),
      child: SvgPicture.asset(
        'assets/lumore-hr.svg',
        height: 40,
        width: 40,
      ),
    );
  }
}