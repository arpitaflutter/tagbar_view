import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tagbar_view/call_screen/view/call_screen.dart';
import 'package:tagbar_view/home/provider/home_provider.dart';
import 'package:tagbar_view/home/view/home_screen.dart';
import 'package:tagbar_view/tabbar/view/tabbar_screen.dart';

void main()
{
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => home_provider(),)
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context) => tabbar_screen(),
          'home':(context) => home_screen(),
          'call':(context) => call_screen(),
        },
      ),
    ),
  );
}