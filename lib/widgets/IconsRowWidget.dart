import 'package:flutter/material.dart';

class IconRow extends StatelessWidget {
  const IconRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () {},
          child: const Icon(
            Icons.sort_rounded,
            size: 35,
            color: Colors.white,
          ),
        ),
        InkWell(
          onTap: () {},
          child: const Icon(
            Icons.notifications,
            size: 35,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
