import 'package:blinkit_clone/repository/screens/Home/homescreen.dart';
import 'package:blinkit_clone/repository/screens/cart/cart.dart';
import 'package:blinkit_clone/repository/screens/category/category.dart';
import 'package:blinkit_clone/repository/screens/print/print.dart';
import 'package:blinkit_clone/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class Bottomnavigation1 extends StatefulWidget {
  const Bottomnavigation1({super.key});

  @override
  State<Bottomnavigation1> createState() => _BottomnavigationState();
}

class _BottomnavigationState extends State<Bottomnavigation1> {
  int currentidx = 0;
  List<Widget> pages = [Homescreen(), const Cart(), Category(), const PrintScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: currentidx, children: pages),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentidx,
        onTap: (index) {
          setState(() {
            currentidx = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Uihelper.customimage(img: 'assets/images/home.png'),
            label: 'Home',
          ),

          BottomNavigationBarItem(
            icon: Uihelper.customimage(img: 'assets/images/shopping-bag.png'),
            label: 'Cart',
          ),

          BottomNavigationBarItem(
            icon: Uihelper.customimage(img: 'assets/images/category.png'),
            label: 'Category',
          ),
          BottomNavigationBarItem(
            icon: Uihelper.customimage(img: 'assets/images/printer.png'),
            label: 'Printer',
          ),
        ],
      ),
    );
  }
}
