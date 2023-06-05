import 'package:flutter/material.dart';

import '../../../theme/thema.dart';

class AppBarView extends StatelessWidget {
  const AppBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage("assets/img/foto profil.jpg"),
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          children: [
            Text(
              "Tangerang Medical Centre",
              style: regular9,
            ),
            const SizedBox(
              height: 10,
            ),
            Text("Hello, Kausar", style: bold16)
          ],
        )
      ],
    );
  }
}
