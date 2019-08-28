import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'listData.dart';

class Car_Listview2 extends StatefulWidget {
  Car_Listview2({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _Car_Listview2State createState() => _Car_Listview2State();
}

class _Car_Listview2State extends State<Car_Listview2> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 750, height: 1334)..init(context);
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         leading:IconButton(
//           icon: Icon(Icons.arrow_back,color: Colors.blue,size: 20,),
//           onPressed: (){
//             // Navigator.of(context).pop();
//             print('返回');
//           },
//         ),

//       ),
//       body: ListView(

//       ),
//     );
//   }
// }
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.blue,
              size: 20,
            ),
            onPressed: () {
              Navigator.of(context).pop();
              // print('返回');
            },
          ),
          title: Container(
            child: Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
          actions: <Widget>[
            Row(
              children: <Widget>[
                Text(
                  '杭州',
                  style: TextStyle(color: Colors.black),
                ),
                IconButton(
                  icon: Icon(
                    Icons.arrow_drop_down,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    print('城市选择');
                  },
                ),
              ],
            ),
          ],
          elevation: 0.0,
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                child: Text(
                  '车辆列表',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
            indicatorColor: Colors.white,
          ),
        ),
        body: ListView(
          children: <Widget>[
            

            ListTile(
        // title:Text('我是第$i个列表'),
              title:Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(8),
                      child: Row(
                        children: <Widget>[
                          Text('城西银泰',
                            style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(33)),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(Icons.battery_charging_full),
                        Text('总车数',style: TextStyle(fontSize:ScreenUtil.getInstance().setSp(30)),),
                        Container(
                          padding: EdgeInsets.only(left: 40.0),
                          child: Row(
                            children: <Widget>[
                              Text('6',style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(40)),),
                            ],
                          ),
                        ),
                        
                        Container(
                          padding: EdgeInsets.only(left: 60.0,right: 0),
                          // margin: EdgeInsets.only(left:10.0,right: 0.0),
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
                        Icon(Icons.battery_std,
                          color: Colors.orange,
                        ),
                        Text('空闲车',style: TextStyle(fontSize:ScreenUtil.getInstance().setSp(30)),),
                        Container(
                          padding: EdgeInsets.only(left: 40.0),
                          child: Row(
                            children: <Widget>[
                              Text('4',style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(40)),),
                            ],
                          ),
                        ),
                        
                        Container(
                          padding: EdgeInsets.only(left: 60.0,right: 0),
                          // margin: EdgeInsets.only(left:10.0,right: 0.0),
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
                      padding: EdgeInsets.all(8),
                      child: Row(
                        children: <Widget>[
                          Text('城西银泰',
                            style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(33)),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(Icons.battery_charging_full),
                        Text('总车数',style: TextStyle(fontSize:ScreenUtil.getInstance().setSp(30)),),
                        Container(
                          padding: EdgeInsets.only(left: 40.0),
                          child: Row(
                            children: <Widget>[
                              Text('6',style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(40)),),
                            ],
                          ),
                        ),
                        
                        Container(
                          padding: EdgeInsets.only(left: 60.0,right: 0),
                          // margin: EdgeInsets.only(left:10.0,right: 0.0),
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
                        Icon(Icons.battery_std,
                          color: Colors.orange,
                        ),
                        Text('空闲车',style: TextStyle(fontSize:ScreenUtil.getInstance().setSp(30)),),
                        Container(
                          padding: EdgeInsets.only(left: 40.0),
                          child: Row(
                            children: <Widget>[
                              Text('4',style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(40)),),
                            ],
                          ),
                        ),
                        
                        Container(
                          padding: EdgeInsets.only(left: 60.0,right: 0),
                          // margin: EdgeInsets.only(left:10.0,right: 0.0),
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
                      padding: EdgeInsets.all(8),
                      child: Row(
                        children: <Widget>[
                          Text('城西银泰',
                            style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(33)),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(Icons.battery_charging_full),
                        Text('总车数',style: TextStyle(fontSize:ScreenUtil.getInstance().setSp(30)),),
                        Container(
                          padding: EdgeInsets.only(left: 40.0),
                          child: Row(
                            children: <Widget>[
                              Text('6',style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(40)),),
                            ],
                          ),
                        ),
                        
                        Container(
                          padding: EdgeInsets.only(left: 60.0,right: 0),
                          // margin: EdgeInsets.only(left:10.0,right: 0.0),
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
                        Icon(Icons.battery_std,
                          color: Colors.orange,
                        ),
                        Text('空闲车',style: TextStyle(fontSize:ScreenUtil.getInstance().setSp(30)),),
                        Container(
                          padding: EdgeInsets.only(left: 40.0),
                          child: Row(
                            children: <Widget>[
                              Text('4',style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(40)),),
                            ],
                          ),
                        ),
                        
                        Container(
                          padding: EdgeInsets.only(left: 60.0,right: 0),
                          // margin: EdgeInsets.only(left:10.0,right: 0.0),
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
                      padding: EdgeInsets.all(8),
                      child: Row(
                        children: <Widget>[
                          Text('城西银泰',
                            style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(33)),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(Icons.battery_charging_full),
                        Text('总车数',style: TextStyle(fontSize:ScreenUtil.getInstance().setSp(30)),),
                        Container(
                          padding: EdgeInsets.only(left: 40.0),
                          child: Row(
                            children: <Widget>[
                              Text('6',style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(40)),),
                            ],
                          ),
                        ),
                        
                        Container(
                          padding: EdgeInsets.only(left: 60.0,right: 0),
                          // margin: EdgeInsets.only(left:10.0,right: 0.0),
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
                        Icon(Icons.battery_std,
                          color: Colors.orange,
                        ),
                        Text('空闲车',style: TextStyle(fontSize:ScreenUtil.getInstance().setSp(30)),),
                        Container(
                          padding: EdgeInsets.only(left: 40.0),
                          child: Row(
                            children: <Widget>[
                              Text('4',style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(40)),),
                            ],
                          ),
                        ),
                        
                        Container(
                          padding: EdgeInsets.only(left: 60.0,right: 0),
                          // margin: EdgeInsets.only(left:10.0,right: 0.0),
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
                      padding: EdgeInsets.all(8),
                      child: Row(
                        children: <Widget>[
                          Text('城西银泰',
                            style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(33)),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(Icons.battery_charging_full),
                        Text('总车数',style: TextStyle(fontSize:ScreenUtil.getInstance().setSp(30)),),
                        Container(
                          padding: EdgeInsets.only(left: 40.0),
                          child: Row(
                            children: <Widget>[
                              Text('6',style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(40)),),
                            ],
                          ),
                        ),
                        
                        Container(
                          padding: EdgeInsets.only(left: 60.0,right: 0),
                          // margin: EdgeInsets.only(left:10.0,right: 0.0),
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
                        Icon(Icons.battery_std,
                          color: Colors.orange,
                        ),
                        Text('空闲车',style: TextStyle(fontSize:ScreenUtil.getInstance().setSp(30)),),
                        Container(
                          padding: EdgeInsets.only(left: 40.0),
                          child: Row(
                            children: <Widget>[
                              Text('4',style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(40)),),
                            ],
                          ),
                        ),
                        
                        Container(
                          padding: EdgeInsets.only(left: 60.0,right: 0),
                          // margin: EdgeInsets.only(left:10.0,right: 0.0),
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
                      padding: EdgeInsets.all(8),
                      child: Row(
                        children: <Widget>[
                          Text('城西银泰',
                            style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(33)),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(Icons.battery_charging_full),
                        Text('总车数',style: TextStyle(fontSize:ScreenUtil.getInstance().setSp(30)),),
                        Container(
                          padding: EdgeInsets.only(left: 40.0),
                          child: Row(
                            children: <Widget>[
                              Text('6',style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(40)),),
                            ],
                          ),
                        ),
                        
                        Container(
                          padding: EdgeInsets.only(left: 60.0,right: 0),
                          // margin: EdgeInsets.only(left:10.0,right: 0.0),
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
                        Icon(Icons.battery_std,
                          color: Colors.orange,
                        ),
                        Text('空闲车',style: TextStyle(fontSize:ScreenUtil.getInstance().setSp(30)),),
                        Container(
                          padding: EdgeInsets.only(left: 40.0),
                          child: Row(
                            children: <Widget>[
                              Text('4',style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(40)),),
                            ],
                          ),
                        ),
                        
                        Container(
                          padding: EdgeInsets.only(left: 60.0,right: 0),
                          // margin: EdgeInsets.only(left:10.0,right: 0.0),
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
                  ],
                ),
              ),
              // title:Text('总车数'),
            ),
          ],
        ),
      ),
     );
  }
}
