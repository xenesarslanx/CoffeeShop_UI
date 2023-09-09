import 'package:coffe_ui/widgets/coffeeItem.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Padding newMethod(var CoffeeManager) {
  return Padding(
    padding: const EdgeInsets.only(top: 1, bottom: 1),
    child: SizedBox(
      height: Get.height /
          2, //CoffeeManager.coffeeList.length % 2 == 0 ? ( 160 * (CoffeeManager.coffeeList.length / 2) ).toDouble() : ( 160 * (CoffeeManager.coffeeList.length / 2) ).toDouble() - 80,
      child: ListView.builder(
        itemCount: (CoffeeManager
            .coffeeList.length), // Her iki veriyi bir araya getiriyoruz.
        itemBuilder: (context, index) {
          final firstItemIndex = index * 2;
          final secondItemIndex = index * 2 + 1;

          return Row(
            mainAxisAlignment: MainAxisAlignment
                .spaceAround, // İki öğeyi yatayda hizalamak için
            children: [
              buildCoffeeItem(firstItemIndex, CoffeeManager, context),
              buildCoffeeItem(secondItemIndex, CoffeeManager, context),
            ],
          );
        },
      ),
    ),
  );
}
