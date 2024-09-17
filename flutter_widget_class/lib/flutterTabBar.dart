import 'package:flutter/material.dart';

class TabBarExample extends StatefulWidget {
  @override
  _TabBarExampleState createState() => _TabBarExampleState();
}

class _TabBarExampleState extends State<TabBarExample>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  bool checkBox = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TabBar Example'),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Text(
              "Home",
              style: TextStyle(fontSize: 20),
            ),
            Tab(text: 'Profile'),
            Tab(text: 'Settings'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Container(
              child: Center(
                  child: Column(
            children: [
              Text('Home Screen'),
              SizedBox(
                height: 20,
              ),
              Text('ChackBox'),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Text("Buy new"),  
                    Checkbox(
                        value: checkBox,
                        activeColor: Colors.green,
                        onChanged: (value) {
                          setState(() {
                            checkBox = value!;
                          });
                        }),
                  ],
                ),
              ), 

              Text('Switch'),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Text("Buy new"),  
                    Switch(
                        value: checkBox,
                        activeColor: Colors.green,
                        onChanged: (value) {
                          setState(() {
                            checkBox = value!;
                          });
                        }),
                  ],
                ),
              )
            ],
          ))),
          Center(child: Text('Profile Screen')),
          Center(child: Text('Settings Screen')),
        ],
      ),
    );
  }
}
