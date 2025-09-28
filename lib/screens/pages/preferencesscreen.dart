import 'package:flutter/material.dart';
import 'package:lumore/components/headers/appbarwith_backarrow_title.dart';
import 'package:lumore/components/textfeilds/filledtextfields.dart';

class PreferenceScreen extends StatelessWidget{
  const PreferenceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          AppbarwithBackarrowTitle(text: "Edit Preferences"),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 16.0, top: 10.0 ),
                    child: Text("Edit Preferences", style: TextStyle(fontSize: 23.0),),
                  ),
                  FilledTextField(label: "Interested In", data: "Any"),
                  FilledTextField(label: "Age Range", data: "18 - 50 years"),
                  FilledTextField(label: "Maximum Distance", data: "100 km"),
                  FilledTextField(label: "Goals", data: "Primary: Undecided\nSecondary: Undecided\nTertiary: Undecided"),
                  FilledTextField(label: "Interests", data: "None"),
                  FilledTextField(label: "Relationship Type", data: "Not Specified"),
                  FilledTextField(label: "Preferred Languages", data: "Not Set"),
                  FilledTextField(label: "Zodiac Preferences", data: "Any"),
                  FilledTextField(label: "Education Preferences", data: "Minimum Degree: No Preference\nInstitutions: Not set"),
                  FilledTextField(label: "Personality Type Preferences", data: "Any"),
                  FilledTextField(label: "Diet Preferences", data: "Any"),
                  SizedBox(height: 20.0,)
                ],
              ),
            ),
          ),
        ],
      )
    );
  }
}