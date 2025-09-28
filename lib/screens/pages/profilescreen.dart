import 'package:flutter/material.dart';
import 'package:lumore/components/buttons/borderbutton.dart';
import 'package:lumore/components/headers/home_appbar.dart';
import 'package:lumore/components/headers/profile_header.dart';
import 'package:lumore/components/profilecard.dart';
import 'package:lumore/constants/constant.dart';

class ProfileScreen extends StatelessWidget{
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        ProfileHeader(),
        Column(
          children:[
            Padding(
              padding: const EdgeInsets.only(top: 28.0,bottom: 10.0, left: 10.0, right: 10.0),
              child: Row(
                children:[
                  Container(
                    width: 90.0,
                    height: 90.0,
                    margin: EdgeInsets.all(context.screenHeight * 0.007),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF1E9DA),
                      shape: BoxShape.circle,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Row(
                        children: [
                          Text(
                            "user_name",
                            style: TextStyle(
                              fontSize: 28.0
                            ),
                          ),
                          Icon(
                              Icons.verified,
                              color: Colors.grey,
                              size: 20.0
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Colors.grey,
                            size: 20.0
                          ),
                          Text("0.00km"),
                        ],
                      )
                      ]
                    ),
                  ),
                ]
              ),


            ),
            EditProfileButton(
              text: "Edit Profile",
              icon: Icons.edit_outlined,
              onPressed: () {},
            ),

            ProfileCard(),


          ]
        )
      ],
    );
  }
}