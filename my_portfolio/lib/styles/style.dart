import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_portfolio/constants/colors.dart';

BoxDecoration kHeaderDecoration =  BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    CustomColor.secondaryColor,
                    CustomColor.primaryColor,
                  ],
                ),
                borderRadius: BorderRadius.circular(100),
              );