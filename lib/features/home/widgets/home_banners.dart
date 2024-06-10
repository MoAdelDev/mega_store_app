import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_store_app/core/helpers/spacing.dart';
import 'package:mega_store_app/core/style/custom_shimmer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeBanners extends StatefulWidget {
  const HomeBanners({super.key});

  @override
  State<HomeBanners> createState() => _HomeBannersState();
}

class _HomeBannersState extends State<HomeBanners> {
  final List<String> images = [
    'https://img.freepik.com/free-psd/3d-colorful-mega-sale-badge_125755-574.jpg',
    'https://www.shutterstock.com/shutterstock/photos/2254551077/display_1500/stock-vector-super-sale-d-editable-vector-text-style-effect-2254551077.jpg',
    'https://st5.depositphotos.com/2850905/64458/v/450/depositphotos_644584482-stock-illustration-special-offer-banner-mega-sale.jpg',
    'https://www.shutterstock.com/shutterstock/photos/2213206619/display_1500/stock-vector-mega-sale-special-offer-stage-podium-percent-stage-podium-scene-with-for-award-decor-element-2213206619.jpg',
  ];
  int currentIndex = 0;
  final CarouselController carouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
          carouselController: carouselController,
          itemCount: images.length,
          itemBuilder: (context, index, realIndex) {
            return CachedNetworkImage(
              imageUrl: images[index],
              width: double.infinity,
              fit: BoxFit.cover,
              progressIndicatorBuilder: (context, url, downloadProgress) =>
                  const CustomShimmer(),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            );
          },
          options: CarouselOptions(
            autoPlay: true,
            autoPlayAnimationDuration: const Duration(seconds: 3),
            height: 140.h,
            enlargeCenterPage: true,
            viewportFraction: 1,
            enlargeStrategy: CenterPageEnlargeStrategy.height,
            onPageChanged: (index, reason) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
        ),
        verticalSpace(8),
        AnimatedSmoothIndicator(
          activeIndex: currentIndex,
          count: images.length,
          effect: const ScrollingDotsEffect(
            dotHeight: 12,
            dotWidth: 12,
            dotColor: Color(0xff898A8D),
            activeDotColor: Color(0xff50555C),
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
