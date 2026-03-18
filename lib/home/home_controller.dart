import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeController extends GetxController {

  late SharedPreferences pref;
  TextEditingController namectl = TextEditingController();

  Future<void> FirstInit() async{
    pref = await SharedPreferences.getInstance();
  }

  Future<void> SetString(var value) async {
    await pref.setString("name", value);
  }

  Future<String> GetString() async {
    return pref.getString("name") ?? "";
  }
   
}