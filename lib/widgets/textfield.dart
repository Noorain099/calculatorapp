import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.controller});
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16,right: 16,bottom: 20),
      child: TextField(
        controller: controller,
        
        decoration: InputDecoration(
          enabled: true,
          border: InputBorder.none,
          fillColor: Colors.white,
          
        ),
        autofocus: true,
        textAlign: TextAlign.end,
        style: TextStyle(letterSpacing: 2,fontSize: 30,fontWeight: FontWeight.w600,color: Colors.black),
        showCursor: true,
        readOnly: true,
        
      ),
    );
  }
}