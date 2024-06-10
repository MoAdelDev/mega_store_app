import 'package:flutter/material.dart';
import 'package:mega_store_app/core/helpers/extensions.dart';
import 'package:mega_store_app/core/helpers/spacing.dart';
import 'package:mega_store_app/core/style/font_weight_helper.dart';
import 'package:mega_store_app/core/widgets/custom_text.dart';

class ProductInfo extends StatefulWidget {
  const ProductInfo({super.key});

  @override
  State<ProductInfo> createState() => _ProductInfoState();
}

class _ProductInfoState extends State<ProductInfo> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: CustomText(
                'Iphone 14 Pro Max 256GB Gold Color 2022',
                style: context.textTheme.titleMedium,
                color: const Color(0xff333537),
              ),
            ),
            horizontalSpace(16),
            GestureDetector(
              onTap: () {
                isFavorite = !isFavorite;
                setState(() {});
              },
              child: Icon(
                isFavorite ? Icons.favorite : Icons.favorite_border,
                color: isFavorite
                    ? context.colorScheme.primary
                    : context.colorScheme.tertiary,
              ),
            ),
          ],
        ),
        verticalSpace(10),
        const Row(
          children: [
            Icon(
              Icons.star,
              color: Color(0xffFFC833),
            ),
            Icon(
              Icons.star,
              color: Color(0xffFFC833),
            ),
            Icon(
              Icons.star,
              color: Color(0xffFFC833),
            ),
            Icon(
              Icons.star,
              color: Color(0xffFFC833),
            ),
            Icon(
              Icons.star,
              color: Color(0xffEBF0FF),
            ),
          ],
        ),
        verticalSpace(10),
        Row(
          children: [
            CustomText(
              '\$ 999.99',
              style: context.textTheme.titleMedium,
              color: context.colorScheme.outlineVariant,
            ),
            const Spacer(),
            Row(
              children: [
                CustomText(
                  '\$ 500',
                  style: context.textTheme.labelSmall,
                  color: context.colorScheme.tertiary,
                  textDecoration: TextDecoration.lineThrough,
                ),
                horizontalSpace(6),
                CustomText(
                  '10% off',
                  style: context.textTheme.labelSmall,
                  color: context.colorScheme.error,
                  fontWeight: FontWeightHelper.bold,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
