import 'package:flutter/material.dart';

class MyTextFormField extends StatelessWidget {
  const MyTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: TextFormField(
        decoration: const InputDecoration(
          border: OutlineInputBorder(
            // Çerçeve rengi burada belirlenir
            borderSide: BorderSide(
              color: Colors.white, // Çerçeve rengini burada ayarlayabilirsiniz
              width: 10.0,
            ),
          ),
          hintText: "Find your coffee",
          hintStyle: TextStyle(color: Colors.white),
        ),
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
