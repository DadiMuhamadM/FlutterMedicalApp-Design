import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:medical_app/theme/thema.dart';

class HeaderView extends StatelessWidget {
  const HeaderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          width: double.infinity,
          height: 220,
          color: colorWhite,
        ),
        Container(
          width: double.infinity,
          height: 190,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: colorPurple,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 40,
                ),
                child: Column(
                  children: [
                    Text(
                      "Simple Ways \nfor Healthy Life",
                      style: bold20,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "How to find a healthy lifestyle \nin the middle of a tough job.",
                      style: regular9.copyWith(color: colorWhite),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                "assets/img/asian_doctor.png",
                width: 140,
              )
            ],
          ),
        )
      ],
    );
  }
}
