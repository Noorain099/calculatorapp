import 'package:calculatorapp/calculator.dart';
import 'package:calculatorapp/provider/calculatorprovider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp, // Only allow portrait
  ]).then((_) {
    runApp(const MyApp());
  });
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Calculatorprovider(),
      child: MaterialApp(
        title: 'Calculator App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
         
          
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        home: CalculatorScreen(),
      ),
    );
  }
}

