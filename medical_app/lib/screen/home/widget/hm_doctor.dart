import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:medical_app/screen/home/component/list_doctor.dart';
import 'package:medical_app/screen/home/model/model_doctor.dart';

class Doctors extends StatefulWidget {
  const Doctors({super.key});

  @override
  State<Doctors> createState() => _DoctorsState();
}

class _DoctorsState extends State<Doctors> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
          children: doctors
              .asMap()
              .entries
              .map((MapEntry map) => ListDoctor(info: doctors[map.key]))
              .toList()),
    );
  }
}
