import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:jokes_story/controllers/any_joke_controller.dart';

class AnyJokeScreen extends StatelessWidget {
  AnyJokeScreen({super.key});

  final anyJokeController = Get.put(AnyJokeController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        appBar: AppBar(
          title: Text('Two Part'),
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            anyJokeController.isLoading.value
                ? const Center(child: CircularProgressIndicator())
                : anyJokeController.joke.value.joke == null
                    ? JokeTwoPartComponent(
                        anyJokeController: anyJokeController,
                      )
                    : JokeSingleComponent(
                        anyJokeController: anyJokeController,
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

class JokeTwoPartComponent extends StatelessWidget {
  const JokeTwoPartComponent({
    super.key,
    required this.anyJokeController,
  });

  final AnyJokeController anyJokeController;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        children: [
          Text(
            anyJokeController.joke.value.category ?? '',
          ),
          Text(
            anyJokeController.joke.value.setup ?? '',
          ),
          Text(
            anyJokeController.joke.value.delivery ?? '',
          ),
        ],
      ),
    );
  }
}

class JokeSingleComponent extends StatelessWidget {
  const JokeSingleComponent({
    super.key,
    required this.anyJokeController,
  });

  final AnyJokeController anyJokeController;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        children: [
          Text(
            anyJokeController.joke.value.category ?? '',
          ),
          Text(
            anyJokeController.joke.value.joke ?? '',
          ),
        ],
      ),
    );
  }
}
