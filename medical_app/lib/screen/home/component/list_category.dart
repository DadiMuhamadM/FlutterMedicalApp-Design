import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:medical_app/theme/thema.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../model/category_items.dart';

class ListCategory extends StatefulWidget {
  const ListCategory({super.key, required this.info});

  final CategoryItems info;

  @override
  State<ListCategory> createState() => _ListCategoryState();
}

class _ListCategoryState extends State<ListCategory> {
  // int _isSelectedCategory = 0;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {});
      },
      child: Column(
        children: [
          Container(
            height: 50,
            width: 50,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: colorWhite,
              borderRadius: const BorderRadius.all(Radius.circular(12)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: SvgPicture.asset(widget.info.imageUrlCategoryItem),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            widget.info.textUrlCategoryItems,
            style: medium12.copyWith(color: colorgrey),
          ),
        ],
      ),
    );
  }
}
