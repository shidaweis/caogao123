import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'login_3.dart';

class Login2 extends StatefulWidget{
  Login2({Key key, this.title}) : super(key: key);
  final String title;
  // String title;
  // Login2({this.title = '表单'});
  @override
  _Login2State createState() => _Login2State();
}
class _Login2State extends State<Login2>{
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 750,height: 1334)..init(context);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child:Text('返回'),
        onPressed: (){
          Navigator.of(context).pop();
        },
      ),
      appBar: AppBar(
        title: Text('第二页'),
        // title: Text(this.title),
      ),
      // body: ListView(
      //   children: <Widget>[
      //     ListTile(
      //       title: Text('我是表单传值'),
      //     ),
      //   ],
      // ),
      body: Container(
        padding: const EdgeInsets.fromLTRB(0.0, 80.0, 0.0, 0.0),
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(45.0, 0.0, 0.0, 10.0),
              child: Row(
                children: <Widget>[
                  Text(
                    '请输入你的登录密码',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: ScreenUtil(allowFontScaling: false).setSp(44),
                        // fontWeight: FontWeight.bold,
                        color: Colors.black),
                  )
                ],
              ),
            ),
            Container(//方法一：
              // width: double.infinity,
              padding: EdgeInsets.fromLTRB(40, 0, 100, 0),
              child: Column(
                children: <Widget>[
                  TextField(//Flutter输入框填充背景颜色
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(style: BorderStyle.solid),
                ),
                // border: InputBorder.none,
                // fillColor: Colors.yellow,
                fillColor: Colors.white,
                filled: true,
                hintText: '请输入你的密码',
                // labelText: '留下你的精彩评论吧',
                contentPadding: EdgeInsets.all(16.0),
              ),
              obscureText: true,
            ),
                ],
              ),
            ),
            // TextField(//Flutter输入框填充背景颜色//方法二
              
            //   decoration: InputDecoration(
            //     border: OutlineInputBorder(
            //       borderSide: BorderSide(style: BorderStyle.solid)
            //     ),
            //     // border: InputBorder.none,
            //     // fillColor: Colors.yellow,
            //     fillColor: Colors.white,
            //     filled: true,
            //     // hintText: '留下你的精彩评论吧',
            //     labelText: '留下你的精彩评论吧',
            //     contentPadding: EdgeInsets.all(16.0),
            //   ),
            //   obscureText: true,
            // ),
                  
              
             




            // Container(
            //   // padding: EdgeInsets.fromLTRB(45.0, 0.0, 0.0, 0.0),
            //   child: Row(
            //     children: <Widget>[
            //       TextField(//Flutter输入框填充背景颜色
            //         decoration: InputDecoration(
            //           border: OutlineInputBorder(
            //             borderSide: BorderSide(style: BorderStyle.solid)
            //           ),
            //           // border: InputBorder.none,
            //           fillColor: Colors.yellow,
            //           filled: true,
            //           // hintText: '留下你的精彩评论吧',
            //           labelText: '留下你的精彩评论吧',
            //           contentPadding: EdgeInsets.all(16.0),
            //         ),
            //       ),
                  
            //     ],
            //   ),
            // ),






            Container(
              padding: EdgeInsets.fromLTRB(45.0, 80.0, 45.0, 0.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    '忘记密码',
                  style:TextStyle(
                    fontSize:ScreenUtil(allowFontScaling:false).setSp(28),
                    fontWeight:FontWeight.bold,
                    color:Colors.grey),
                  ),
                  Text(
                    '使用验证码登录',
                  style:TextStyle(
                    fontSize:ScreenUtil(allowFontScaling:false).setSp(28),
                    // fontWeight:FontWeight.bold,
                    color:Colors.orange),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 154.0),
              height: ScreenUtil.getInstance().setHeight(105),
              width: ScreenUtil.getInstance().setWidth(710),
              child: MaterialButton(
                color: Color.fromRGBO(46, 48, 56, 1),
                child: Text('确定',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: ScreenUtil.getInstance().setSp(36.0),
                  ),
                ),
                onPressed: (){
                  //路由跳转
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      // builder: (context)=>Login3(title:'我是跳转传值')
                      builder: (context)=>Login3()
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








