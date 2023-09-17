import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/experience_controller.dart';

class ExperienceView extends GetView<ExperienceController> {
  const ExperienceView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'ExperienceView is working',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
