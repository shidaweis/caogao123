import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StackPage extends StatefulWidget {
  StackPage({Key key, this.title}) : super(key : key);
  final String title;
  @override
  _StackPageState createState() => _StackPageState();
}

class _StackPageState extends State<StackPage> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 750,height: 1334)..init(context);
    // return Center(
    //   child: Stack(
    //     // alignment: Alignment.center,
    //     alignment:Alignment(0,0.5),
    //     children: <Widget>[
    //       Container(
    //         height: 400,
    //         width: 300,
    //         color: Colors.red,
    //       ),
    //       Text('一个666文本1',
    //         style: TextStyle(
    //           fontSize: 30,
    //           color: Colors.white
    //         ),
    //       ),
    //       Text('我是一个文本123'),
    //     ],
    //   ) , 
    // );
    return Center(
      child: Container(
        height: 400,
        width: 300,
        color: Colors.red,
        child: Stack(
          children: <Widget>[
            // Align(
            //   alignment: Alignment(1,-0.2),
            //   child:Icon(Icons.home,size: 40,color: Colors.white),
            // ),
            // Align(
            //   alignment: Alignment.center,
            //   child:Icon(Icons.search,size: 30,color: Colors.white),
            // ),
            // Align(
            //   alignment: Alignment.bottomRight,
            //   child:Icon(Icons.send,size: 60,color:Colors.orange),
            // ),


            Positioned(
              left: 10,
              child:Icon(Icons.home,size: 40,color: Colors.white),
            ),
            Positioned(
              bottom: 0,
              left: 100,
              child:Icon(Icons.search,size: 30,color: Colors.white),
            ),
            Positioned(
              right: 0,
              child:Icon(Icons.send,size: 60,color:Colors.orange),
            ),
          ],
        ),
      ),

    );
  }
}