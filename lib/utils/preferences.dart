import 'dart:convert';

import 'package:jokes_story/model/joke_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  static const isFinishOnBoardingKey = "isFinishOnBoardingKey";
  static const languageCodeKey = "languageCodeKey";
  static const isLogin = "isLogin";
  //static const joke = "jokeData";
  static const userId = "jokeId";
  //static const currentRideData = "rideData";
  static const accesstoken = "accesstoken";
  //static const paymentSetting = "paymentSetting";
  //static const admincommission = "adminCommission";
  static const otpSms = "1";

  static late SharedPreferences pref;

  // static setJokeData(JokeTwoPartModel jokeModel) async {
  //   await pref.setString(joke, jsonEncode(jokeModel));
  // }

  static initPref() async {
    pref = await SharedPreferences.getInstance();
  }

  static bool getBoolean(String key) {
    return pref.getBool(key) ?? false;
  }

  static Future<void> setBoolean(String key, bool value) async {
    await pref.setBool(key, value);
  }

  static String getString(String key) {
    return pref.getString(key) ?? "";
  }

  static Future<void> setString(String key, String value) async {
    await pref.setString(key, value);
  }

  static Future<void> clearSharePreference() async {
    await pref.clear();
  }

  static Future<void> clearKeyData(String key) async {
    await pref.remove(key);
  }

  static int getInt(String key) {
    return pref.getInt(key) ?? 0;
  }

  static Future<void> setInt(String key, int value) async {
    await pref.setInt(key, value);
  }
}
