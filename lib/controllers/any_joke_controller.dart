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
  var isFilter = false.obs;
  var filterNSFW = false.obs;
  var filterReligious = false.obs;
  var filterPolitical = false.obs;
  var filterRacist = false.obs;
  var filterSexist = false.obs;
  var filterExplicit = false.obs;

  @override
  void onInit() {
    getJokeAny();
    super.onInit();
  }

  void showFilter() {
    isFilter.value = !isFilter.value;
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

  void updateFilterNSFW(bool value) {
    filterNSFW.value = !filterNSFW.value;
    value = filterNSFW.value;
  }

  void updateFilterReligious(bool value) {
    filterReligious.value = !filterReligious.value;
    value = filterReligious.value;
  }

  void updateFilterPolitical(bool value) {
    filterPolitical.value = !filterPolitical.value;
    value = filterPolitical.value;
  }

  void updateFilterRacist(bool value) {
    filterRacist.value = !filterRacist.value;
    value = filterRacist.value;
  }

  void updateFilterSexist(bool value) {
    filterSexist.value = !filterSexist.value;
    value = filterSexist.value;
  }

  void updateFilterExplicit(bool value) {
    filterExplicit.value = !filterExplicit.value;
    value = filterExplicit.value;
  }
}
