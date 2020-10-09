/*
  Sabrina Karen
*/

import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  GlobalKey formKey;
  TextEditingController codeController;

  @override
  Widget build(BuildContext context) {

    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Container(
          alignment: Alignment.center,
          child: Form(
            key: formKey,
            child: PinCodeTextField(
              appContext: context,
              length: 6,
              obscureText: false,
              animationType: AnimationType.fade,
              animationDuration: Duration(milliseconds: 300),
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.box,
                borderRadius: BorderRadius.circular(3),
                fieldHeight: screenHeight * 0.065,
                fieldWidth: screenWidth * 0.1,
                activeFillColor: Colors.white,
              ),
              controller: codeController,
              keyboardType: TextInputType.number,
              onChanged: (value) {
                print("Valor alterado: " + value);
              },
              onCompleted: (value) {
                print("Todos os campos foram preenchidos: " + value);
              },
            ),
          ),
        ),
      ),
    );

  }

}