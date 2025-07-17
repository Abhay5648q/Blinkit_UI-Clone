import 'package:blinkit_clone/repository/widgets/product_card.dart';
import 'package:blinkit_clone/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            const SizedBox(height: 35),
            Container(
              width: double.infinity,
              height: 165,
              color: const Color(0xfff7CB45),
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 17, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Blinkit in',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'bold',
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          '16 minutes',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        CircleAvatar(
                          radius: 15,
                          backgroundColor: Colors.white,
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.person),
                            iconSize: 20,
                            padding: EdgeInsets.zero,
                          ),
                        ),
                      ],
                    ),
                    const Row(
                      children: [
                        Text(
                          'HOME ',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '- Abhay Singh, Khatima, Uttarakhand',
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(),
                          fillColor: Colors.white,
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          hintText: 'Search -ice cream',

                          border: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(10),
                          ),

                          prefixIcon: const Icon(Icons.search),
                          prefixIconColor: Colors.black,
                          suffixIcon: const Icon(Icons.mic),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Uihelper.customimage(img: 'assets/images/shopping-cart.png'),
            const SizedBox(height: 20),
            const Text(
              'Reordering will be easy',
              style: TextStyle(fontFamily: 'bold', fontSize: 16),
            ),
            const Text(
              'Items you order will show up here so you can buy gain easily.',
              style: TextStyle(fontSize: 10),
            ),
            const SizedBox(height: 30),
            const Row(
              children: [
                SizedBox(width: 20),
                Text(
                  'Bestseller',
                  style: TextStyle(fontSize: 16, fontFamily: 'bold'),
                ),
              ],
            ),
            const SizedBox(height: 30),
            SizedBox(
              height: 180,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                children: const [
                  ProductCard(
                    image: 'assets/images/sweets.png',
                    name: 'Amul Taaza\nFresh Milk',
                    price: '₹ 27',
                  ),
                  SizedBox(width: 10),
                  ProductCard(
                    image: 'assets/images/shoppingpatato.png',
                    name: 'Potato (Aloo)',
                    price: '₹ 37',
                  ),
                  SizedBox(width: 10),
                  ProductCard(
                    image: 'assets/images/tomato.png',
                    name: 'Hybrid Tomato',
                    price: '₹ 37',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
