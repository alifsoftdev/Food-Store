import 'package:flutter/material.dart';
import 'package:food_store/views/auth/signUp.dart';
import 'package:food_store/views/navController/bottomNevController.dart';
import 'package:food_store/views/navController/pages/otherPage/success.dart';
import 'package:get/get.dart';
import '../../views/auth/SignIn.dart';
import '../../views/navController/pages/otherPage/location.dart';
import '../../views/onbording.dart';


const String onbording='/Onbording_Screen';
const String navController='/BottomNavController_Screen';
const String location='/Location_Screen';
const String signUp='/SignUp_Screen';
const String signIn='/SignIn_Screen';
const String success='/Success_Screen';

//controll our page route flow

List<GetPage> getpages = [
  GetPage(name: onbording, page: ()=>Onbording_Screen()),
  GetPage(name: navController, page: ()=>BottomNavController()),
  GetPage(name: location, page: ()=>location_Screen()),
  GetPage(name: signUp, page: ()=>SignUp_Screen()),
  GetPage(name: signIn, page: ()=>SignIn_Screen()),
 GetPage(name: success, page: ()=>Success_Screen()),
];