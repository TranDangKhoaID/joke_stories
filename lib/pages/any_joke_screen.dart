import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:jokes_story/controllers/any_joke_controller.dart';

class AnyJokeScreen extends StatefulWidget {
  const AnyJokeScreen({super.key});

  @override
  State<AnyJokeScreen> createState() => _AnyJokeScreenState();
}

class _AnyJokeScreenState extends State<AnyJokeScreen> {
  @override
  void initState() {
    super.initState();
    // Cố định hướng màn hình ở chế độ dọc
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  @override
  void dispose() {
    // Khôi phục hướng màn hình về mặc định (dọc và ngang)
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    super.dispose();
  }

  final anyJokeController = Get.put(AnyJokeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Any Joke'),
        elevation: 0,
        //backgroundColor: Colors.transparent,
      ),
      body: Obx(
        () => Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/background_joke.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
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
              GestureDetector(
                onTap: () {
                  anyJokeController.getJokeAny();
                },
                child: SizedBox(
                  height: 60,
                  child: Image.asset(
                    'assets/images/reload.png',
                    fit: BoxFit.cover,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 55,
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
      height: 300,
      width: double.infinity,
      margin: EdgeInsets.all(40),
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            anyJokeController.joke.value.category.toString(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 35,
            ),
          ),
          Text(
            '${anyJokeController.joke.value.setup}',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 17,
            ),
          ),
          Text(
            ' ${anyJokeController.joke.value.delivery}',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 17,
            ),
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
      height: 300,
      margin: EdgeInsets.all(40),
      padding: EdgeInsets.symmetric(horizontal: 10),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            anyJokeController.joke.value.category ?? '',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 35,
            ),
          ),
          Text(
            anyJokeController.joke.value.joke ?? '',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 17,
            ),
          ),
        ],
      ),
    );
  }
}
