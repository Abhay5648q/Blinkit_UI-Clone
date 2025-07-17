import 'package:blinkit_clone/repository/widgets/product_card.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  Homescreen({super.key});
  final List<Map<String, dynamic>> categorySections = [
    {
      'title': 'Grocery & Kitchen',
      'items': [
        {'img': 'cat1.png', 'text': 'Vegetables & Fruits'},
        {'img': 'cat2.png', 'text': 'Atta, Dal & Rice'},
        {'img': 'cat3.png', 'text': 'Oil, Ghee & Masala'},
        {'img': 'cat4.png', 'text': 'Dairy, Bread & Milk'},
        {'img': 'cat5.png', 'text': 'Biscuits & Bakery'},
        {'img': 'cat6.png', 'text': 'Dry Fruits & Cereals'},
        {'img': 'cat7.png', 'text': 'Kitchen & Appliances'},
        {'img': 'cat8.png', 'text': 'Tea & Coffees'},
        {'img': 'cat9.png', 'text': 'Ice Creams & much more'},
        {'img': 'cat10.png', 'text': 'Noodles, Packet Food'},
      ],
    },
  ];

  final List<Map<String, dynamic>> diwalisectionitem = [
    {
      'items': [
        {'img': 'diwali1.png', 'text': 'Lights, Diyas & Candles'},
        {'img': 'diwali2.png', 'text': 'Diwali Gifts'},
        {'img': 'diwali3.png', 'text': 'Appliances & Gadgets'},
        {'img': 'diwali4.png', 'text': 'Home & Living'},
      ],
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 35),
              Container(
                width: double.infinity,
                height: 165,
                color: Colors.red,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 20.0,
                    top: 17,
                    right: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Blinkit in',
                        style: TextStyle(
                          color: Colors.white,
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
                              color: Colors.white,
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
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '-  Abhay Singh, Khatima, Uttarakhand',
                            style: TextStyle(fontSize: 12, color: Colors.white),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const TextField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(),
                            fillColor: Colors.white,
                            filled: true,
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            hintText: 'Search "ice-cream"',
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            prefixIcon: Icon(Icons.search),
                            prefixIconColor: Colors.black,
                            suffixIcon: Icon(Icons.mic),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 1),
              Container(
                height: 196,
                width: double.infinity,
                color: Colors.red,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 20.0,
                    top: 17,
                    right: 20,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              width: 47,
                              height: 57.8,
                              'assets/images/firecraker1.png',
                            ),
                            Image.asset(
                              width: 50,
                              'assets/images/firecraker2.png',
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 10.0),
                              child: Text(
                                'Mega Diwali Sale',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Image.asset(
                              width: 47,
                              height: 57.8,
                              'assets/images/firecraker2.png',
                            ),
                            Image.asset(
                              width: 50,
                              'assets/images/firecraker1.png',
                            ),
                          ],
                        ),
                      ),

                      //
                      ...diwalisectionitem.map(
                        (section) => Padding(
                          padding: const EdgeInsets.only(bottom: 30.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 110,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                
                                  itemCount: section['items'].length,
                                  itemBuilder: (context, index) {
                                    final item = section['items'][index];
                                    return Container(
                                      width: 85,
                                      margin: const EdgeInsets.only(right: 10),
                                      decoration: BoxDecoration(
                                        color: const Color(0xffEAD3D3),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            item['text'],
                                            textAlign: TextAlign.center,
                                            style: const TextStyle(
                                              fontSize: 11,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const SizedBox(height: 5),
                                          Image.asset(
                                            'assets/images/${item['img']}',
                                            width: 50,
                                            height: 50,
                                            fit: BoxFit.contain,
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30),
              SizedBox(
                height: 180,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  children: const [
                    ProductCard(
                      image: 'assets/images/diwali5.png',
                      name: 'Golden Glass Wooden Lid Candle (Oudh)',
                      price: '₹ 79',
                    ),
                    SizedBox(width: 10),
                    ProductCard(
                      image: 'assets/images/sweets.png',
                      name: 'Royal Gulab Jamun By Bikano',
                      price: '₹ 79',
                    ),
                    SizedBox(width: 10),
                    ProductCard(
                      image: 'assets/images/diwali7.png',
                      name: 'Bikaji Bhujia',
                      price: '₹ 79',
                    ),
                  ],
                ),
              ),
              ...categorySections.map(
                (section) => Padding(
                  padding: const EdgeInsets.only(bottom: 30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, bottom: 15),
                        child: Text(
                          section['title'],
                          style: const TextStyle(
                            fontSize: 16,
                            fontFamily: 'bold',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 110,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          padding: const EdgeInsets.only(left: 20, right: 10),
                          itemCount: section['items'].length,
                          itemBuilder: (context, index) {
                            final item = section['items'][index];
                            return Container(
                              width: 85,
                              margin: const EdgeInsets.only(right: 10),
                              decoration: BoxDecoration(
                                color: const Color(0xffD9EBEB),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    item['text'],
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  Image.asset(
                                    'assets/images/${item['img']}',
                                    width: 50,
                                    height: 50,
                                    fit: BoxFit.contain,
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
