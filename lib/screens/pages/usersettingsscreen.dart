import 'package:flutter/material.dart';
import 'package:lumore/components/buttons/borderbutton.dart';
import 'package:lumore/components/headers/appbarwith_backarrow_title.dart';
import 'package:lumore/components/textfeilds/filledtextfields.dart';

class UserSettingScreen extends StatelessWidget {
  const UserSettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column (
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppbarwithBackarrowTitle(text: "Settings"),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, top: 10.0),
            child: Text("User Settings", style: TextStyle(fontSize: 23.0)),
          ),

          FilledTextField(label: "Email", data: "Not Set"),
          FilledTextField(label: "Phone Number", data: "Not Set"),
          FilledTextField(label: "Wallet Address", data: "Not Set"),
          CustomBorderButton(text: "Logout", onPressed: () {},),
          CustomBorderButton(text: "Delete Account", onPressed: () {}, textColor: Colors.white, backgroundColor: Colors.red, borderColor: Colors.red,)
        ],
      )
    );
  }
}