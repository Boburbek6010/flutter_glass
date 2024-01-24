import 'dart:ui';

import 'package:flutter/material.dart';

class BlurredMainContainer extends StatelessWidget {
  final String name;
  const BlurredMainContainer({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: Container(
          height: 100,
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          decoration: BoxDecoration(
              color: const Color.fromRGBO(255, 255, 255, 0.2),
              boxShadow: const [
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.1),
                )
              ],
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                color: const Color.fromRGBO(255, 255, 255, 0.8),
                width: 1,
              )
          ),
          child: Text(name, style: const TextStyle(
            fontSize: 22, color: Colors.white
          ),),
        ),
      ),
    );
  }
}
