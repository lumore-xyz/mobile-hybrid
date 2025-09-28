import 'package:flutter/material.dart';

class AppbarwithBackarrowTitle extends StatelessWidget implements PreferredSizeWidget{
  final String text;
  const AppbarwithBackarrowTitle({required this.text, super.key});
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 9.0),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_back_ios, color: Colors.grey.shade500,),
            ),
          ),
          Text(text, style: TextStyle(fontSize: 24.0),),
        ],
      ),
    );
  }
  
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
