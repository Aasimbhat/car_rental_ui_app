import 'package:flutter/material.dart';

class Attribute extends StatelessWidget {
  const Attribute({
    Key? key,
    required this.name,
    required this.value,

  }) : super(key: key);

  final String name,value;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(name,
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          // fontWeight: FontWeight.w500

        ),
        
        ),
               Text('Brand',
        style: TextStyle(
          color: Colors.white,
          fontSize: 12,
          fontWeight: FontWeight.w500

        ),
        
        ),

      ],
    );
  }
}