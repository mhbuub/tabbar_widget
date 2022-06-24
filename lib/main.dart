import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<Tab> myTab = [
    Tab(
      text: "Chat",
    ),
    Tab(
      text: "Status",
    ),
    Tab(
      text: "Panggilan",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        initialIndex: 0,
        length: myTab.length,
        child: Scaffold(
          appBar: AppBar(
            title: Text("MY CIC"),
            centerTitle: true,
            bottom: TabBar(
              // indicatorColor: Colors.white,
              // indicatorWeight: 3,
              indicator: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                      bottom: BorderSide(color: Colors.black, width: 3))),
              labelColor: Colors.black,
              unselectedLabelColor: Colors.white,
              labelStyle: TextStyle(fontWeight: FontWeight.bold),
              unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
              tabs: myTab,
            ),
          ),
          body: TabBarView(
            children: [
              Center(
                child: Text(
                  "Chat",
                  style: TextStyle(fontSize: 35),
                ),
              ),
              Center(
                child: Text(
                  "Status",
                  style: TextStyle(fontSize: 35),
                ),
              ),
              Center(
                child: Text(
                  "Panggilan",
                  style: TextStyle(fontSize: 35),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
