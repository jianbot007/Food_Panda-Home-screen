import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ifood/Screen/HomePage.dart';

class Ontap extends StatefulWidget{

  late String resName;
  Ontap({required this.resName});
  _Ontap createState() => _Ontap();

}


class _Ontap extends State<Ontap>{
  final Homepage screen = Homepage();
  String data = '';

  @override
 void initState() {
    super.initState();
    data = widget.resName;
  }
  Widget build(BuildContext context) {
   return Scaffold(
       backgroundColor: Colors.white,
   body: SingleChildScrollView(
   child: Column(
   children: [
   Container(
   color: Colors.pink,
   height: 170,
   child: Column(
   children: [
   SizedBox(
   height: 30,
   ),
    screen.AppBar1(context),
    screen.AppBar2(),
    ],
    )),
     body1(),
  ]),
   ));
  }

  body1() {
    return Column(
      children: [
        Container(
            child: Text("$data is available Right Now",style: TextStyle(
              color: Colors.black38,fontWeight: FontWeight.bold,fontSize: 23,
            ),)
        ),
        Container(
        ),


        ElevatedButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(
            builder: (context) => Homepage(),
          ),);
        },
            child: Text("Back"))
      ],
    );
  }


}