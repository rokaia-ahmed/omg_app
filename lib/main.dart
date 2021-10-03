import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:omg/models.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home:OmgApp() ,
    );
  }
}
class OmgApp extends StatefulWidget {
  const OmgApp({Key? key}) : super(key: key);

  @override
  _OmgAppState createState() => _OmgAppState();
}

class _OmgAppState extends State<OmgApp> {
  Model model = Model();
  int num = 0 ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text('RX  وصفه طبيه',
          style: TextStyle(
            fontSize: 30.0,
            color: Colors.black,
            fontFamily: 'lobster',
          ),
        ),
      ),
       body: Padding(
         padding: const EdgeInsets.all(20.0),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
             mainAxisAlignment:MainAxisAlignment.values[4] ,
             children: [
               Container(
                 color: Colors.black,
                 height: 1.0,
                 width: double.infinity,
               ),
               Text('patient name : ${model.name[num]}',
                 style: TextStyle(
                   fontSize: 30.0
                 ),
               ),
               Text('check : ${model.check[num]}',
                 style: TextStyle(
                     fontSize: 30.0
                 ),
               ),
               Text(' Treatment :${model.treatment[num]} ',
                 style: TextStyle(
                     fontSize: 30.0
                 ),
               ),
               Row(
                 children: [
                   Text('signature :',
                     style: TextStyle(
                         fontSize: 30.0
                     ),
                   ),
                   Text(' Rokaia',
                     style: TextStyle(
                       fontSize: 30.0,
                       fontFamily:'allison' ,
                       color: Colors.blue,
                     ),
                   ),
                 ],
               ),
               Container(
                 width: 150,
                 child: MaterialButton(
                   onPressed: (){
                     setState(() {
                       num = Random().nextInt(3) ;
                     });
                   },
                   color: Colors.grey[300],
                   child:Row(
                     children: [
                       Icon(Icons.videogame_asset),
                       SizedBox(
                         width: 10,
                       ),
                       Text('Tap to play',
                         style: TextStyle(),
                       ),
                     ],
                   ) ,
                 ),
               ),
             ],
         ),
       ),
    );
  }

}

