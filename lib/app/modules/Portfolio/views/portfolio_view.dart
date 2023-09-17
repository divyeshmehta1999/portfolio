import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/portfolio_controller.dart';

class PortfolioView extends GetView<PortfolioController> {
  const PortfolioView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'PortfolioView is working',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
