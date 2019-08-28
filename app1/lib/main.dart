import 'package:app1/page/stack.dart';
import 'package:flutter/material.dart';
// import 'login_1.dart';
import 'page/AppBarDemoPage.dart';
// import 'page/stack.dart';
// import 'page/app_listview1.dart';
// import 'page/app_listview2.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {



// //登录界面1
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,//ture,
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(title: '您好，智鳗行'),
//     );

// 登录界面2
      return MaterialApp(
        title: '主界面入口',
        debugShowCheckedModeBanner: false,
        home: AppBarDemoPage(),


    );

//stack登录界面
      return MaterialApp(
        title: '主界面入口',
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(title:Text('Stack123'),
          ), 
        body: StackPage(),
        ),
        // home: StackPage(),
      );


// //登录界面3
//       return MaterialApp(
//         title: '车辆列表1',
//         debugShowCheckedModeBanner: false,
//         home: Scaffold(
//           body: Car_Listview1(),
//         )
        


    // );



// //登录界面4
//       return MaterialApp(
//         title: '车辆列表2',
//         debugShowCheckedModeBanner: false,
//         home: Scaffold(
//           body: Car_Listview2(),
//         )
        


//     );





  }
}












// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);

//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   // final TextStyle _textStyle = TextStyle(fontSize:6.0,);
//   // final String _author = '小明';
//   // final String _title = '你好';

//   @override
//   Widget build(BuildContext context) {
    
//     ScreenUtil.instance = ScreenUtil(width: 750,height: 1334)..init(context);
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Container(
//         padding: const EdgeInsets.fromLTRB(0.0, 80.0, 0.0, 20.0),
//         child: Column(
//           children: <Widget>[
//             // Text('请输入你的手机号：',textAlign:TextAlign.left,style: TextStyle(fontSize: 25),),
//             // Text('($_author)——$_title,请输入你的手机号：',textAlign:TextAlign.left,style: _textStyle,),
//             Text(
//               '请输入你的手机号666：',
//               textAlign: TextAlign.left,
//               style: TextStyle(fontSize: 20.0),
//             ),
//             Text(
//               '为了方便进行联系，请输入您常D用的手机号',
//               textAlign: TextAlign.center,
//             ),

//             const TextField(
//               keyboardType: TextInputType.number,
//               decoration: InputDecoration(
//                 icon: Icon(
//                   Icons.lock,
//                   color: Colors.pink,
//                   size: 30.0,
//                 ),
//                 // labelText: ('请输入密码：')
//               ),
//               obscureText: true,

//               maxLength: 11,
//               maxLines: 1,
//               textAlign: TextAlign.center, //文本对齐方式
//               style: TextStyle(fontSize: 30.0, color: Colors.blue), //输入文本的样式
//             ),
//             Row(
//               children: <Widget>[
//                 Expanded(
//                   child: RaisedButton(
//                     onPressed: null,
//                     child: Text('下一步',style: TextStyle(fontSize: 30.0,)),
//                   ),
//                 ),
//               ],
//             ),
//             Image.asset(
//               'assets/weixin.png',
//               width: 60.0,
//             ),
//           ],
//         ),
//       ),

//       // Center(

//       //   child: Column(

//       //     mainAxisAlignment: MainAxisAlignment.center,
//       //     children: <Widget>[
//       //       Text(
//       //         'You have pushed the button this many times:',
//       //       ),
//       //       Text(
//       //         '$_counter',
//       //         style: Theme.of(context).textTheme.display1,
//       //       ),
//       //     ],
//       //   ),
//       // ),
//       // floatingActionButton: FloatingActionButton(
//       //   onPressed: _incrementCounter,
//       //   tooltip: 'Increment',
//       //   child: Icon(Icons.add),
//       // ),
//     );
//   }
// }
