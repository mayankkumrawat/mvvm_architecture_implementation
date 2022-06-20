import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../view_model/news_viewmodel/news_viewmodel.dart';

// ignore: use_key_in_widget_constructors
class NewsView extends StatelessWidget {
  //final c = Get.put(UsersVM());
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: SafeArea(child: Scaffold(body: GetBuilder<NewsVM>(
        builder: (controller) {
          return Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                  child: ListView.builder(
                itemCount: controller.newsList.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      controller.onTap(index);
                    },
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      margin: const EdgeInsets.all(16),
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        Image.network(controller.newsList[index].imageUrl!),
                        Text(
                          controller.newsList[index].title!,
                          style: const TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          controller.newsList[index].date!,
                          style: const TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              shape: BoxShape.rectangle,
                              color: const Color.fromARGB(255, 218, 240, 235)),
                          child: Text(
                            controller.newsList[index].content!,
                            textAlign: TextAlign.justify,
                            style: const TextStyle(
                              color: Color.fromARGB(255, 43, 41, 41),
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Text(
                          '- ${controller.newsList[index].author!}',
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                        const SizedBox(
                          width: 200,
                          child: Divider(
                            thickness: 2,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        )
                      ]),
                    ),
                  );
                },
              ))
            ],
          );
        },
      ))),
    );
  }
}
