import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_store_app/core/helpers/extensions.dart';
import 'package:mega_store_app/core/helpers/spacing.dart';
import 'package:mega_store_app/core/widgets/custom_text.dart';
import 'package:mega_store_app/features/home/data/product_model.dart';
import 'package:mega_store_app/features/home/widgets/product_tile.dart';

class ProductMayLikeList extends StatefulWidget {
  const ProductMayLikeList({super.key});

  @override
  State<ProductMayLikeList> createState() => _ProductMayLikeListState();
}

class _ProductMayLikeListState extends State<ProductMayLikeList> {
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          'You Might Also Like',
          style: context.textTheme.labelMedium,
          fontWeight: FontWeight.bold,
          color: const Color(0xff223263),
        ),
        verticalSpace(8),
        SizedBox(
          height: 200.h,
          child: ListView.separated(
            itemBuilder: (context, index) {
              return ProductTile(product: products[index]);
            },
            separatorBuilder: (context, index) => horizontalSpace(16),
            itemCount: products.length,
            scrollDirection: Axis.horizontal,
          ),
        ),
      ],
    );
  }
}
