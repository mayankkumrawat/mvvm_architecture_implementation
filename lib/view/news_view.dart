// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mvvm_project_flutter/view/health_news_view.dart';
import 'package:mvvm_project_flutter/view/sports_news_view.dart';
// import 'package:get/get.dart';
import 'package:mvvm_project_flutter/view/tech_news_view.dart';

import 'et_news_view.dart';
import 'science_news_view.dart';
// import '../view_model/news_viewmodel/news_viewmodel.dart';

// ignore: use_key_in_widget_constructors
class NewsView extends StatelessWidget {
  //final c = Get.put(UsersVM());
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text(
              'News Application',
            ),
            bottom: const TabBar(isScrollable: true, tabs: [
              Tab(
                text: "Technology",
              ),
              Tab(
                text: "Science",
              ),
              Tab(
                text: "Health",
              ),
              Tab(
                text: "Entertainment",
              ),
              Tab(
                text: "Sports",
              ),
            ]),
          ),
          body: const TabBarView(
            children: [
              TechNews(),
              ScienceNews(),
              HealthNews(),
              EtNews(),
              SportsNews()
            ],
          ),
        ),
      ),
    );
  }
}
