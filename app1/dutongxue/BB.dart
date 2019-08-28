import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPagee extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPagee>{
  @override
  Widget build(BuildContext context){
    ScreenUtil.instance = ScreenUtil(width: 750, height: 1334)..init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('bbb'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.blue),
            ),
            height: ScreenUtil.getInstance().setHeight(600),
            width: double.infinity,
          ),
            renderPlace()
        ],
      ),
    );
  }

  Widget renderPlace(){
    return  Container(
      width: ScreenUtil.getInstance().setWidth(568),
      height: ScreenUtil.getInstance().setHeight(118),
      child: Column(
        children: <Widget>[
          Container(
            // margin: const EdgeInsets.all(20.0),
            child: Text(
              '请输入手机号',
              style: TextStyle(
                fontSize: ScreenUtil.getInstance().setSp(40),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

        ],
      ),
    );
  }
}