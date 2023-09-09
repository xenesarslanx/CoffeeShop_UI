import 'package:coffe_ui/model/allCoffee.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailsPage extends StatelessWidget {
  late Allcoffee coffee;

  DetailsPage(this.coffee, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  coffee.image.toString(),
                  width: Get.width / 1.2,
                ),
                Container(
                    height: Get.height / 2,
                    width: Get.width,
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 35),
                    decoration: BoxDecoration(
                      color: const Color(0xFF212325),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          coffee.title.toString(),
                          style: const TextStyle(
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              decoration: TextDecoration.underline),
                        ),
                        const SizedBox(height: 10.0),
                        Text(
                          "Fiyat: ${coffee.price.toString()}",
                          style: const TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
