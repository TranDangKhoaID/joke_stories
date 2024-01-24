import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:jokes_story/constants/image_constant.dart';
import 'package:jokes_story/pages/any_joke_screen.dart';
import 'package:jokes_story/pages/category_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [topWelcome()],
        elevation: 0,
        //backgroundColor: Colors.transparent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: Row(
              children: [
                Expanded(
                  child: JokeItem(
                    name: 'Random',
                    image: ImageConstant.randome,
                    onTap: () {
                      Get.to(() => const AnyJokeScreen());
                    },
                  ),
                ),
                Gap(10),
                Expanded(
                  child: JokeItem(
                    name: 'Categories',
                    image: ImageConstant.categories,
                    onTap: () {
                      Get.to(() => const CategoryScreen());
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 55,
      ),
    );
  }

  Widget topWelcome() {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: Text(
                'JOKES STORY',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            height: 40,
            child: Image.asset(
              ImageConstant.settingButton,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}

class JokeItem extends StatelessWidget {
  final String name;
  final String image;
  final void Function() onTap;
  const JokeItem({
    super.key,
    required this.name,
    required this.image,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
          ),
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        height: 250,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              margin: EdgeInsets.all(10),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
            Gap(10),
            Text(
              name,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Gap(10),
          ],
        ),
      ),
    );
  }
}
