import 'package:flutter/material.dart';

import '../../../helpers/dumbData/category_i.dart';
import 'IURCategoryItem.dart';

class IURCategoriesScrollView extends StatelessWidget {
  const IURCategoriesScrollView({super.key});

  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: "scroll view for showing users categories",
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ...List.generate(
                categoryItems.length,
                (index) => IURCategoryItem(
                  isIGTV: categoryItems[index]["isIGTV"] ?? false,
                  label: categoryItems[index]["label"],
                  svgPath: categoryItems[index]["svgPath"],
                  title: categoryItems[index]["title"],
                  color: categoryItems[index]["color"],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
