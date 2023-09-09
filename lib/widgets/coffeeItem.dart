import 'package:coffe_ui/view/detailsScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget buildCoffeeItem(
  int index,
  var coffeeManager,
  context,
) {
  if (index < coffeeManager.coffeeList.length) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailsPage(coffeeManager.coffeeList[index]),
          ),
        );
      },
      child: Container(
        width: Get.width / 2.5,
        height: Get.height / 4, //200,
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 13),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.grey //const Color(0xFF212325),
            ),
        child: Column(
          children: [
            SizedBox(
              width: 100,
              height: 100,
              child: Image(
                image: coffeeManager.coffeeList.isEmpty == true
                    ? const AssetImage("lib/assets/bg.png")
                    : AssetImage(
                        coffeeManager.coffeeList[index].image.toString()),
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 8),
            Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    coffeeManager.coffeeList[index].title.toString(),
                    style: TextStyle(
                        fontSize: Get.height / 37, color: Colors.white),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text("${coffeeManager.coffeeList[index].price} TL",
                      style: TextStyle(
                          fontSize: Get.height / 40, color: Colors.white)),
                ],
              ),
            ),
            Align(
                alignment: Alignment.bottomRight,
                child: InkWell(
                  onTap: () {
                    print(coffeeManager.coffeeList[index].title);
                  },
                  child: Container(
                    height: 30,
                    width: 30,
                    padding: const EdgeInsets.all(1),
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Icon(Icons.add),
                  ),
                )),
          ],
        ),
      ),
    );
  } else {
    // Veri endeksleri sınırları aştığında boş bir Container döndürüyoruz.
    return Container();
  }
}
