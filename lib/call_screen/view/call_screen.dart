import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../home/provider/home_provider.dart';

class call_screen extends StatefulWidget {
  const call_screen({Key? key}) : super(key: key);

  @override
  State<call_screen> createState() => _call_screenState();
}

class _call_screenState extends State<call_screen> {
  home_provider? h1;
  @override
  Widget build(BuildContext context) {
    h1 = Provider.of<home_provider>(context,listen: false);
    return SafeArea(
      child: Scaffold(
        body: Consumer<home_provider>(
            builder: (context, value, child) => ListView.builder(
                itemBuilder: (context, index) => ListTile(
                  leading: CircleAvatar(backgroundImage: AssetImage("${h1!.image[index]}"),),
                  title: Container(
                    height: 15,
                    child: Expanded(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text("${h1!.name[index]}",style: TextStyle(fontWeight: FontWeight.bold)),
                          Spacer(),
                          Text("${h1!.min[index]}",style: TextStyle(color: Colors.grey.shade700,fontSize: 13,fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ),
                  trailing: Icon(Icons.call,size: 15,color: Colors.black),
                ),
                itemCount: h1!.name.length)
        ),
      ),
    );
  }
}
