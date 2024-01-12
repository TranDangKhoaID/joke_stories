import 'dart:io';

class API {
  static String baseUrl = 'https://v2.jokeapi.dev/joke/';
  static Map<String, String> authheader = {
    HttpHeaders.contentTypeHeader: 'application/json; charset=UTF-8',
    //'apikey': apiKey,
  };
  static String getAny = "${baseUrl}Any";
  // static String getProgramming = "${baseUrl}joke/Programming";
  // static String getMiscellaneous = "${baseUrl}joke/Miscellaneous";
  // static String getDark = "${baseUrl}joke/Dark";
  // static String getSpooky = "${baseUrl}joke/Spooky";
  // static String getChristmas = "${baseUrl}joke/Christmas";
  //
  // static String getAnySingle = "${baseUrl}joke/Any?type=single";
  // static String getAnyTwopart = "${baseUrl}joke/Any?type=twopart";
  // static String getAnySafe = "${baseUrl}joke/Any?type=twopart";
}
