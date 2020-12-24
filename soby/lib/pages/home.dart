import 'package:flutter/material.dart';
import 'package:soby/pages/grid2.dart' as gridtwo;
import 'package:soby/pages/grid1.dart' as gridone;

class Home extends StatefulWidget {
  Map data = {};
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  var day = 15;

  TabController controller;
  @override
  void initState() {
    controller = new TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    widget.data = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.orangeAccent,
              ),
              child: null,
            ),
            ListTile(
              title: Text('Item1'),
              onTap: () {},
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.fromLTRB(0.0, 20.0, 30.0, 0.0),
          child: Center(
              child: Text(
            'DAY 15',
            style: TextStyle(
              fontSize: 40.0,
              color: Colors.black54,
            ),
          )),
        ),
        backgroundColor: Colors.orangeAccent,
        bottom: TabBar(
          controller: controller,
          indicatorWeight: 5.0,
          indicatorColor: Colors.black,
          tabs: <Widget>[
            new Tab(
              icon: Icon(Icons.home),
            ),
            new Tab(
              icon: Icon(Icons.lightbulb_outline),
            )
          ],
        ),
      ),
      body: new TabBarView(
        controller: controller,
        children: <Widget>[
          new gridone.Gridone(),
          new gridtwo.Gridtwo(),
        ],
      ),
    );
  }
}
