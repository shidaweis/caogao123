import 'package:flutter/material.dart';

class TabBarControllerPage extends StatefulWidget{
  TabBarControllerPage({Key key}) : super(key: key);
  _TabBarControllerPageState createState() => _TabBarControllerPageState();
}
class _TabBarControllerPageState extends State<TabBarControllerPage> with SingleTickerProviderStateMixin{

  TabController _tabController;

  @override
  void dispose() {        //生命周期函数
    super.dispose();
    _tabController.dispose();
  }


  @override
  void initState() {      //组件初始化时的生命周期函数；
    super.initState();
    _tabController = new TabController(
      vsync: this,
      length: 2,
    );
    _tabController.addListener((){
      print(_tabController.index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('你好'),
        bottom: TabBar(

          controller: this._tabController,
          tabs: <Widget>[
            Tab(text: '热销1'),
            Tab(text: '热销2'),
          ],
        ),
      ),
      body: TabBarView(
        controller: this._tabController,
        children: <Widget>[
          Center(child: Text('热销11'),),
          Center(child: Text('热销22'),),
        ],
      ),
    );
  }
}