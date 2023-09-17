import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../AboutMe/views/about_me_view.dart';
import '../../Experience/views/experience_view.dart';
import '../../Portfolio/views/portfolio_view.dart';
import '../controllers/home_page_controller.dart';

Color textcolor = Colors.white;
double fontsize = 50;

class HomePageView extends StatefulWidget {
  HomePageView({Key? key}) : super(key: key);

  @override
  _HomePageViewState createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView>
    with SingleTickerProviderStateMixin {
  // Define a TabController with the initial index
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, initialIndex: 0, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Get.put(HomePageController());

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 20, right: 20, top: 30),
          child: Column(
            children: [
              Container(
                height: 30,
                width: double.infinity,
                child: TabBar(
                  controller: _tabController,
                  dividerColor: Colors.red,
                  unselectedLabelColor: Colors.black,
                  indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(50), // Creates border
                      color: Colors.black), // Use the TabController
                  tabs: [
                    Tab(text: 'About Me'),
                    Tab(text: 'Experience'),
                    Tab(text: 'Portfolio'),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController, // Use the same TabController
                  children: [
                    AboutMeView(), // Content for 'About Me' tab
                    ExperienceView(), // Content for 'Experience' tab
                    PortfolioView(), // Content for 'Portfolio' tab
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
