import 'package:eco_market/features/domain/model/categories_page.dart';
import 'package:eco_market/features/presentation/theme/app_colors.dart';
import 'package:eco_market/features/presentation/theme/text_style.dart';
import 'package:flutter/material.dart';

class MainGroceryPage extends StatelessWidget {
  const MainGroceryPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisExtent: 220),
        itemCount: categoryList.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(5.5),
            child: GridTile(
              footer: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(categoryList[index].groceryName,
                    style: AppTextStyle.groceryNamesTextStyle),
              ),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColors.white),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        categoryList[index].groceryImg,
                        height: 209,
                        width: double.infinity,
                        fit: BoxFit.cover,
                        color: AppColors.black38,
                        colorBlendMode: BlendMode.darken,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
