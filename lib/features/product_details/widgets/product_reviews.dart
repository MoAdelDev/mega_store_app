import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_store_app/core/helpers/extensions.dart';
import 'package:mega_store_app/core/helpers/spacing.dart';
import 'package:mega_store_app/core/style/custom_shimmer.dart';
import 'package:mega_store_app/core/style/font_weight_helper.dart';
import 'package:mega_store_app/core/widgets/custom_text.dart';
import 'package:mega_store_app/core/widgets/custom_text_button.dart';

class ProductReviews extends StatefulWidget {
  const ProductReviews({super.key});

  @override
  State<ProductReviews> createState() => _ProductReviewsState();
}

class _ProductReviewsState extends State<ProductReviews> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CustomText(
              'Review Product',
              style: context.textTheme.labelMedium,
              fontWeight: FontWeightHelper.bold,
              color: const Color(0xff223263),
            ),
            const Spacer(),
            CustomTextButton(
              onPressed: () {},
              text: 'See All',
              textColor: const Color(0xff898A8D),
            ),
          ],
        ),
        verticalSpace(3),
        Row(
          children: [
            CachedNetworkImage(
              imageUrl:
                  'https://scontent.fcai1-2.fna.fbcdn.net/v/t39.30808-6/371805649_3553651871514319_8256964925996912081_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeHoUobKMmx3bihlpkFxC2EpMLX6OntU1rcwtfo6e1TWt_e-VtAYynoVQBZ1Bs3MlPWbgAJREebqMRfScdtCP0ti&_nc_ohc=0WZuzLEnW5oQ7kNvgF80f2U&_nc_ht=scontent.fcai1-2.fna&oh=00_AYBXkq_AornIm9dsKOQJBsQnVKgbsMOaRIb8gSBbwF_VDA&oe=666D194C',
              width: 70.w,
              height: 70.h,
              fit: BoxFit.cover,
              errorWidget: (context, url, error) => const Icon(Icons.error),
              placeholder: (context, url) => const CustomShimmer(),
              imageBuilder: (context, imageProvider) => Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            horizontalSpace(10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  'Mohammed Adel',
                  style: context.textTheme.labelMedium,
                  fontWeight: FontWeightHelper.bold,
                  color: const Color(0xff223263),
                ),
                verticalSpace(3),
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
              ],
            ),
          ],
        ),
        verticalSpace(8),
        CustomText(
          'air max are always very comfortable fit, clean and just perfect in every way. just the box was too small and scrunched the sneakers up a little bit, not sure if the box was always this small but the 90s are and will always be one of my favorites.',
          style: context.textTheme.labelSmall,
        ),
        verticalSpace(12),
        CustomText(
          'December 10, 2016',
          style: context.textTheme.labelSmall,
        )
      ],
    );
  }
}
