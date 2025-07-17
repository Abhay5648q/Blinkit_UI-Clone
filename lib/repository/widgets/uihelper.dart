import 'package:flutter/material.dart';

class Uihelper {
  static Widget customimage({required String img}) {
    return Image.asset(img);
  }

  static Container custombutton(VoidCallback callback) {
    return Container(
      height: 18,
      width: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
        border: Border.all(color: const Color(0xff27AF34)),
      ),
      child: const Center(
        child: Text(
          'Add',
          style: TextStyle(
            fontWeight: FontWeight.bold,

            fontSize: 8,
            color: Color(0xff27AF34),
          ),
        ),
      ),
    );
  }
}
