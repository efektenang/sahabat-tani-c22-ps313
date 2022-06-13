import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sahabat_tani/constants/r.dart';
import 'package:sahabat_tani/modules/home/controllers/home_controller.dart';
import 'package:sahabat_tani/modules/home/ui/widget/button_widget.dart';
import 'package:sahabat_tani/routes/app_pages.dart';
import 'package:sahabat_tani/utils/const.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 24),
            child: CircleAvatar(
              radius: 15.0,
              backgroundImage: NetworkImage('https://via.placeholder.com/150'),
              backgroundColor: Colors.blue,
            ),
          )
        ],
        title: Text(
          R.strings.title,
          textAlign: TextAlign.center,
          style: const TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                R.assets.imgBanner,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              R.strings.bannerTitle,
              textAlign: TextAlign.left,
              style:
                  const TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16), color: Colors.green.withOpacity(0.25)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "Foto Padimu Sekarang",
                    textAlign: TextAlign.left,
                    style:
                        TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Container(
                    width: 200,
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(1000), color: Colors.white),
                    child: Icon(
                      Icons.camera_alt,
                      size: 25,
                      color: Colors.green.withOpacity(0.25),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              R.strings.titleMenu,
              textAlign: TextAlign.left,
              style:
                  const TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 8,
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: AppData.dataArticleHome.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    ButtonWidget(
                      image: AppData.dataArticleHome[index].image!, //R.assets.icVirus,
                      title: AppData.dataArticleHome[index].title!, //R.strings.button1,
                      function: () {
                        Get.toNamed(Routes.detail,
                            arguments: {"article": AppData.dataArticleHome[index]});
                      },
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                  ],
                );
              },
            ),
            // ButtonWidget(
            //   image: R.assets.icList,
            //   title: R.strings.button2,
            //   function: () {},
            // ),
            // const SizedBox(
            //   height: 8,
            // ),
            // ButtonWidget(
            //   image: R.assets.icPadi,
            //   title: R.strings.button3,
            //   function: () {},
            // ),
          ],
        ),
      ),
    );
  }
}
