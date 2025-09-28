import 'package:flutter/material.dart';

class EditPageHeader extends StatelessWidget implements PreferredSizeWidget{
  final String headerText;
  final VoidCallback? onClose;

  const EditPageHeader({
    super.key,
    required this.headerText,
    this.onClose,
  });
  
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Opacity(opacity: 0, child: Icon(Icons.clear),),
        Expanded(
          child: Text(
            headerText,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        IconButton(
          icon: Icon(Icons.clear, size: 15.0,),
          onPressed: onClose ??
              () {
            if (Navigator.canPop(context)) {
              Navigator.pop(context);
            };
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}