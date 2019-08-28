import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'login_2.dart';


class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // final TextStyle _textStyle = TextStyle(fontSize:6.0,);
  // final String _author = '小明';
  // final String _title = '你好';

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 750, height: 1334)..init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        padding: const EdgeInsets.fromLTRB(0.0, 80.0, 0.0, 0.0),
        child: Column(
          children: <Widget>[
            // Text('请输入你的手机号：',textAlign:TextAlign.left,style: TextStyle(fontSize: 25),),
            // Text('($_author)——$_title,请输入你的手机号：',textAlign:TextAlign.left,style: _textStyle,),
            Container(
              padding: EdgeInsets.fromLTRB(45.0, 0.0, 0.0, 10.0),
              // height: 100.0,
              // width: 600,
              // decoration: BoxDecoration(
              //     color: Colors.white,
              //     border: Border.all(color: Colors.blue, width: 2.0)),
              // alignment: Alignment.topLeft,
              child: Row(
                children: <Widget>[
                  Text(
                    '请输入你的手机号：',
                    textAlign: TextAlign.left,
                    // style: TextStyle(fontSize: 20.0),
                    // style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(34)),
                    style: TextStyle(
                        fontSize: ScreenUtil(allowFontScaling: false).setSp(44),
                        // fontWeight: FontWeight.bold,
                        color: Colors.black),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(45.0, 0.0, 0.0, 0.0),
              child: Row(
                children: <Widget>[
                  Text(
                    '为了方便进行联系，请输入您常用的手机号',
                  style:TextStyle(
                    fontSize:ScreenUtil(allowFontScaling:false).setSp(28),
                    fontWeight:FontWeight.bold,
                    color:Colors.grey),
                  ),
                ],
              ),
            ),
            Container(
              width: 382.0,
              child: TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.phone_android,color: Colors.pink,size:30.0),
                  hintText: '请输入手机号：',
                  labelText: ('请输入666：'),
                ),
                obscureText: false,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 154.0),
              height: ScreenUtil.getInstance().setHeight(105),
              width: ScreenUtil.getInstance().setWidth(710),
              child: MaterialButton(
                color: Color.fromRGBO(46, 48, 56, 1),
                child: Text('下一步',
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
                      // builder: (context)=>Login2(title:'我是跳转传值')
                      builder: (context)=>Login2()
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 0.0),
              child: Text(
                '其他登录方式',
                style: TextStyle(
                  fontSize: ScreenUtil(allowFontScaling: false).setSp(29),
                  color: Colors.grey,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
              child: Column(
                children: <Widget>[
                  Image.asset('assets/weixin.png',width: 60.0,),
                ],
              ),
            ),
        
            // Container(
            //   padding: EdgeInsets.fromLTRB(50.0, 30.0, 0.0, 0.0),
            //   child: Center(
            //     child: Column(
            //       children: <Widget>[
            //         Text(
            //         '其它登录方式：',
            //       style:TextStyle(
            //         fontSize:ScreenUtil(allowFontScaling:false).setSp(28),
            //         // fontWeight:FontWeight.bold,
            //         color:Colors.grey),
            //       ),
            //       Padding(
            //         padding: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
            //       ),
            //       Image.asset('assets/weixin.png',width: 60.0,),
            //       ],
            //     ),
            //   ),
            // ),
           










            // RaisedButton(
            //   child: Text('下一步'),
            //   onPressed: (){
            //     Navigator.pushNamed(context, routeName)
            //   },
            // )

            // MaterialButton(
            //   child: Text('点击'),
            //   onPressed: (){
            //     Navigator.push(context,
            //     MaterialPageRoute(
            //       builder:(context){
            //         return Logini();
            //       }
            //     ));
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
