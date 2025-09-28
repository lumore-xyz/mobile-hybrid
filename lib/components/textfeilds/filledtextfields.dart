import 'package:flutter/material.dart';

class FilledTextField extends StatelessWidget {
  final String label;
  final String data;
  const FilledTextField({
    required this.label,
    required this.data,
    super.key
  });

  @override
  Widget build(BuildContext context){
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(10.0),
      margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 7.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey.withOpacity(0.4),
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: TextStyle(fontSize: 14.0),),
          SizedBox(height: 4.0,),
          Text(data, style: TextStyle(fontSize: 14.0),),
        ],
      ),

    );
  }
}