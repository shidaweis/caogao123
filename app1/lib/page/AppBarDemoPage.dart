import 'package:flutter/material.dart';
// import '../login_4.dart';
import '../page/drawer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'app_listview2.dart';



class AppBarDemoPage extends StatefulWidget {
  AppBarDemoPage({Key key, this.title}) : super(key : key);
  final String title;
  @override
  _AppBarDemoPageState createState() => _AppBarDemoPageState();
}

class _AppBarDemoPageState extends State<AppBarDemoPage> {
  bool _offstage = true;


  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 750,height: 1334)..init(context);
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: _appBar(),
          body: Container(
            width: double.infinity,
            height: double.infinity,
            color: Color.fromRGBO(175, 237, 246, 1),
            child: Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment(1.0, 0.2),
                  child: MaterialButton(
                    child: Text('找桩'),
                    onPressed: (){
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder:(context) => Car_Listview2()
                        ),
                      );
                      // print('找桩');
                    },
                  ),
                ),
                floatbutton(),

                Align(
                  alignment: Alignment.center,
                  child: _firstWidget(),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: _secondWidget(),
                ),


              ],
            ),
          ),
          // body: TabBarView(
          //   children: <Widget>[
          //     ListView(
          //       children: <Widget>[
          //         ListTile(
          //           title: Text('第1个Tab'),
          //         ),
          //         ListTile(
          //           title: Text('第1个Tab'),
          //         ),
          //         ListTile(
          //           title: Text('第1个Tab'),
          //         ),
          //       ],
          //     ),
          //     ListView(
          //       children: <Widget>[
          //         ListTile(
          //           title: Text('第2个Tab'),
          //         ),
          //         ListTile(
          //           title: Text('第2个Tab'),
          //         ),
          //         ListTile(
          //           title: Text('第2个Tab'),
          //         ),
          //       ],
          //     ),
          //     ListView(
          //       children: <Widget>[
          //         ListTile(
          //           title: Text('第3个Tab'),
          //         ),
          //         ListTile(
          //           title: Text('第3个Tab'),
          //         ),
          //         ListTile(
          //           title: Text('第3个Tab'),
          //         ),
          //       ],
          //     ),
          //       ],
          //     ),

            
          drawer: DrawerPage(),
          
          endDrawer: Drawer(
            child: Text('右侧侧边栏'),
          ),
          // floatingActionButton:Container(
          //   // width: ScreenUtil.getInstance().setWidth(60.0),
          //   // height: ScreenUtil.getInstance().setHeight(60.0),
          //   width: 80.0,
          //   height:80.0,
          //   padding: EdgeInsets.all(5),
          //   margin: EdgeInsets.only(top:10),   //可以向下调整幅度；
          //   decoration: BoxDecoration(      //把container改造成圆形；
          //     borderRadius: BorderRadius.circular(40),
          //     color: Colors.red,
          //   ),
          //   child: FloatingActionButton(
          //     child: Icon(Icons.camera,size: 40,color: Colors.yellow,),
          //     // child: Image.asset('assets/icons/big_scan.png',),
          //     backgroundColor: Colors.blue,
          //     onPressed: (){
          //       print('FloatingActionButton');
          //     },
          //   ),
          // ),
          // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
          ),
        );
  }
  Widget floatbutton(){
    return Padding(
      padding: EdgeInsets.fromLTRB(1.0, 0, 1.0, 40.0),
      child: Container(
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Align(
              alignment: Alignment.bottomLeft,
              child: MaterialButton(
                child: Text('电单车',
                  style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(30),
                    color: Colors.black,
                  ),
                ),
                onPressed: (){
                  print('点击电单车');
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: BorderSide(
                    color: Colors.pink,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width:100.0,
                height: 200.0,
                child: Image.asset('assets/icons/big_scan.png'),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: MaterialButton(
                child: Text('电动汽车',
                  style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(30),
                    color: Colors.black,
                  ),
                ),
                onPressed: (){
                  print('点击电单车');
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: BorderSide(
                    color: Colors.pink,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

 _firstWidget(){
  return MaterialButton(
    child: Text('站点'),
    onPressed: (){
      setState(() {
        _offstage = !_offstage; 
      });
    },
  );
  }

 _secondWidget(){
    return Offstage(
      offstage:_offstage,
      child: Container(
        color: Colors.white70,
        padding: EdgeInsets.fromLTRB(10, 10, 10, 20),
        width: ScreenUtil.getInstance().setWidth(730),
        height: ScreenUtil.getInstance().setHeight(360),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              child: Row(
                children: <Widget>[
                  Text('城西银泰  充电站',
                    style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(30),
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(Icons.battery_charging_full),
                Text('充电桩总数'),
                Container(
                  padding: EdgeInsets.only(left: 20),
                  child: 
                    Text('6',
                      style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(20)),
                    ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 70),
                  child: Row(
                    children: <Widget>[
                      Text('导航'),
                      IconButton(
                        icon: Icon(Icons.arrow_right),
                        onPressed: (){
                          print('导航');
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(Icons.battery_charging_full,
                  color: Colors.orange,
                ),
                Text('充电桩总数'),
                Container(
                  padding: EdgeInsets.only(left: 20),
                  child: 
                    Text('4',
                      style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(20)),
                    ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 70),
                  child: Row(
                    children: <Widget>[
                      Text('预约'),
                      IconButton(
                        icon: Icon(Icons.arrow_right),
                        onPressed: (){
                          print('预约');
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              // padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Icon(Icons.email),
                      Text('1.5元/度'),
                      Container(
                        padding: EdgeInsets.fromLTRB(60, 0, 0, 0),
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.local_parking),
                            Text('免费停车1小时'), 
                          ],
                        ),
                      ),
                    ],
                    ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Icon(Icons.place),
                      Text('拱墅区萍水街158号'),
                    ],
                  ),
                ],
              ),
            ),
            
          ],
        ),
      ),
    );
  }

 _appBar(){
    return AppBar(
      title: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('杭州',
            style: TextStyle(
              fontSize: ScreenUtil.getInstance().setSp(38),
              color: Colors.black,
            ),),
            IconButton(
              icon: Icon(Icons.arrow_drop_down),
              color: Color.fromRGBO(46, 48, 56, 1),
              onPressed: (){
                print('选择城市');
              },
            ),
          ],
        ),
      ),
      // title: Text(
      //   '杭州666',
      //   textAlign: TextAlign.right,
      //   style: TextStyle(
      //     fontSize: ScreenUtil.getInstance().setSp(38),
      //     color: Colors.black,
      //   ),
      // ),
      centerTitle: false,
      backgroundColor: Colors.white,
      leading: IconButton(
        color: Colors.black,
        icon: Icon(Icons.people),
        onPressed: (){
          print('头像');
        },
      ),
      actions: <Widget>[
        Container(
          width: ScreenUtil.getInstance().setWidth(58.0),
          height: ScreenUtil.getInstance().setHeight(54.0),
          child: IconButton(
            // color: Colors.black,
            icon: Image.asset('assets/icons/icon_message.png'),
            onPressed: (){
              print('信息');
            },
          ),
        ),
        SizedBox(width: 10.0,),
        Container(
          width: ScreenUtil.getInstance().setWidth(58.0),
          height: ScreenUtil.getInstance().setHeight(54.0),
          child: IconButton(
            // color: Colors.black,
            icon: Image.asset('assets/icons/icon_scan.png'),
            onPressed: (){
              print('扫一扫');
              // debugPrint('down');
            },
          ),
        ),
        // IconButton(
        //   color: Colors.black,
        //   icon: Icon(Icons.message),
        //   onPressed: (){
        //     print('message');
        //   },
        // ),
        // IconButton(
        //   color: Colors.black,
        //   icon: Icon(Icons.delete_sweep),
        //   onPressed: (){
        //     print('settings');
        //   },
        // ),
      ],
      elevation: 0.0,        //appBar与body之间的阴影
      bottom: TabBar(
        // isScrollable: true,
        indicatorColor: Colors.orange,
        labelColor: Colors.orange,
        unselectedLabelColor: Colors.black,
        indicatorSize: TabBarIndicatorSize.label,
        tabs: <Widget>[
          Tab(
            child:Text(
                '充电',
                style: TextStyle(
                  fontSize: ScreenUtil.getInstance().setSp(34),
                  color: Color.fromRGBO(46, 48, 56, 1)
                ),
            ),
          ),
          Tab(
            child:Text(
                '停车',
                style: TextStyle(
                  fontSize: ScreenUtil.getInstance().setSp(34),
                  color: Color.fromRGBO(46, 48, 56, 1)
                ),
            ),
          ),
          Tab(
            child:Text(
                '用车',
                style: TextStyle(
                  fontSize: ScreenUtil.getInstance().setSp(34),
                  color: Color.fromRGBO(46, 48, 56, 1)
                ),
            ),
          ),
        ],
      ),
    );
  }
}








