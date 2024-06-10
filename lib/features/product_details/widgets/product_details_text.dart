import 'package:flutter/material.dart';
import 'package:mega_store_app/core/helpers/extensions.dart';
import 'package:mega_store_app/core/helpers/spacing.dart';
import 'package:mega_store_app/core/style/font_weight_helper.dart';
import 'package:mega_store_app/core/widgets/custom_text.dart';

class ProductDetailsText extends StatefulWidget {
  const ProductDetailsText({super.key});

  @override
  State<ProductDetailsText> createState() => _ProductDetailsTextState();
}

class _ProductDetailsTextState extends State<ProductDetailsText> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            'Details',
            style: context.textTheme.labelMedium,
            color: context.colorScheme.secondary,
            fontWeight: FontWeightHelper.bold,
          ),
          verticalSpace(10),
          CustomText(
            'Display. Super Retina XDR display. 6.7‑inch (diagonal) all‑screen OLED display. 2796‑by‑1290-pixel resolution at 460 ppi. Dynamic Island. Always-On display.',
            style: context.textTheme.labelSmall,
          ),
        ],
      ),
    );
  }
}
