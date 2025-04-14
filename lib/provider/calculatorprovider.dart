import 'package:flutter/material.dart';
import 'package:function_tree/function_tree.dart';

class Calculatorprovider extends ChangeNotifier{
  final controllerText = TextEditingController();
  

   

  setValue(String value){
    String str = controllerText.text;
    switch(value){
        case "C" : 
          controllerText.clear();
          break;
        case "<-" :
          controllerText.text = str.substring(0,str.length -1);
          break;
        case "X" :
          if(str.isNotEmpty){
            controllerText.text += "*";
            }
          break;
        case "/" :
        case "+" :
        case "%" :  
          if(str.isNotEmpty && RegExp(r'^-?\d+?$').hasMatch(str)){
            controllerText.text += value;
          }
          
          break;
        case "=" :
          compute();
          break;

          default : 
            controllerText.text += value;
            break;
         
    }
  }
  

  compute(){
    String text = controllerText.text;
    controllerText.text= text.interpret().toString();
  }

   
}