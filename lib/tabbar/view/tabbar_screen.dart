import 'package:flutter/material.dart';
import 'package:tagbar_view/call_screen/view/call_screen.dart';
import 'package:tagbar_view/home/view/home_screen.dart';

class tabbar_screen extends StatefulWidget {
  const tabbar_screen({Key? key}) : super(key: key);

  @override
  State<tabbar_screen> createState() => _tabbar_screenState();
}

class _tabbar_screenState extends State<tabbar_screen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            leading: Padding(
              padding: const EdgeInsets.all(10.0),
              child: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/1.jpeg"),
                  radius: 50),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Icon(
                  Icons.search,
                  color: Colors.grey.shade700,
                ),
              )
            ],
            backgroundColor: Colors.white,
            bottom: TabBar(
              indicatorColor: Colors.black,
              dividerColor: Colors.black,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey.shade700,
              tabs: [
                Tab(
                  text: "Chat",
                ),
                Tab(
                  text: "Call",
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              home_screen(),
              call_screen(),
            ],
          ),
          floatingActionButton: Container(
            height: 55,width: 55,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(60),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,spreadRadius: 2,blurRadius: 2
                ),
              ]
            ),
              child: Icon(Icons.messenger_outline, color: Colors.blue)),
        ),
      ),
    );
  }
}
