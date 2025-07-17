import 'package:blinkit_clone/repository/screens/bottomnav/bottomnavigation.dart';
import 'package:blinkit_clone/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            children: [
              Uihelper.customimage(img: 'assets/images/Onboarding_Screen.png'),
              const SizedBox(height: 10),
              Uihelper.customimage(img: 'assets/images/blinkit_small_logo.png'),
              const Text(
                'India’s last minute app',
                style: TextStyle(fontFamily: 'bold', fontSize: 20),
              ),
           const   SizedBox(height: 20),

              Material(
                elevation: 4,
                child: Container(
                  height: 200,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      const Text(
                        'Abhay',
                        style: TextStyle(
                          fontFamily: 'regular',
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),
                    const  SizedBox(height: 5),
                      const Text(
                        '702852xxxx',
                        style: TextStyle(
                          fontFamily: 'regular',
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF9C9C9C),
                        ),
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        height: 48,
                        width: 295,

                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Bottomnavigation1(),
                              ),
                            );
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,

                            children: [
                              const Text(
                                'Login with',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'bold',
                                  fontSize: 14,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(width: 5),
                              Uihelper.customimage(
                                img: 'assets/images/zomato.png',
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Access your saved addresses from Zomato automatically!',
                        style: TextStyle(
                          fontSize: 11,
                          color: Color(0xFF9C9C9C),
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'or login with phone number',
                        style: TextStyle(
                          fontFamily: 'bold',
                          fontSize: 14,
                          color: Color(0xFF269237),
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
