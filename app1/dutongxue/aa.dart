import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'BB.dart';

class LoginPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage>{
  @override
  Widget build(BuildContext context){
    ScreenUtil.instance = ScreenUtil(width: 750, height: 1334)..init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('看见风'),
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
      height: ScreenUtil.getInstance().setHeight(800),
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
          Container(
            width: double.infinity,
            child: Text(
              '为了方便进行联系，请输入您常用的手机号',
              style: TextStyle(
                fontSize: ScreenUtil.getInstance().setSp(28),
                color: Colors.black38,
              ),
            ),
          ),
          new MaterialButton(
            child: Text('点击'),
            onPressed: (){
              Navigator.push(context, 
                MaterialPageRoute(
                  builder: (context){
                    return LoginPagee();
                  }
                )
              );
            },
          ),
        ],
      ),
    );
  }
}