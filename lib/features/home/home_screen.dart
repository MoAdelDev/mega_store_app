import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icon_broken/icon_broken.dart';
import 'package:mega_store_app/core/helpers/extensions.dart';
import 'package:mega_store_app/core/helpers/spacing.dart';
import 'package:mega_store_app/core/style/font_weight_helper.dart';
import 'package:mega_store_app/features/favorites/favorites_screen.dart';
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
    'Categories',
    'Favorite',
  ];

  final List<IconData> iconsOutline = [
    IconBroken.Home,
    IconBroken.Profile,
    IconBroken.Category,
    IconBroken.Heart,
  ];

  final List<Widget> screens = [
    const ProductsScreen(),
    Container(),
    Container(),
    const FavoritesScreen(),
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
