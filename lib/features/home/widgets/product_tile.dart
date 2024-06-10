import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_store_app/core/helpers/extensions.dart';
import 'package:mega_store_app/core/helpers/spacing.dart';
import 'package:mega_store_app/core/style/font_weight_helper.dart';
import 'package:mega_store_app/core/widgets/custom_text.dart';
import 'package:mega_store_app/features/home/data/product_model.dart';

class ProductTile extends StatefulWidget {
  final ProductModel product;
  const ProductTile({super.key, required this.product});

  @override
  State<ProductTile> createState() => _ProductTileState();
}

class _ProductTileState extends State<ProductTile> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 170.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/images/${widget.product.image}.png',
                fit: BoxFit.cover,
                height: 120.h,
                width: double.infinity,
              ),
              Positioned(
                top: 0,
                left: 0,
                child: GestureDetector(
                  onTap: () {
                    widget.product.isFavorite = !widget.product.isFavorite;
                    setState(() {});
                  },
                  child: Icon(
                    widget.product.isFavorite
                        ? Icons.favorite
                        : Icons.favorite_border,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          verticalSpace(5),
          CustomText(
            widget.product.name,
            style: context.textTheme.labelSmall,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            color: const Color(0xff223263),
            fontWeight: FontWeightHelper.bold,
          ),
          verticalSpace(8),
          CustomText(
            '${widget.product.price} \$',
            style: context.textTheme.bodySmall,
            color: const Color(0xff223263),
            fontWeight: FontWeightHelper.bold,
          ),
          verticalSpace(3),
          Row(
            children: [
              CustomText(
                '${widget.product.oldPrice} \$',
                style: context.textTheme.labelSmall,
                textDecoration: TextDecoration.lineThrough,
                color: const Color(0xff9098B1),
              ),
              horizontalSpace(5),
              CustomText(
                '${widget.product.discount} % off',
                style: context.textTheme.bodySmall,
                color: context.colorScheme.error,
                fontWeight: FontWeightHelper.bold,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
