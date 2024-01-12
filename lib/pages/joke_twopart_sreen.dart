import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:jokes_story/controllers/any_joke_controller.dart';

class JokeTwoPartScreen extends StatelessWidget {
  JokeTwoPartScreen({super.key});

  final anyJokeController = Get.put(AnyJokeController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        appBar: AppBar(
          title: Text('AnyJoke'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            anyJokeController.isLoading.value
                ? const Center(child: CircularProgressIndicator())
                : Container(
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        Text(
                          anyJokeController.jokeTwoPart.value.category ?? '',
                        ),
                        Text(
                          anyJokeController.jokeTwoPart.value.setup ?? '',
                        ),
                        Text(
                          anyJokeController.jokeTwoPart.value.delivery ?? '',
                        ),
                      ],
                    ),
                  ),
            Gap(10),
            IconButton(
              onPressed: anyJokeController.getJokeTwoPartAny,
              icon: Icon(
                Icons.refresh,
              ),
            )
          ],
        ),
      ),
    );
  }
}
