import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:medical_app/screen/home/component/list_category.dart';
import 'package:medical_app/screen/home/model/category_items.dart';

class Categorys extends StatefulWidget {
  const Categorys({super.key});

  @override
  State<Categorys> createState() => _CategorysState();
}

class _CategorysState extends State<Categorys> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children: categoryItems
              .asMap()
              .entries
              .map((MapEntry map) => ListCategory(info: categoryItems[map.key]))
              .toList()),
    );
  }
}
