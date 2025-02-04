// ignore: file_names
import 'package:flutter/material.dart';

// ignore: camel_case_types
class Custom_button extends StatefulWidget {
  const Custom_button({super.key});

  @override
  State<Custom_button> createState() => _Custom_buttonState();
}

// ignore: camel_case_types
class _Custom_buttonState extends State<Custom_button> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey[300]!),
          shape:BoxShape.circle,
        ),
      child: IconButton(onPressed: (){
      }, icon:const Icon(Icons.search_outlined),
      splashRadius: 30,
      ),
    );
  }
}