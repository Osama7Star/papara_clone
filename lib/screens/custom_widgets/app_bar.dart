import 'package:flutter/material.dart';
import 'package:papara_clone/screens/main_page/widgets.dart';

CustomAppBar()=>AppBar(
  backgroundColor: Colors.transparent,

  elevation: 0,
  leading:ProfileImage(),
  actions: [
    ProfileImage()
  ],
  title:      SizedBox(width:70,height:70,child: Image.asset('lib/assets/images/icon.jpg')),
  centerTitle: true,


);