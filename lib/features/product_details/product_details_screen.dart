import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_store_app/core/helpers/extensions.dart';
import 'package:mega_store_app/core/helpers/spacing.dart';
import 'package:mega_store_app/core/widgets/custom_button.dart';
import 'package:mega_store_app/features/product_details/widgets/product_banner.dart';
import 'package:mega_store_app/features/product_details/widgets/product_details_text.dart';
import 'package:mega_store_app/features/product_details/widgets/product_info.dart';
import 'package:mega_store_app/features/product_details/widgets/product_may_like_list.dart';
import 'package:mega_store_app/features/product_details/widgets/product_reviews.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  final List<String> images = [
    "https://img.freepik.com/premium-photo/new-smartphone-balancing-with-wavy-item_23-2150296467.jpg?size=626&ext=jpg",
    "https://img.freepik.com/premium-photo/new-smartphone-balancing-with-wavy-item_23-2150296467.jpg?size=626&ext=jpg",
    "https://img.freepik.com/premium-photo/new-smartphone-balancing-with-wavy-item_23-2150296467.jpg?size=626&ext=jpg",
    "https://img.freepik.com/premium-photo/new-smartphone-balancing-with-wavy-item_23-2150296467.jpg?size=626&ext=jpg",
  ];
  int currentIndex = 0;

  CarouselController carouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Product Details',
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 10.h,
                    ),
                    child: Column(
                      children: [
                        const ProductBanner(),
                        verticalSpace(12),
                        const ProductInfo(),
                        verticalSpace(12),
                        const ProductDetailsText(),
                        verticalSpace(12),
                        const ProductReviews(),
                        verticalSpace(12),
                        const ProductMayLikeList(),
                      ],
                    ),
                  ),
                ),
              ),
              verticalSpace(12),
              CustomButton(
                onPressed: () {},
                label: 'Add To Cart',
                backgroundColor: context.colorScheme.secondary,
              ),
              verticalSpace(10),
            ],
          ),
        ),
      ),
    );
  }
}
