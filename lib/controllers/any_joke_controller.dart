import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:get/get.dart';
import 'package:jokes_story/model/joke_model.dart';
import 'package:jokes_story/service/api.dart';
import 'package:http/http.dart' as http;

class AnyJokeController extends GetxController {
  var joke = JokeModel().obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    getJokeAny();
    super.onInit();
  }

  Future<dynamic> getJokeAny() async {
    try {
      isLoading.value = true;
      final response = await http.get(Uri.parse(API.getAny));
      Map<String, dynamic> responseBody = json.decode(response.body);
      if (response.statusCode == 200 && responseBody['error'] == false) {
        isLoading.value = false;
        JokeModel model = JokeModel.fromJson(responseBody);
        //String id = model.id.toString();
        joke.value = model;
      } else if (response.statusCode == 200 && responseBody['error'] == true) {
        //joke;
        isLoading.value = false;
      } else {
        isLoading.value = false;
        print('>>>error joke controller: something_went_wrong');
        // ShowToastDialog.showToast("something_went_wrong".tr);
        // throw Exception("failed_to_load_album".tr);
      }
    } on TimeoutException catch (e) {
      //ShowToastDialog.closeLoader();
      print('>>>error joke controller: ${e.message.toString()}');
      // ShowToastDialog.showToast(e.message.toString());
    } on SocketException catch (e) {
      //ShowToastDialog.closeLoader();
      print('>>>error joke controller: ${e.message.toString()}');
      // ShowToastDialog.showToast(e.message.toString());
    } on Error catch (e) {
      //ShowToastDialog.closeLoader();
      print('>>>error joke controller: ${e.toString()}');
      // ShowToastDialog.showToast(e.toString());
    } catch (e) {
      //ShowToastDialog.closeLoader();
      print('>>>error joke controller: ${e.toString()}');
      // ShowToastDialog.showToast(e.toString());
    }
    return null;
  }
}
