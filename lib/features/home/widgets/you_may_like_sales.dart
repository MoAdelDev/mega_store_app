import 'package:flutter/material.dart';
import 'package:mega_store_app/core/helpers/extensions.dart';
import 'package:mega_store_app/core/helpers/spacing.dart';
import 'package:mega_store_app/core/widgets/custom_text.dart';
import 'package:mega_store_app/features/home/data/product_model.dart';
import 'package:mega_store_app/features/home/widgets/product_tile.dart';

class YouMayLikeSales extends StatefulWidget {
  const YouMayLikeSales({super.key});

  @override
  State<YouMayLikeSales> createState() => _YouMayLikeSalesState();
}

class _YouMayLikeSalesState extends State<YouMayLikeSales> {
  final List<ProductModel> products = [
    ProductModel(
      'FS - Nike Air Max 270 React',
      'product1',
      '40000',
      '45000',
      '20',
      true,
    ),
    ProductModel(
      'FS - Nike Air Max 270 React',
      'product',
      '40000',
      '55000',
      '20',
      false,
    ),
    ProductModel(
      'FS - Nike Air Max 270 React',
      'product',
      '2000',
      '3000',
      '20',
      false,
    ),
    ProductModel(
      'FS - Nike Air Max 270 React',
      'product1',
      '200',
      '300',
      '20',
      true,
    ),
    ProductModel(
      'Shoes',
      'product',
      '2000',
      '3000',
      '20',
      false,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            'You May Like',
            style: context.textTheme.labelMedium,
            fontWeight: FontWeight.bold,
            color: const Color(0xff50555C),
          ),
          verticalSpace(8),
          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.65,
            physics: const NeverScrollableScrollPhysics(),
            children: products
                .map(
                  (product) => ProductTile(product: product),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
