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
          controllerText.text += "*";
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