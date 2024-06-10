import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_store_app/core/helpers/extensions.dart';
import 'package:mega_store_app/core/helpers/spacing.dart';
import 'package:mega_store_app/core/widgets/custom_text.dart';
import 'package:mega_store_app/core/widgets/custom_text_field.dart';

class HomeSearchBarAndCarts extends StatefulWidget {
  const HomeSearchBarAndCarts({super.key});

  @override
  State<HomeSearchBarAndCarts> createState() => _HomeSearchBarAndCartsState();
}

class _HomeSearchBarAndCartsState extends State<HomeSearchBarAndCarts> {
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomTextField(
            controller: controller,
            hintText: 'Search here',
            errorMsg: '',
            prefixIcon: Icons.search,
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.search,
            onSubmit: (p0) {
              FocusManager.instance.primaryFocus?.unfocus();
            },
          ),
        ),
        horizontalSpace(8),
        Stack(
          clipBehavior: Clip.none,
          children: [
            Icon(
              Icons.shopping_cart_outlined,
              color: context.colorScheme.tertiary,
              size: 30,
            ),
            Positioned(
              top: -5.h,
              right: -5.w,
              child: CircleAvatar(
                backgroundColor: context.colorScheme.error,
                radius: 8.r,
                child: CustomText(
                  '2',
                  style: context.textTheme.bodySmall,
                  color: Colors.white,
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
