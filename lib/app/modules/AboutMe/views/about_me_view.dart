import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/about_me_controller.dart';

class AboutMeView extends GetView<AboutMeController> {
  const AboutMeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'AboutMeView is working',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
