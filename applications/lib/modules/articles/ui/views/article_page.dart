import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sahabat_tani/modules/articles/controllers/article_controller.dart';

class ArticlePage extends GetView<ArticleController> {
  const ArticlePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text(
          controller.id == 1
              ? controller.penyakitPadi.title!
              : controller.id == 2
                  ? controller.jenisPadi.title!
                  : controller.caraMenanam.title!,
          textAlign: TextAlign.center,
          style: const TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: ListView.builder(
            itemCount: controller.jenisPadi.content!.length,
            itemBuilder: (context, index) {
              return Text(controller.jenisPadi.content![index]);
            }),
      ),
    );
  }
}
