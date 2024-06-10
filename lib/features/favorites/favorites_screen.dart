import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_store_app/features/home/data/product_model.dart';
import 'package:mega_store_app/features/home/widgets/product_tile.dart';

class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({super.key});

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
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
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 10.h,
        horizontal: 10.w,
      ),
      child: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 0.65,
        children: products
            .map(
              (product) => ProductTile(product: product),
            )
            .toList(),
      ),
    );
  }
}
