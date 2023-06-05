import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:medical_app/theme/thema.dart';

class SubTittle extends StatelessWidget {
  const SubTittle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "Recommended Doctor ",
          style: bold17,
        ),
      ],
    );
  }
}
