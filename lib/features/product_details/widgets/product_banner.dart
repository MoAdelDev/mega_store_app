import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_store_app/core/helpers/extensions.dart';
import 'package:mega_store_app/core/helpers/spacing.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductBanner extends StatefulWidget {
  const ProductBanner({super.key});

  @override
  State<ProductBanner> createState() => _ProductBannerState();
}

class _ProductBannerState extends State<ProductBanner> {
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
    return Column(
      children: [
        CarouselSlider.builder(
          carouselController: carouselController,
          itemCount: images.length,
          itemBuilder: (context, index, realIndex) => CachedNetworkImage(
            imageUrl: images[index],
          ),
          options: CarouselOptions(
            height: 180.h,
            aspectRatio: 16 / 9,
            viewportFraction: 1,
            initialPage: 0,
            onPageChanged: (index, reason) {
              setState(() {
                currentIndex = index;
              });
            },
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 3),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            enlargeFactor: 0.3,
            scrollDirection: Axis.horizontal,
          ),
        ),
        verticalSpace(10),
        AnimatedSmoothIndicator(
          activeIndex: currentIndex,
          count: images.length,
          effect: ScrollingDotsEffect(
            dotHeight: 8,
            dotWidth: 8,
            dotColor: const Color(0xff898A8D),
            activeDotColor: context.colorScheme.primary,
          ),
          onDotClicked: (index) {
            setState(() {
              currentIndex = index;
              carouselController.animateToPage(
                index,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeIn,
              );
            });
          },
        ),
      ],
    );
  }
}
