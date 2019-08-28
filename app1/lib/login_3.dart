import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'login_4.dart';

class Login3 extends StatefulWidget{
  Login3({Key key, this.title}) : super(key: key);
  final String title;
  // String title;
  // Login3({this.title = '表单'});
  @override
  _Login3State createState() => _Login3State();
}
class _Login3State extends State<Login3>{
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
        title: Text('第三页666'),
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
              padding: EdgeInsets.fromLTRB(45.0, 0.0, 10.0, 10.0),
              child: Row(
                children: <Widget>[
                  Text(
                    '获取验证码',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: ScreenUtil(allowFontScaling: false).setSp(44),
                        // fontWeight: FontWeight.bold,
                        color: Colors.black),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(45.0, 0.0, 30.0, 10.0),
              child: Row(
                children: <Widget>[
                  Text(
                    '验证码已发送到你的手机',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: ScreenUtil(allowFontScaling: false).setSp(28),
                        // fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(40, 0, 200, 0),
              child: Column(
                children: <Widget>[
                  TextField(//Flutter输入框填充背景颜色
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(style: BorderStyle.solid)
                ),
                // border: InputBorder.none,
                // fillColor: Colors.yellow,
                fillColor: Colors.white,
                filled: true,
                hintText: '请输入你的验证码',
                // labelText: '留下你的精彩评论吧',
                contentPadding: EdgeInsets.all(16.0),
              ),
              obscureText: true,
            ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(45.0, 120.0, 45.0, 0.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    '6位数字验证码',
                  style:TextStyle(
                    fontSize:ScreenUtil(allowFontScaling:false).setSp(28),
                    fontWeight:FontWeight.bold,
                    color:Colors.grey),
                  ),
                  Text(
                    '重新获取',
                  style:TextStyle(
                    fontSize:ScreenUtil(allowFontScaling:false).setSp(28),
                    // fontWeight:FontWeight.bold,
                    color:Colors.orange),
                  ),
                ],
              ),
            ),

            Container(
              // width: double.infinity,
              padding: EdgeInsets.fromLTRB(0, 20, 0, 20),

              // margin: EdgeInsets.only(top: 20.0),
              // height: ScreenUtil.getInstance().setHeight(150),
              // width: ScreenUtil.getInstance().setWidth(200),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    
                    children: <Widget>[
                      MaterialButton(
                        height: 60,
                        minWidth: 30,
                        // color: Color.fromRGBO(46, 48, 56, 1),
                        color:Colors.blue,
                        child: Text('数字'),
                        onPressed: (){

                        },
                      ),
                      MaterialButton(
                        height: 60,
                        minWidth: 30,
                        // color: Color.fromRGBO(46, 48, 56, 1),
                        color:Colors.blue,
                        child: Text('数字'),
                        onPressed: (){

                        },
                      ),
                      MaterialButton(
                        height: 60,
                        minWidth: 30,
                        // color: Color.fromRGBO(46, 48, 56, 1),
                        color:Colors.blue,
                        child: Text('数字'),
                        onPressed: (){

                        },
                      ),
                      MaterialButton(
                        height: 60,
                        minWidth: 30,
                        // color: Color.fromRGBO(46, 48, 56, 1),
                        color:Colors.blue,
                        child: Text('数字'),
                        onPressed: (){

                        },
                      ),
                      MaterialButton(
                        height: 60,
                        minWidth: 30,
                        // color: Color.fromRGBO(46, 48, 56, 1),
                        color:Colors.blue,
                        child: Text('数字'),
                        onPressed: (){

                        },
                      ),
                      MaterialButton(
                        height: 60,
                        minWidth: 30,
                        // color: Color.fromRGBO(46, 48, 56, 1),
                        color:Colors.blue,
                        child: Text('数字'),
                        onPressed: (){
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              // builder: (context)=>Login2(title:'我是跳转传值')
                              builder: (context)=>Login4()
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                  
                ],
              ),
            ),


            // Container(
            //   width: double.infinity,
            //   padding: EdgeInsets.fromLTRB(40, 40, 10, 0),
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.center,
            //     children: <Widget>[
            //       Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceAround,
            //           children: <Widget>[
                        
            //             MaterialButton(
            //               child: Text('data'),
            //             ),
            //             MaterialButton(
            //               child: Text('data'),
            //             ),
            //           ],
            //       )


            //     ],
            //   ),
            // ),

          ],
        ),
      ),
    );
  }
}




            