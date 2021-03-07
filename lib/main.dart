import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.black,
    body: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[

          buttonDesign(1, Colors.red),
          buttonDesign(2, Colors.orange),
          buttonDesign(3, Colors.yellow),
          buttonDesign(4, Colors.green),
          buttonDesign(5, Colors.teal),
          buttonDesign(6, Colors.blue),
          buttonDesign(7, Colors.purple),
        ],
      ),
    )
    ),
    );
  }

  void flatAction(int soundNumber)
  {
     final audioce = new AudioCache();
    audioce.play('note$soundNumber.wav');
  }
  Expanded buttonDesign(int flatNo,Color colorname)
 {

  return Expanded(

     child: FlatButton(onPressed: (){

       flatAction(flatNo);
     },
       color: colorname,
     ),
   );
  
 }

}








