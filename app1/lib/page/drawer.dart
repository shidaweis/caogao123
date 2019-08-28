import 'package:flutter/material.dart';
import '../login_4.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DrawerPage extends StatefulWidget {
  DrawerPage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _DrawerPageState createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 750, height: 1334)..init(context);
    return Drawer(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: UserAccountsDrawerHeader(
                  accountName: Text('史大伟'),
                  accountEmail: Text('666@qq.com'),
                  currentAccountPicture: CircleAvatar(
                    //圆角头像组件
                    backgroundImage: NetworkImage(
                        'https://www.itying.com/images/flutter/1.png'),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://www.itying.com/images/flutter/5.png'),
                        fit: BoxFit.cover,
                      )),
                  otherAccountsPictures: <Widget>[
                    Image.network('https://www.itying.com/images/flutter/6.png')
                  ],
                ),
              ),
            ],
          ),
          // Row(
          //   children: <Widget>[
          //     Expanded(
          //       child: DrawerHeader(
          //         child: Text('您好，flutterDrawerHeader'),
          //         decoration: BoxDecoration(
          //           // color: Colors.yellow
          //           image: DecorationImage(
          //             image: NetworkImage('https://www.itying.com/images/flutter/2.png'),
          //             fit: BoxFit.cover,
          //           ),
          //         ),
          //       ),
          //     ),
          //   ],
          // ),
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.home),
            ),
            title: Text('我的空间'),
          ),
          Divider(), //加下划线组件
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.people),
            ),
            title: Text('用户中心'),
            //方法一：
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => Login4()),
              );
            },
            //方法二：
            // onTap: (){
            //   Navigator.of(context).pop();
            //   Navigator.pushNamed(context, 'Userpage');//这不是配置多重多路路由实现而来。（本例子没有配置）
            // },
          ),
          Divider(),
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.settings_applications),
            ),
            title: Text('设置中心'),
          ),
          Divider(),
        ],
      ),
    );
  }
}

// drawer: Drawer(
//   child: Column(
//     children: <Widget>[

//       Row(
//         children: <Widget>[
//           Expanded(
//             child: UserAccountsDrawerHeader(
//               accountName: Text('史大伟'),
//               accountEmail: Text('666@qq.com'),
//               currentAccountPicture: CircleAvatar(    //圆角头像组件
//                 backgroundImage: NetworkImage('https://www.itying.com/images/flutter/1.png'),
//               ),
//               decoration: BoxDecoration(
//                 color: Colors.blueGrey,
//                 image: DecorationImage(
//                   image: NetworkImage('https://www.itying.com/images/flutter/5.png'),
//                   fit: BoxFit.cover,
//                 )
//               ),
//               otherAccountsPictures: <Widget>[
//                 Image.network('https://www.itying.com/images/flutter/6.png')
//               ],
//             ),
//           ),
//         ],
//       ),
//       // Row(
//       //   children: <Widget>[
//       //     Expanded(
//       //       child: DrawerHeader(
//       //         child: Text('您好，flutterDrawerHeader'),
//       //         decoration: BoxDecoration(
//       //           // color: Colors.yellow
//       //           image: DecorationImage(
//       //             image: NetworkImage('https://www.itying.com/images/flutter/2.png'),
//       //             fit: BoxFit.cover,
//       //           ),
//       //         ),
//       //       ),
//       //     ),
//       //   ],
//       // ),
//       ListTile(
//         leading: CircleAvatar(
//           child: Icon(Icons.home),
//         ),
//         title: Text('我的空间'),
//       ),
//       Divider(),    //加下划线组件
//       ListTile(
//         leading: CircleAvatar(
//           child: Icon(Icons.people),
//         ),
//         title: Text('用户中心'),
//         //方法一：
//         onTap: (){
//           Navigator.of(context).pop();
//           Navigator.of(context).push(
//             MaterialPageRoute(
//               builder:(context)=>Login4()
//             ),
//           );
//         },
//         //方法二：
//         // onTap: (){
//         //   Navigator.of(context).pop();
//         //   Navigator.pushNamed(context, 'Userpage');//这不是配置多重多路路由实现而来。（本例子没有配置）
//         // },
//       ),
//       Divider(),
//       ListTile(
//         leading: CircleAvatar(
//           child: Icon(Icons.settings_applications),
//         ),
//         title: Text('设置中心'),
//       ),
//       Divider(),
//     ],
//   ),
// ),
// endDrawer: Drawer(
//   child: Text('右侧侧边栏'),
// ),











