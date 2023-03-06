import 'package:flutter/material.dart';

class home_provider extends ChangeNotifier
{

  List image = [
    "assets/images/1.jpeg",
    "assets/images/2.jpeg",
    "assets/images/3.jpeg",
    "assets/images/4.jpeg",
    "assets/images/5.jpeg",
    "assets/images/6.jpeg",
  ];

  List name = [
    "annette Black",
    "Hey guuurll",
    "Cameron Williams",
    "Jane Cooper",
    "Brennda Smily",
    "Jacob Jones"
  ];

  List sub = [
    "Hey, did you talk to her?",
    "Brb, watch some Dark here",
    "OK, Cya.",
    "Thanks, I'll call you there.",
    "Sent a picture",
    "Miss a call"
  ];

  List min = [
    "2min ago","5min ago","35min ago","1d ago","1d ago","1d ago"
  ];
}