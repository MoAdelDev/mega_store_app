import 'package:flutter/material.dart';

class HomeBannerImage extends StatelessWidget {
  const HomeBannerImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/banner.png',
      fit: BoxFit.cover,
    );
  }
}
