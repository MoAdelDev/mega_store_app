import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_store_app/core/helpers/extensions.dart';
import 'package:mega_store_app/core/helpers/spacing.dart';
import 'package:mega_store_app/core/style/font_weight_helper.dart';
import 'package:mega_store_app/features/home/products_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  final List<String> labels = [
    'Home',
    'Account',
    'Offer',
    'Favorite',
  ];

  final List<IconData> iconsOutline = [
    Icons.home_outlined,
    Icons.person_outline,
    Icons.local_offer_outlined,
    Icons.favorite_outline,
  ];

  final List<IconData> iconsFilled = [
    Icons.home_filled,
    Icons.person,
    Icons.local_offer,
    Icons.favorite,
  ];
  final List<Widget> screens = [
    const ProductsScreen(),
    Container(),
    Container(),
    Container(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 85.h,
        padding: EdgeInsets.symmetric(
          horizontal: 10.w,
        ),
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Color(0xffEBF0FF),
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _bottomNavBar(0),
            _bottomNavBar(1),
            _bottomNavBar(2),
            _bottomNavBar(3),
          ],
        ),
      ),
      body: SafeArea(
        child: screens[currentIndex],
      ),
    );
  }

  Widget _bottomNavBar(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          currentIndex = index;
        });
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            iconsOutline[index],
            size: 35,
            color: index == currentIndex
                ? const Color(0xff50555C)
                : context.colorScheme.tertiary,
          ),
          verticalSpace(2),
          Text(
            labels[index],
            style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeightHelper.bold,
              color: index == currentIndex
                  ? const Color(0xff50555C)
                  : context.colorScheme.tertiary,
            ),
          ),
        ],
      ),
    );
  }
}
