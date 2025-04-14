
import 'package:calculatorapp/provider/calculatorprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyButton extends StatelessWidget {
  final String label;
  final double ?height;
  final Color? textColor;
  final Color? backgroundColor;
  const MyButton({super.key, 
    required this.label,
    this.height, 
    this.textColor, 
    this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
          width: 65,
          height: height,
          child: ElevatedButton(onPressed: (){
            Provider.of<Calculatorprovider>(context, listen: false).setValue(label);
          }, 
          style: ElevatedButton.styleFrom(
            backgroundColor: backgroundColor,
            minimumSize: Size(200, 60),
            
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18))
            
            
          ),
          child: FittedBox(
            fit: BoxFit.scaleDown,
            
            child: Text(label,
            textAlign: TextAlign.center,
            
            style: TextStyle(
              overflow: TextOverflow.ellipsis,
              
              color: textColor,height: 2,fontSize: 24,fontWeight: FontWeight.w600,),softWrap: false,maxLines: 1,),
          )),
      ),
    );
  }
}