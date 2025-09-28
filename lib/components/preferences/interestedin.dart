import 'package:flutter/material.dart';
import 'package:lumore/components/buttons/borderbutton.dart';
import 'package:lumore/components/headers/editpageheader.dart';

class InterestedInPref extends StatelessWidget{
  const InterestedInPref({super.key,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            EditPageHeader(headerText: "Edit Interested In"),
            Expanded(
              child: Column(
        
              ),
            ),
            CustomBorderButton(text: "Save", onPressed: () {}, textColor: Colors.white, borderColor: Colors.deepPurple, backgroundColor: Colors.deepPurple,),
            CustomBorderButton(text: "Cancel", onPressed: () {})
          ],
        ),
      ),
    );
  }
}