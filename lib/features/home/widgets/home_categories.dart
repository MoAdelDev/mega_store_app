import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_store_app/core/helpers/extensions.dart';
import 'package:mega_store_app/core/helpers/spacing.dart';
import 'package:mega_store_app/core/style/custom_shimmer.dart';
import 'package:mega_store_app/core/widgets/custom_text.dart';
import 'package:mega_store_app/features/home/data/category_model.dart';

class HomeCategories extends StatefulWidget {
  const HomeCategories({super.key});

  @override
  State<HomeCategories> createState() => _HomeCategoriesState();
}

class _HomeCategoriesState extends State<HomeCategories> {
  final List<CategoryModel> categories = [
    CategoryModel('Clothes',
        'https://st3.depositphotos.com/9747634/32010/i/450/depositphotos_320104748-stock-photo-hangers-with-different-clothes-in.jpg'),
    CategoryModel('Fruits',
        'https://media.istockphoto.com/id/529664572/photo/fruit-background.jpg?s=612x612&w=0&k=20&c=K7V0rVCGj8tvluXDqxJgu0AdMKF8axP0A15P-8Ksh3I='),
    CategoryModel('Vegetables',
        'https://t3.ftcdn.net/jpg/01/47/51/60/360_F_147516063_hCXI8VUIdBYud0B0hhS3Yo5CFTT1a4g8.jpg'),
    CategoryModel('Electronics',
        'https://img.freepik.com/free-photo/modern-stationary-collection-arrangement_23-2149309649.jpg'),
    CategoryModel('Gaming',
        'https://www.shutterstock.com/image-photo/gaming-game-play-tv-fun-260nw-537529714.jpg'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110.h,
      child: ListView.separated(
        itemBuilder: (context, index) {
          return Column(
            children: [
              CachedNetworkImage(
                imageUrl: categories[index].image,
                fit: BoxFit.cover,
                progressIndicatorBuilder: (context, url, downloadProgress) =>
                    Container(
                  width: 80.w,
                  height: 80.h,
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: const CustomShimmer(),
                ),
                errorWidget: (context, url, error) => const Icon(Icons.error),
                imageBuilder: (context, image) => Container(
                  width: 80.w,
                  height: 80.h,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              verticalSpace(5),
              CustomText(
                categories[index].name,
                style: context.textTheme.labelSmall,
                color: const Color(0xff50555C),
              ),
            ],
          );
        },
        separatorBuilder: (context, index) => horizontalSpace(5),
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