////////新页

// import 'package:flutter/material.dart';
// // import '../login_4.dart';
// import '../page/drawer.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';



// class AppBarDemoPage extends StatefulWidget {
//   AppBarDemoPage({Key key, this.title}) : super(key : key);
//   final String title;
//   @override
//   _AppBarDemoPageState createState() => _AppBarDemoPageState();
// }

// class _AppBarDemoPageState extends State<AppBarDemoPage> {

//   @override
//   Widget build(BuildContext context) {
//     ScreenUtil.instance = ScreenUtil(width: 750,height: 1334)..init(context);
//     return DefaultTabController(
//       length: 3,
//       child: Scaffold(
//           appBar: AppBar(
//             title: Container(
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   Text('杭州',
//                   style: TextStyle(
//                     fontSize: ScreenUtil.getInstance().setSp(38),
//                     color: Colors.black,
//                   ),),
//                   IconButton(
//                     icon: Icon(Icons.arrow_drop_down),
//                     color: Color.fromRGBO(46, 48, 56, 1),
//                     onPressed: (){
//                       print('选择城市');
//                     },
//                   ),
//                 ],
//               ),
//             ),
//             // title: Text(
//             //   '杭州666',
//             //   textAlign: TextAlign.right,
//             //   style: TextStyle(
//             //     fontSize: ScreenUtil.getInstance().setSp(38),
//             //     color: Colors.black,
//             //   ),
//             // ),
//             centerTitle: false,
//             backgroundColor: Colors.white,
//             leading: IconButton(
//               color: Colors.black,
//               icon: Icon(Icons.people),
//               onPressed: (){
//                 print('头像');
//               },
//             ),
//             actions: <Widget>[
//               Container(
//                 width: ScreenUtil.getInstance().setWidth(58.0),
//                 height: ScreenUtil.getInstance().setHeight(54.0),
//                 child: IconButton(
//                   // color: Colors.black,
//                   icon: Image.asset('assets/icons/icon_message.png'),
//                   onPressed: (){
//                     print('信息');
//                   },
//                 ),
//               ),
//               SizedBox(width: 10.0,),
//               Container(
//                 width: ScreenUtil.getInstance().setWidth(58.0),
//                 height: ScreenUtil.getInstance().setHeight(54.0),
//                 child: IconButton(
//                   // color: Colors.black,
//                   icon: Image.asset('assets/icons/icon_scan.png'),
//                   onPressed: (){
//                     print('扫一扫');
//                     // debugPrint('down');
//                   },
//                 ),
//               ),
//               // IconButton(
//               //   color: Colors.black,
//               //   icon: Icon(Icons.message),
//               //   onPressed: (){
//               //     print('message');
//               //   },
//               // ),
//               // IconButton(
//               //   color: Colors.black,
//               //   icon: Icon(Icons.delete_sweep),
//               //   onPressed: (){
//               //     print('settings');
//               //   },
//               // ),
//             ],
//             elevation: 0.0,        //appBar与body之间的阴影
//             bottom: TabBar(
//               // isScrollable: true,
//               indicatorColor: Colors.orange,
//               labelColor: Colors.orange,
//               unselectedLabelColor: Colors.black,
//               indicatorSize: TabBarIndicatorSize.label,
//               tabs: <Widget>[
//                 Tab(
//                   child:Text(
//                       '充电666',
//                       style: TextStyle(
//                         fontSize: ScreenUtil.getInstance().setSp(34),
//                         color: Color.fromRGBO(46, 48, 56, 1)
//                       ),
//                   ),
//                 ),
//                 Tab(
//                   child:Text(
//                       '停车',
//                       style: TextStyle(
//                         fontSize: ScreenUtil.getInstance().setSp(34),
//                         color: Color.fromRGBO(46, 48, 56, 1)
//                       ),
//                   ),
//                 ),
//                 Tab(
//                   child:Text(
//                       '用车',
//                       style: TextStyle(
//                         fontSize: ScreenUtil.getInstance().setSp(34),
//                         color: Color.fromRGBO(46, 48, 56, 1)
//                       ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           body: TabBarView(
//             children: <Widget>[
//               ListView(
//                 children: <Widget>[
//                   ListTile(
//                     title: Text('第1个Tab'),
//                   ),
//                   ListTile(
//                     title: Text('第1个Tab'),
//                   ),
//                   ListTile(
//                     title: Text('第1个Tab'),
//                   ),
//                 ],
//               ),
//               ListView(
//                 children: <Widget>[
//                   ListTile(
//                     title: Text('第2个Tab'),
//                   ),
//                   ListTile(
//                     title: Text('第2个Tab'),
//                   ),
//                   ListTile(
//                     title: Text('第2个Tab'),
//                   ),
//                 ],
//               ),
//               ListView(
//                 children: <Widget>[
//                   ListTile(
//                     title: Text('第3个Tab'),
//                   ),
//                   ListTile(
//                     title: Text('第3个Tab'),
//                   ),
//                   ListTile(
//                     title: Text('第3个Tab'),
//                   ),
//                 ],
//               ),
//                 ],
//               ),
//           drawer: DrawerPage(),
//           // drawer: Drawer(
//           //   child: Column(
//           //     children: <Widget>[

//           //       Row(
//           //         children: <Widget>[
//           //           Expanded(
//           //             child: UserAccountsDrawerHeader(
//           //               accountName: Text('史大伟'),
//           //               accountEmail: Text('666@qq.com'),
//           //               currentAccountPicture: CircleAvatar(    //圆角头像组件
//           //                 backgroundImage: NetworkImage('https://www.itying.com/images/flutter/1.png'),
//           //               ),
//           //               decoration: BoxDecoration(
//           //                 color: Colors.blueGrey,
//           //                 image: DecorationImage(
//           //                   image: NetworkImage('https://www.itying.com/images/flutter/5.png'),
//           //                   fit: BoxFit.cover,
//           //                 )
//           //               ),
//           //               otherAccountsPictures: <Widget>[
//           //                 Image.network('https://www.itying.com/images/flutter/6.png')
//           //               ],
//           //             ),
//           //           ),
//           //         ],
//           //       ),
//           //       // Row(
//           //       //   children: <Widget>[
//           //       //     Expanded(
//           //       //       child: DrawerHeader(
//           //       //         child: Text('您好，flutterDrawerHeader'),
//           //       //         decoration: BoxDecoration(
//           //       //           // color: Colors.yellow
//           //       //           image: DecorationImage(
//           //       //             image: NetworkImage('https://www.itying.com/images/flutter/2.png'),
//           //       //             fit: BoxFit.cover,
//           //       //           ),  
//           //       //         ),
//           //       //       ),
//           //       //     ),
//           //       //   ],
//           //       // ),
//           //       ListTile(
//           //         leading: CircleAvatar(
//           //           child: Icon(Icons.home),
//           //         ),
//           //         title: Text('我的空间'),
//           //       ),
//           //       Divider(),    //加下划线组件
//           //       ListTile(
//           //         leading: CircleAvatar(
//           //           child: Icon(Icons.people),
//           //         ),
//           //         title: Text('用户中心'),
//           //         //方法一：
//           //         onTap: (){
//           //           Navigator.of(context).pop();
//           //           Navigator.of(context).push(
//           //             MaterialPageRoute(
//           //               builder:(context)=>Login4()
//           //             ),
//           //           );
//           //         },
//           //         //方法二：
//           //         // onTap: (){
//           //         //   Navigator.of(context).pop();
//           //         //   Navigator.pushNamed(context, 'Userpage');//这不是配置多重多路路由实现而来。（本例子没有配置）
//           //         // },
//           //       ),
//           //       Divider(), 
//           //       ListTile(
//           //         leading: CircleAvatar(
//           //           child: Icon(Icons.settings_applications),
//           //         ),
//           //         title: Text('设置中心'),
//           //       ),
//           //       Divider(), 
//           //     ],
//           //   ),
//           // ),
//           endDrawer: Drawer(
//             child: Text('右侧侧边栏'),
//           ),
//           floatingActionButton:FloatingActionButton(
//             child: Icon(Icons.camera,size: 40,color: Colors.white,),
//             // child: Image.asset('assets/icons/big_scan.png',),
//             backgroundColor: Colors.grey,
//             onPressed: (){
//               print('FloatingActionButton');
//             },
//           ),
//           floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
//           ),
//         );
//   }
// }








