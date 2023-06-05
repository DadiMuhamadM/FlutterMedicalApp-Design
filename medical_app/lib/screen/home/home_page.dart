// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:medical_app/screen/home/component/list_doctor.dart';
import 'package:medical_app/screen/home/model/model_doctor.dart';
import 'package:medical_app/screen/home/widget/hm_appBar.dart';
import 'package:medical_app/screen/home/widget/hm_categories.dart';
import 'package:medical_app/screen/home/widget/hm_doctor.dart';
import 'package:medical_app/screen/home/widget/hm_header.dart';
import 'package:medical_app/screen/home/widget/hm_tittle.dart';
import 'package:medical_app/theme/thema.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: const [
                //buat appbar
                AppBarView(),
                //header
                SizedBox(
                  height: 20,
                ),
                HeaderView(),
                SizedBox(
                  height: 30,
                ),
                //category
                Categorys(),
                SizedBox(
                  height: 30,
                ),
                //title
                SubTittle(),
                SizedBox(
                  height: 20,
                ),
                //doctor
                Doctors()
                // SizedBox(
                //   height: 20,
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
