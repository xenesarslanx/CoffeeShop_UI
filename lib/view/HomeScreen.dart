import 'package:coffe_ui/const/static.dart';
import 'package:coffe_ui/viewModel/coldCoffeeManager.dart';
import 'package:coffe_ui/viewModel/hotCoffeeManager.dart';
import 'package:coffe_ui/widgets/IconsRowWidget.dart';
import 'package:coffe_ui/widgets/TextFormFieldWidget.dart';
import 'package:coffe_ui/widgets/paddingWidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HotCoffeeManager hotCoffeeManager = HotCoffeeManager();
  ColdCoffeeManager coldCoffeeManager = ColdCoffeeManager();
  List categoriesList = [
    "Hot Coffee",
    "Cold Coffee",
    "Turkish Coffee",
    "Hot Coffee",
    "Cold Coffee",
    "Turkish Coffee",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(children: [
          Column(
            children: [
              const IconRow(),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: const Text(
                    "Its a Great Day for Coffee",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              const MyTextFormField(),
              SizedBox(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categoriesList.length,
                  itemBuilder: (context, index) {
                    return MaterialButton(
                      onPressed: () {
                        setState(() {
                          if (A.globalIndex == index) {
                            A.globalIndex = index;
                            A.globalIndex =
                                -1; // Aynı kategoriye tekrar tıklandığında seçimi kaldır
                            print(A.globalIndex);
                          } else {
                            A.globalIndex = index;
                            print(A.globalIndex);
                          }
                        });
                      },
                      child: Text(
                        categoriesList[index],
                        style: TextStyle(
                            color: A.globalIndex == index
                                ? Colors.red
                                : Colors.white,
                            fontSize: Get.height / 37,
                            fontWeight: FontWeight.w500),
                      ),
                    );
                  },
                ),
              ),
              //  newMethod(coldCoffeeManager),
              //  newMethod(hotCoffeeManager),

              A.globalIndex == 0
                  ? newMethod(hotCoffeeManager)
                  : A.globalIndex == 1
                      ? newMethod(
                          coldCoffeeManager,
                        )
                      : const Text(
                          "Kategori Seç..",
                          style: TextStyle(color: Colors.white),
                        )
            ],
          ),
        ]),
      ),
    );
  }
}
