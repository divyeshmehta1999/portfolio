import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/splash_screen_controller.dart';

Color textcolor = Colors.white;
double fontsize = 50;

class SplashScreenView extends GetView<SplashScreenController> {
  SplashScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(SplashScreenController());
    return Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset('assets/images/BACKGROUND.png'),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/divyesh-mehta-logo-zip-file/logo-no-background.png',
                  height: 400,
                  width: 500,
                ),
                Container(
                  height: 100,
                  child: AnimatedTextKit(
                    repeatForever: true,
                    pause: Duration(microseconds: 0),
                    animatedTexts: [
                      RotateAnimatedText(
                        'Hello',
                        textStyle: TextStyle(
                            color: textcolor,
                            fontSize: fontsize,
                            fontFamily: 'Playfair_Display'),
                      ),
                      RotateAnimatedText('नमस्ते',
                          textStyle: TextStyle(
                              color: textcolor,
                              fontSize: fontsize,
                              fontFamily: 'Playfair_Display')),
                      RotateAnimatedText('Bonjour',
                          textStyle: TextStyle(
                              color: textcolor,
                              fontSize: fontsize,
                              fontFamily: 'Playfair_Display')),
                      RotateAnimatedText('Hola',
                          textStyle: TextStyle(
                              color: textcolor,
                              fontSize: fontsize,
                              fontFamily: 'Playfair_Display')),
                    ],
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
