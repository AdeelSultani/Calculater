import 'dart:async';


import 'package:flutter/material.dart';

import 'calui.dart';

class Splashscreen extends StatefulWidget{
  @override
  State<Splashscreen> createState() => _splashState();
}

class _splashState extends State<Splashscreen> {

  @override
  void initState() {
    ///timer function called
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => Caluculaterscreen()));
    }
    );
  }
  @override

  Widget build(BuildContext context) {
   return Scaffold(
     body: Container(
       color: Colors.deepOrange,
       child: Center(
         child: Text("Calculater",
           style: TextStyle(
               fontSize: 35,color: Colors.black,fontWeight: FontWeight.bold),),

       ),

     ),
   );

   }

}