import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'login_2.dart';
// import 'login_3.dart';
import 'login_5.dart';
class Login4 extends StatefulWidget {
  Login4({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Login4State createState() => _Login4State();
}

class _Login4State extends State<Login4> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 750, height: 1334)..init(context);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child:Text('返回'),
        onPressed: (){
          Navigator.of(context).pop();
        },
      ),
      appBar: AppBar(
        title: Text('第四页'),
      ),
      body: Container(
        padding: const EdgeInsets.fromLTRB(0.0, 80.0, 0.0, 0.0),
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(45.0, 0.0, 0.0, 10.0),
              child: Row(
                children: <Widget>[
                  Text(
                    '智鳗行   申请使用',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: ScreenUtil(allowFontScaling: false).setSp(44),
                        color: Colors.black),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(50.0, 20.0, 0.0, 0.0),
              child: Row(
                children: <Widget>[
                  Text(
                    '您的微信头像、昵称、地区和性别信息',
                  style:TextStyle(
                    fontSize:ScreenUtil(allowFontScaling:false).setSp(28),
                    fontWeight:FontWeight.bold,
                    color:Colors.black87),
                  ),
                ],
              ),
            ),
            // Container(
            //   width: 382.0,
            //   child: TextField(
            //     decoration: InputDecoration(
            //       icon: Icon(Icons.phone_android,color: Colors.pink,size:30.0),
            //       hintText: '请输入手机号：',
            //       labelText: ('请输入666：'),
            //     ),
            //     obscureText: false,
            //   ),
            // ),
            Container(
              margin: EdgeInsets.only(top: 154.0),
              height: ScreenUtil.getInstance().setHeight(105),
              width: ScreenUtil.getInstance().setWidth(345),
              child: MaterialButton(
                color: Color.fromRGBO(46, 48, 56, 1),
                child: Text('同意',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: ScreenUtil.getInstance().setSp(36.0),
                  ),
                ),
                onPressed: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context)=>Login2()
                    ),
                  );
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0),
              height: ScreenUtil.getInstance().setHeight(105),
              width: ScreenUtil.getInstance().setWidth(345),
              child: MaterialButton(
                color: Color.fromRGBO(128, 128, 128, 1),
                child: Text('拒绝',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: ScreenUtil.getInstance().setSp(36.0),
                  ),
                ),
                onPressed: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context)=>TabBarControllerPage()
                    ),
                  );
                },
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
