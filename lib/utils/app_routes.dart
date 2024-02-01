import 'package:flutter/cupertino.dart';
import 'package:getx_app/screen/home/view/home_screen.dart';
import 'package:getx_app/screen/second/view/second_screen.dart';
import 'package:getx_app/screen/third/view/third_screen.dart';

Map<String,WidgetBuilder> app_routes ={
  '/':(context) => HomeScreen(),
  'second':(context) => SecondScreen(),
  'third':(context) => ThirdScreen()
};