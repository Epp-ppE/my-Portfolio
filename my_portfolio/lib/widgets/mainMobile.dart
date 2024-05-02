import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return Container(
                height: screenHeight,
                margin: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 30.0),
                constraints: const BoxConstraints(minHeight: 580),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // avatar image
                    ShaderMask(
                      shaderCallback: (bounds){
                        return LinearGradient(colors: [
                          CustomColor.scaffoldBg.withOpacity(0.4),
                          CustomColor.scaffoldBg.withOpacity(0.4),
                        ]).createShader(bounds);
                      },
                      blendMode: BlendMode.srcATop,
                      child: Container(
                        //set alignment center
                        alignment: Alignment.center,
                        // color: CustomColor.primaryColor,
                        child: Image.asset(
                          "assets/myPorfilePic.png",
                          ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    // intro text
                    const Text("Hi, Phupa \nDenphatcharangkul here \nYour Trustworthy \nSoftware Engineer.",
                            style: TextStyle(
                              color: CustomColor.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              height: 1.5,
                            ),
                          ),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: screenWidth/3,
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
                )
              );
  }
}