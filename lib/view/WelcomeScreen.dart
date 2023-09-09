import 'package:coffe_ui/view/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width,
        height: Get.height,
        padding: const EdgeInsets.only(top: 100, bottom: 40),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("lib/assets/bg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Coffee Shop",
              style: GoogleFonts.pacifico(fontSize: 50, color: Colors.white),
            ),
            Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  "Feeling Low? Take a Sip of Coffee",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 80,
                ),
                InkWell(
                  onTap: () {
                    print("Get start button");
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ),
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 35),
                    decoration: BoxDecoration(
                      color: const Color(0xFFE57734),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Text(
                      "Get Start",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1 //text arası boşluk
                          ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
