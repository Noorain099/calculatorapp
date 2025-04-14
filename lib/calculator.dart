import 'package:calculatorapp/provider/calculatorprovider.dart';
import 'package:calculatorapp/widgets/button.dart';
import 'package:calculatorapp/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CalculatorScreen extends StatelessWidget {
  const CalculatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Calculatorprovider>(
      builder: (context, provider, _) {
      return Scaffold(
        
        appBar: AppBar(
          title: Text("CALCULATOR APP",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,),),
          centerTitle: true,
        ),
        body: Column(
        
          children: [
            Expanded(
              flex: 4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomTextField(controller: provider.controllerText,),
                ],
              ),
            ),
           SizedBox(height: 10,),
            Expanded(
              flex:5,
              child: Padding(
                padding: const EdgeInsets.only(left: 8,right: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(children: [
                      MyButton(label: "C", textColor: const Color.fromARGB(255, 49, 96, 184),),
                      MyButton(label: "7", ),
                      MyButton(label: "4", ),
                      MyButton(label: "1", ),
                      MyButton(label: "%", textColor: const Color.fromARGB(255, 49, 96, 184), ),
                    ],),
                    Column(children: [
                      MyButton(label: "/", textColor: const Color.fromARGB(255, 49, 96, 184),),
                      MyButton(label: "8", ),
                      MyButton(label: "5", ),
                      MyButton(label: "2", ),
                      MyButton(label: "0", ),
                    ],),
                    Column(children: [
                      MyButton(label: "X", textColor: const Color.fromARGB(255, 49, 96, 184),),
                      MyButton(label: "9", ),
                      MyButton(label: "6", ),
                      MyButton(label: "3", ),
                      MyButton(label: ".", ),
                    ],),
                    Column(children: [
                      MyButton(label: "<-", textColor: const Color.fromARGB(255, 49, 96, 184), ),
                      MyButton(label: "-", textColor: const Color.fromARGB(255, 49, 96, 184),),
                      MyButton(label: "+", textColor: const Color.fromARGB(255, 49, 96, 184),),
                      MyButton(label: "=", textColor: Colors.white,height: 140,backgroundColor: const Color.fromARGB(255, 49, 96, 184), ),
                    ],),
                  ],
                ),
              ),
            )
          ],
        ),
      );
  });
  }
}