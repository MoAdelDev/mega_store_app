import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_store_app/core/helpers/spacing.dart';
import 'package:mega_store_app/features/home/widgets/flash_sales.dart';
import 'package:mega_store_app/features/home/widgets/home_banner_image.dart';
import 'package:mega_store_app/features/home/widgets/home_banners.dart';
import 'package:mega_store_app/features/home/widgets/home_categories.dart';
import 'package:mega_store_app/features/home/widgets/home_search_bar_and_carts.dart';
import 'package:mega_store_app/features/home/widgets/you_may_like_sales.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(
        horizontal: 20.w,
        vertical: 20.h,
      ),
      child: Column(
        children: [
          const HomeSearchBarAndCarts(),
          verticalSpace(10),
          const HomeBanners(),
          verticalSpace(10),
          const HomeCategories(),
          verticalSpace(10),
          const HomeBannerImage(),
          verticalSpace(10),
          const FlashSales(),
          verticalSpace(16),
          const YouMayLikeSales(),
        ],
      ),
    );
  }
}
