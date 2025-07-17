import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  Category({super.key});

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
    {
      'title': 'Snacks & Drinks',
      'items': [
        {'img': 'snac1.png', 'text': 'Chips & Namkeens'},
        {'img': 'snac2.png', 'text': 'Sweets & Chocolates'},
        {'img': 'snac3.png', 'text': 'Drinks & Juices'},
        {'img': 'snac4.png', 'text': 'Sauces & Spreads'},
        {'img': 'snac5.png', 'text': 'Beauty & Personal Care'},
      ],
    },
    {
      'title': 'Household Essentials',
      'items': [
        {'img': 'household1.png', 'text': 'Cleaning'},
        {'img': 'household2.png', 'text': 'Laundry'},
        {'img': 'household3.png', 'text': 'Home Appliances'},
        {'img': 'household4.png', 'text': 'Kitchen Tools'},
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
              // Header
              const SizedBox(height: 35),
              Container(
                width: double.infinity,
                height: 165,
                color: const Color(0xfff7CB45),
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
              const SizedBox(height: 40),

              // Category Sections
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
                                  Image.asset(
                                    'assets/images/${item['img']}',
                                    width: 50,
                                    height: 50,
                                    fit: BoxFit.contain,
                                  ),
                                  const SizedBox(height: 5),
                                  Text(
                                    item['text'],
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(fontSize: 11),
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
