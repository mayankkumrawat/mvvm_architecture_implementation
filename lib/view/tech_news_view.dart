import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../view_model/news_viewmodel/news_viewmodel.dart';

class TechNews extends StatelessWidget {
  const TechNews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NewsVM>(
      builder: (controller) {
        return Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: controller.techNewsList.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    // onTap: () {
                    //   controller.onTap(index);
                    // },
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      margin: const EdgeInsets.all(16),
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        Image.network(controller.techNewsList[index].imageUrl!),
                        Text(
                          controller.techNewsList[index].title!,
                          style: const TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          controller.techNewsList[index].date!,
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
                            controller.techNewsList[index].content!,
                            textAlign: TextAlign.justify,
                            style: const TextStyle(
                              color: Color.fromARGB(255, 43, 41, 41),
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Text(
                          '- ${controller.techNewsList[index].author!}',
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
              ),
            )
          ],
        );
      },
    );
  }
}
