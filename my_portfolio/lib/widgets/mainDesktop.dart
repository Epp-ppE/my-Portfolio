import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return Container(
                margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                height: screenHeight /1.2,
                constraints: const BoxConstraints(minHeight: 350),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Hi, \nPhupa Denphatcharangkul here \nYour Trustworthy Software Engineer.",
                            style: TextStyle(
                              color: CustomColor.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              height: 1.5,
                            ),
                          ),
                          const SizedBox(height: 20),
                          SizedBox(
                            width: 250,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(CustomColor.primaryColor),
                              ),
                              onPressed: () {
                                // ...
                              },
                              child: const Text(
                                'Get in touch',
                                style: TextStyle(
                                  color: CustomColor.textColor2,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 250,
                        child: Image.asset(
                          "assets/myPorfilePic.png",
                          width: screenWidth / 2,
                          ),
                      )
                      
                  ],
                ),
              );
  }
}