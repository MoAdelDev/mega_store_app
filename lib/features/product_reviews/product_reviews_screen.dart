import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_store_app/core/helpers/extensions.dart';
import 'package:mega_store_app/core/helpers/spacing.dart';
import 'package:mega_store_app/core/style/custom_shimmer.dart';
import 'package:mega_store_app/core/style/font_weight_helper.dart';
import 'package:mega_store_app/core/widgets/custom_text.dart';
import 'package:mega_store_app/features/product_reviews/data/review_model.dart';

class ProductReviewsScreen extends StatefulWidget {
  const ProductReviewsScreen({super.key});

  @override
  State<ProductReviewsScreen> createState() => _ProductReviewsScreenState();
}

class _ProductReviewsScreenState extends State<ProductReviewsScreen> {
  final List<ReviewModel> reviews = [
    ReviewModel(
      'Moahmmed Adel',
      'December 10, 2018',
      'air max are always very comfortable fit, clean and just perfect in every way. just the box was too small and scrunched the sneakers up a little bit, not sure if the box was always this small but the 90s are and will always be one of my favorites.',
      5,
      'https://scontent.fcai1-2.fna.fbcdn.net/v/t39.30808-6/371805649_3553651871514319_8256964925996912081_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeHoUobKMmx3bihlpkFxC2EpMLX6OntU1rcwtfo6e1TWt_e-VtAYynoVQBZ1Bs3MlPWbgAJREebqMRfScdtCP0ti&_nc_ohc=0WZuzLEnW5oQ7kNvgF80f2U&_nc_ht=scontent.fcai1-2.fna&oh=00_AYBXkq_AornIm9dsKOQJBsQnVKgbsMOaRIb8gSBbwF_VDA&oe=666D194C',
    ),
    ReviewModel(
      'Ahmed Sayed',
      'December 10, 2016',
      'This is really amazing product, i like the design of product, I hope can buy it again!',
      2,
      'https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg',
    ),
    ReviewModel(
      'Usama Adel',
      'December 10, 2014',
      'air max are always very comfortable fit, clean and just perfect in every way. just the box was too small and scrunched the sneakers up a little bit',
      3,
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTAe9NZZk7nUE_anJir2Scf7tsqMHRdEpCbJg&s',
    ),
    ReviewModel(
      'Mohammed Adel',
      'December 10, 2016',
      'air max are always very comfortable fit, clean and just perfect in every way. just the box was too small and scrunched the sneakers up a little bit, not sure if the box was always this small but the 90s are and will always be one of my favorites.',
      4,
      'https://scontent.fcai1-2.fna.fbcdn.net/v/t39.30808-6/371805649_3553651871514319_8256964925996912081_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeHoUobKMmx3bihlpkFxC2EpMLX6OntU1rcwtfo6e1TWt_e-VtAYynoVQBZ1Bs3MlPWbgAJREebqMRfScdtCP0ti&_nc_ohc=0WZuzLEnW5oQ7kNvgF80f2U&_nc_ht=scontent.fcai1-2.fna&oh=00_AYBXkq_AornIm9dsKOQJBsQnVKgbsMOaRIb8gSBbwF_VDA&oe=666D194C',
    ),
    ReviewModel(
      'Mohammed Adel',
      'December 10, 2016',
      'air max are always very comfortable fit, clean and just perfect in every way. just the box was too small and scrunched the sneakers up a little bit, not sure if the box was always this small but the 90s are and will always be one of my favorites.',
      2,
      'https://scontent.fcai1-2.fna.fbcdn.net/v/t39.30808-6/371805649_3553651871514319_8256964925996912081_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeHoUobKMmx3bihlpkFxC2EpMLX6OntU1rcwtfo6e1TWt_e-VtAYynoVQBZ1Bs3MlPWbgAJREebqMRfScdtCP0ti&_nc_ohc=0WZuzLEnW5oQ7kNvgF80f2U&_nc_ht=scontent.fcai1-2.fna&oh=00_AYBXkq_AornIm9dsKOQJBsQnVKgbsMOaRIb8gSBbwF_VDA&oe=666D194C',
    ),
    ReviewModel(
      'Mohammed Adel',
      'December 10, 2016',
      'air max are always very comfortable fit, clean and just perfect in every way. just the box was too small and scrunched the sneakers up a little bit, not sure if the box was always this small but the 90s are and will always be one of my favorites.',
      3,
      'https://scontent.fcai1-2.fna.fbcdn.net/v/t39.30808-6/371805649_3553651871514319_8256964925996912081_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeHoUobKMmx3bihlpkFxC2EpMLX6OntU1rcwtfo6e1TWt_e-VtAYynoVQBZ1Bs3MlPWbgAJREebqMRfScdtCP0ti&_nc_ohc=0WZuzLEnW5oQ7kNvgF80f2U&_nc_ht=scontent.fcai1-2.fna&oh=00_AYBXkq_AornIm9dsKOQJBsQnVKgbsMOaRIb8gSBbwF_VDA&oe=666D194C',
    ),
    ReviewModel(
      'Mohammed Adel',
      'December 10, 2016',
      'air max are always very comfortable fit, clean and just perfect in every way. just the box was too small and scrunched the sneakers up a little bit, not sure if the box was always this small but the 90s are and will always be one of my favorites.',
      1,
      'https://scontent.fcai1-2.fna.fbcdn.net/v/t39.30808-6/371805649_3553651871514319_8256964925996912081_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeHoUobKMmx3bihlpkFxC2EpMLX6OntU1rcwtfo6e1TWt_e-VtAYynoVQBZ1Bs3MlPWbgAJREebqMRfScdtCP0ti&_nc_ohc=0WZuzLEnW5oQ7kNvgF80f2U&_nc_ht=scontent.fcai1-2.fna&oh=00_AYBXkq_AornIm9dsKOQJBsQnVKgbsMOaRIb8gSBbwF_VDA&oe=666D194C',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${reviews.length} Reviews',
        ),
      ),
      body: SafeArea(
        child: ListView.separated(
          padding: EdgeInsets.symmetric(
            vertical: 10.h,
            horizontal: 20.w,
          ),
          itemBuilder: (context, index) => Column(
            children: [
              Row(
                children: [
                  CachedNetworkImage(
                    imageUrl: reviews[index].image,
                    width: 70.w,
                    height: 70.h,
                    fit: BoxFit.cover,
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
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
                        reviews[index].name,
                        style: context.textTheme.labelMedium,
                        fontWeight: FontWeightHelper.bold,
                        color: const Color(0xff223263),
                      ),
                      verticalSpace(3),
                      Row(
                        children: [
                          ...List.generate(
                            reviews[index].rating,
                            (index) => const Icon(
                              Icons.star,
                              color: Color(0xffFFC833),
                            ),
                          ),
                          ...List.generate(
                            5 - reviews[index].rating,
                            (index) => const Icon(
                              Icons.star,
                              color: Color(0xffEBF0FF),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              verticalSpace(8),
              CustomText(
                reviews[index].comment,
                style: context.textTheme.labelSmall,
              ),
              verticalSpace(12),
              CustomText(
                reviews[index].date,
                style: context.textTheme.labelSmall,
              )
            ],
          ),
          separatorBuilder: (context, index) => verticalSpace(10),
          itemCount: reviews.length,
        ),
      ),
    );
  }
}
