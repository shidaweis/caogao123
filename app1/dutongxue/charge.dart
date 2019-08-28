import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'SearchCharge.dart';/////////////////////
// import 'bicycle/bicycle.dart';////////////////

class ChargePage extends StatefulWidget{
  @override
  _ChargePageState createState() => new _ChargePageState();
}

class _ChargePageState extends State<ChargePage>{

  bool _offstage = true;
  @override
  // bool _offstage = false;

  Widget build(BuildContext context){

    //初始化
    ScreenUtil.instance = ScreenUtil(width: 750, height: 1334)..init(context);
    return  Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.blue[100],
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                padding: EdgeInsets.only(right: 5),
                width: 70,
                height: 30,
                child: MaterialButton(
                  child: Text('找桩'),
                  color: Color.fromRGBO(242, 242, 242, 1),
                  onPressed: (){
                    // Navigator.of(context).push(
                      // MaterialPageRoute(builder: (context)=>SearchChargePage())
                      print('s');
                    // );
                  },
                ),
              ),
            ),
            floatButton(),
            Align(
              alignment: Alignment.bottomCenter,
              child: Offstage(
                offstage: _offstage,
                child: Container(
                  padding: EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
                  width: ScreenUtil.getInstance().setWidth(700),
                  height: ScreenUtil.getInstance().setHeight(360),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                     border: new Border.all(width: 1, color: Colors.black38),
                  ),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text('城西银泰   充电站',
                            style: TextStyle(
                              fontSize: ScreenUtil.getInstance().setSp(29)
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 15, left: 40, right: 40),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Icon(Icons.search),
                            Text('总车数',
                              style: TextStyle(
                                fontSize: ScreenUtil.getInstance().setSp(30),
                                color: Color.fromRGBO(26, 26, 26, 1)
                              ),
                            ),
                            Text('6',
                              style: TextStyle(
                                fontSize: ScreenUtil.getInstance().setSp(30),
                                color: Color.fromRGBO(26, 26, 26, 1)
                              ),
                            ),
                            Container(
                              child: Row(
                                children: <Widget>[
                                  Text('导航',
                                    style: TextStyle(
                                      fontSize: ScreenUtil.getInstance().setSp(30),
                                      color: Color.fromRGBO(128, 128, 128, 1)
                                    ),
                                  ),
                                  Icon(Icons.arrow_right)
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 15, left: 40, right: 40),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Icon(Icons.search),
                            Text('总车数',
                              style: TextStyle(
                                fontSize: ScreenUtil.getInstance().setSp(30),
                                color: Color.fromRGBO(26, 26, 26, 1)
                              ),
                            ),
                            Text('6',
                              style: TextStyle(
                                fontSize: ScreenUtil.getInstance().setSp(30),
                                color: Color.fromRGBO(26, 26, 26, 1)
                              ),
                            ),
                            Container(
                              child: Row(
                                children: <Widget>[
                                  Text('导航',
                                    style: TextStyle(
                                      fontSize: ScreenUtil.getInstance().setSp(30),
                                      color: Color.fromRGBO(128, 128, 128, 1)
                                    ),
                                  ),
                                  Icon(Icons.arrow_right)
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 15, left: 80, right: 55),
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Icon(Icons.money_off),
                                        Text('1.5/度',
                                          style: TextStyle(
                                            fontSize: ScreenUtil.getInstance().setSp(30),
                                            color: Color.fromRGBO(26, 26, 26, 1)
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                Column(
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Icon(Icons.card_giftcard),
                                        Text('免费停车',
                                          style: TextStyle(
                                            fontSize: ScreenUtil.getInstance().setSp(30),
                                            color: Color.fromRGBO(26, 26, 26, 1)
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Icon(Icons.local_activity),
                                  Text('总车数',
                                    style: TextStyle(
                                      fontSize: ScreenUtil.getInstance().setSp(30),
                                      color: Color.fromRGBO(26, 26, 26, 1)
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: 
                MaterialButton(
                  child: Text('站点'),
                  onPressed: (){
                    setState(() {
                      _offstage = !_offstage; 
                    });
                  },
                ),
            ),
            
          ],
        )
      ),
    );
  }
  // 
  Widget floatButton(){
    return Padding(
      padding: EdgeInsets.only(left: 40, right: 40, bottom: 80),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Align(
            alignment: Alignment.bottomLeft,
            child: FlatButton(
              onPressed: (){
                // Navigator.of(context).push(
                //   MaterialPageRoute(builder: (context) => BicyclePage(),)
                // );
                // BicyclePage();
              },
              child: Text(
                '电单车',
                style: TextStyle(
                  fontSize: ScreenUtil.getInstance().setSp(30)
                ),
              ),
              color: Color.fromRGBO(242, 242, 242, 1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                side: BorderSide(
                  color: Colors.black,
                  style: BorderStyle.solid,
                  width: 1
                )
              ),
            )
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset('assets/images/icon_map_loc.png'),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: FlatButton(
              onPressed: (){},
              child: Text(
                '电动汽车',
                style: TextStyle(
                  fontSize: ScreenUtil.getInstance().setSp(30)
                ),
              ),
              color: Color.fromRGBO(242, 242, 242, 1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                side: BorderSide(
                  color: Colors.black,
                  style: BorderStyle.solid,
                  width: 1
                )
              ),
            ),
          ),
        ],
      ),
    );
  }
}
